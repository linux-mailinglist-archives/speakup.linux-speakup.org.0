Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 152AD2AA865
	for <lists+speakup@lfdr.de>; Sun,  8 Nov 2020 00:33:33 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ABED5380F38; Sat,  7 Nov 2020 18:33:28 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D53A8380E68;
	Sat,  7 Nov 2020 18:33:25 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 82BEF380BC4; Sat,  7 Nov 2020 18:33:25 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id C4C3B380BB8
 for <speakup@linux-speakup.org>; Sat,  7 Nov 2020 18:33:24 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 4FED4950;
 Sun,  8 Nov 2020 00:33:12 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XZnp7gk_f22P; Sun,  8 Nov 2020 00:33:11 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 3D592742;
 Sun,  8 Nov 2020 00:33:11 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kbXhm-007cY7-4i; Sun, 08 Nov 2020 00:33:10 +0100
Date: Sun, 8 Nov 2020 00:33:10 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH] speakup: Fix clearing selection in safe context
Message-ID: <20201107233310.7iisvaozpiqj3yvy@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 speakup@linux-speakup.org
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170609 (1.8.3)
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Cc: speakup@linux-speakup.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

speakup_cut() calls speakup_clear_selection() which calls console_lock.
Problem is: speakup_cut() is called from a keyboard interrupt
context. This would hang if speakup_cut is pressed while the console
lock is unfortunately already held.

We can however as well just defer calling clear_selection() until the
already-deferred set_selection_kernel() call.

This was spotted by the lock hardener:

 Possible unsafe locking scenario:\x0a
       CPU0
       ----
  lock(console_lock);
  <Interrupt>
    lock(console_lock);
\x0a *** DEADLOCK ***\x0a
[...]
Call Trace:
 <IRQ>
 dump_stack+0xc2/0x11a
 print_usage_bug.cold+0x3e0/0x4b1
 mark_lock+0xd95/0x1390
 ? print_irq_inversion_bug+0xa0/0xa0
 __lock_acquire+0x21eb/0x5730
 ? __kasan_check_read+0x11/0x20
 ? check_chain_key+0x215/0x5e0
 ? register_lock_class+0x1580/0x1580
 ? lock_downgrade+0x7a0/0x7a0
 ? __rwlock_init+0x140/0x140
 lock_acquire+0x13f/0x370
 ? speakup_clear_selection+0xe/0x20 [speakup]
 console_lock+0x33/0x50
 ? speakup_clear_selection+0xe/0x20 [speakup]
 speakup_clear_selection+0xe/0x20 [speakup]
 speakup_cut+0x19e/0x4b0 [speakup]
 keyboard_notifier_call+0x1f04/0x4a40 [speakup]
 ? read_all_doc+0x240/0x240 [speakup]
 notifier_call_chain+0xbf/0x130
 __atomic_notifier_call_chain+0x80/0x130
 atomic_notifier_call_chain+0x16/0x20
 kbd_event+0x7d7/0x3b20
 ? k_pad+0x850/0x850
 ? sysrq_filter+0x450/0xd40
 input_to_handler+0x362/0x4b0
 ? rcu_read_lock_sched_held+0xe0/0xe0
 input_pass_values+0x408/0x5a0
 ? __rwlock_init+0x140/0x140
 ? lock_acquire+0x13f/0x370
 input_handle_event+0x70e/0x1380
 input_event+0x67/0x90
 atkbd_interrupt+0xe62/0x1d4e [atkbd]
 ? __kasan_check_write+0x14/0x20
 ? atkbd_event_work+0x130/0x130 [atkbd]
 ? _raw_spin_lock_irqsave+0x26/0x70
 serio_interrupt+0x93/0x120 [serio]
 i8042_interrupt+0x232/0x510 [i8042]
 ? rcu_read_lock_bh_held+0xd0/0xd0
 ? handle_irq_event+0xa5/0x13a
 ? i8042_remove+0x1f0/0x1f0 [i8042]
 __handle_irq_event_percpu+0xe6/0x6c0
 handle_irq_event_percpu+0x71/0x150
 ? __handle_irq_event_percpu+0x6c0/0x6c0
 ? __kasan_check_read+0x11/0x20
 ? do_raw_spin_unlock+0x5c/0x240
 handle_irq_event+0xad/0x13a
 handle_edge_irq+0x233/0xa90
 do_IRQ+0x10b/0x310
 common_interrupt+0xf/0xf
 </IRQ>

Cc: stable@vger.kernel.org
Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
Reported-by: Jookia <contact@jookia.org>

---
Note for stable: this driver was previously in drivers/staging/speakup

 drivers/accessibility/speakup/main.c      |    1 -
 drivers/accessibility/speakup/selection.c |   11 ++++-------
 drivers/accessibility/speakup/speakup.h   |    1 -
 3 files changed, 4 insertions(+), 9 deletions(-)

--- a/drivers/accessibility/speakup/main.c
+++ b/drivers/accessibility/speakup/main.c
@@ -356,7 +356,6 @@ static void speakup_cut(struct vc_data *
 	mark_cut_flag = 0;
 	synth_printf("%s\n", spk_msg_get(MSG_CUT));
 
-	speakup_clear_selection();
 	ret = speakup_set_selection(tty);
 
 	switch (ret) {
--- a/drivers/accessibility/speakup/selection.c
+++ b/drivers/accessibility/speakup/selection.c
@@ -22,13 +22,6 @@ struct speakup_selection_work {
 	struct tty_struct *tty;
 };
 
-void speakup_clear_selection(void)
-{
-	console_lock();
-	clear_selection();
-	console_unlock();
-}
-
 static void __speakup_set_selection(struct work_struct *work)
 {
 	struct speakup_selection_work *ssw =
@@ -51,6 +44,10 @@ static void __speakup_set_selection(stru
 		goto unref;
 	}
 
+	console_lock();
+	clear_selection();
+	console_unlock();
+
 	set_selection_kernel(&sel, tty);
 
 unref:
--- a/drivers/accessibility/speakup/speakup.h
+++ b/drivers/accessibility/speakup/speakup.h
@@ -70,7 +70,6 @@ void spk_do_flush(void);
 void speakup_start_ttys(void);
 void synth_buffer_add(u16 ch);
 void synth_buffer_clear(void);
-void speakup_clear_selection(void);
 int speakup_set_selection(struct tty_struct *tty);
 void speakup_cancel_selection(void);
 int speakup_paste_selection(struct tty_struct *tty);
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
