Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 9B06E2AAB18
	for <lists+speakup@lfdr.de>; Sun,  8 Nov 2020 14:14:53 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 336FE380C06; Sun,  8 Nov 2020 08:14:53 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 63A11380EC6;
	Sun,  8 Nov 2020 08:14:49 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id B7B4D380B40; Sun,  8 Nov 2020 08:14:47 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 7DFA2380983
 for <speakup@linux-speakup.org>; Sun,  8 Nov 2020 08:14:47 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id EFCFCCF8;
 Sun,  8 Nov 2020 14:14:45 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m1gaJec65rC8; Sun,  8 Nov 2020 14:14:45 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr
 (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 11869CF7;
 Sun,  8 Nov 2020 14:14:44 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kbkUj-009KMT-Vb; Sun, 08 Nov 2020 14:12:33 +0100
Date: Sun, 8 Nov 2020 14:12:33 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH] speakup ttyio: Do not schedule() in ttyio_in_nowait
Message-ID: <20201108131233.tadycr73sxlvodgo@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 speakup@linux-speakup.org
MIME-Version: 1.0
Content-Disposition: inline
Organization: I am not organized
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

With the ltlk and spkout drivers, the index read function, i.e.
in_nowait, is getting called from the read_all_doc mechanism, from
the timer softirq:

Call Trace:
 <IRQ>
 dump_stack+0x71/0x98
 dequeue_task_idle+0x1f/0x28
 __schedule+0x167/0x5d6
 ? trace_hardirqs_on+0x2e/0x3a
 ? usleep_range+0x7f/0x7f
 schedule+0x8a/0xae
 schedule_timeout+0xb1/0xea
 ? del_timer_sync+0x31/0x31
 do_wait_for_common+0xba/0x12b
 ? wake_up_q+0x45/0x45
 wait_for_common+0x37/0x50
 ttyio_in+0x2a/0x6b
 spk_ttyio_in_nowait+0xc/0x13
 spk_get_index_count+0x20/0x93
 cursor_done+0x1c6/0x4c6
 ? read_all_doc+0xb1/0xb1
 call_timer_fn+0x89/0x140
 run_timer_softirq+0x164/0x1a5
 ? read_all_doc+0xb1/0xb1
 ? hrtimer_forward+0x7b/0x87
 ? timerqueue_add+0x62/0x68
 ? enqueue_hrtimer+0x95/0x9f
 __do_softirq+0x181/0x31f
 irq_exit+0x6a/0x86
smp_apic_timer_interrupt+0x15e/0x183
 apic_timer_interrupt+0xf/0x20
 </IRQ>

We thus should not schedule() at all, even with timeout == 0, this
crashes the kernel.  We can however use try_wait_for_completion()
instead of wait_for_completion_timeout(0).

Cc: stable@vger.kernel.org
Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
Reported-by: John Covici <covici@ccs.covici.com>
Tested-by: John Covici <covici@ccs.covici.com>

---
 drivers/accessibility/speakup/spk_ttyio.c |   10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

--- a/drivers/accessibility/speakup/spk_ttyio.c
+++ b/drivers/accessibility/speakup/spk_ttyio.c
@@ -298,11 +298,13 @@ static unsigned char ttyio_in(int timeou
 	struct spk_ldisc_data *ldisc_data = speakup_tty->disc_data;
 	char rv;
 
-	if (wait_for_completion_timeout(&ldisc_data->completion,
+	if (!timeout) {
+		if (!try_wait_for_completion(&ldisc_data->completion))
+			return 0xff;
+	} else if (wait_for_completion_timeout(&ldisc_data->completion,
 					usecs_to_jiffies(timeout)) == 0) {
-		if (timeout)
-			pr_warn("spk_ttyio: timeout (%d)  while waiting for input\n",
-				timeout);
+		pr_warn("spk_ttyio: timeout (%d)  while waiting for input\n",
+			timeout);
 		return 0xff;
 	}
 
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
