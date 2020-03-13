Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id C1CBD183F1E
	for <lists+speakup@lfdr.de>; Fri, 13 Mar 2020 03:24:54 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 48EF24280506; Thu, 12 Mar 2020 22:24:54 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.b="mP6FGpyz";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 8BFAC42804FA
	for <lists+speakup@lfdr.de>; Thu, 12 Mar 2020 22:24:53 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7A6DD1C2CDA; Thu, 12 Mar 2020 22:24:53 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=default header.b=mP6FGpyz;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 51C361C722F;
	Thu, 12 Mar 2020 22:23:21 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id E764B1C2CDA; Thu, 12 Mar 2020 22:23:19 -0400 (EDT)
Received: from out.migadu.com (out.migadu.com [91.121.223.63])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 05E0F1C00E7
 for <speakup@linux-speakup.org>; Thu, 12 Mar 2020 22:23:10 -0400 (EDT)
Received: (Migadu outbound); Fri, 13 Mar 2020 02:23:09 +0000
Authentication-Results: out.migadu.com; auth=pass (plain)
Received: from localhost ([185.220.101.25])
 by out.migadu.com (Haraka/2.8.16) with ESMTPSA id
 7C40E498-F214-4CD3-B053-5CEF0681797E.1
 envelope-from <contact@jookia.org> (authenticated bits=0)
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 verify=FAIL);
 Fri, 13 Mar 2020 02:23:08 +0000
Date: Fri, 13 Mar 2020 13:22:37 +1100
From: Jookia <contact@jookia.org>
To: speakup@linux-speakup.org
Subject: New deadlock?
Message-ID: <20200313022237.GF1639@novena-choice-citizen>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
DKIM-Signature: v=1; a=rsa-sha256;
 bh=hkP+x9+d7L0iurB7in+WYKPvMejOCB7r+QPIli5+z88=; c=relaxed/simple;
 d=jookia.org; h=from:subject:date:to; s=default;
 b=mP6FGpyzPjDLcEdLe+KUHw0/w68Oj6rIkIUKqeycS3c96p8r1HhPgthOFg6E5tIY4tZ7uU16sw+9KxogoBYaLSKa4qXrmjmK3D8s1uedkl+KnYU3d8dsgV/Z9zEIntafIwhZksxzXRdjUgkmp6Eswvhit993//tI1hsW3qKOfvo=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

I was debugging the big deadlock that's fixed in staging-next when I hit
this backtrace. Anybody have any ideas on what's going on here?

================================
WARNING: inconsistent lock state
5.6.0-rc5jook #1 Tainted: G         C       
--------------------------------
inconsistent {HARDIRQ-ON-W} -> {IN-HARDIRQ-W} usage.
swapper/0/0 [HC1[1]:SC0[0]:HE0:SE1] takes:
ffffffff8543c8e0 (console_lock){?.+.}, at: speakup_clear_selection+0xe/0x20 [speakup]
{HARDIRQ-ON-W} state was registered at:
  lock_acquire+0x13f/0x370
  console_lock+0x33/0x50
  con_init+0x17/0x644
  console_init+0x335/0x4b3
  start_kernel+0x4e8/0x7af
  x86_64_start_reservations+0x24/0x26
  x86_64_start_kernel+0xf5/0xfc
  secondary_startup_64+0xb6/0xc0
irq event stamp: 2657920
hardirqs last  enabled at (2657917): [<ffffffff83b64d4a>] cpuidle_enter_state+0x11a/0xda0
hardirqs last disabled at (2657918): [<ffffffff82206c31>] trace_hardirqs_off_thunk+0x1a/0x1c
softirqs last  enabled at (2657920): [<ffffffff823f30c1>] _local_bh_enable+0x21/0x40
softirqs last disabled at (2657919): [<ffffffff823f41bc>] irq_enter+0xac/0xe0
\x0aother info that might help us debug this:
 Possible unsafe locking scenario:\x0a
       CPU0
       ----
  lock(console_lock);
  <Interrupt>
    lock(console_lock);
\x0a *** DEADLOCK ***\x0a
6 locks held by swapper/0/0:
 #0: ffff8881583820e8 (&serio->lock){-.-.}, at: serio_interrupt+0x2e/0x120 [serio]
 #1: ffff888157873228 (&(&dev->event_lock)->rlock){-.-.}, at: input_event+0x53/0x90
 #2: ffffffff85451240 (rcu_read_lock){....}, at: input_pass_values+0x2d/0x5a0
 #3: ffffffff85abf438 (kbd_event_lock){-.-.}, at: kbd_event+0x9a/0x3b20
 #4: ffffffff85451240 (rcu_read_lock){....}, at: __atomic_notifier_call_chain+0x5/0x130
 #5: ffffffffc0c100f8 (speakup_info.spinlock){-.-.}, at: keyboard_notifier_call+0x774/0x4a40 [speakup]
\x0astack backtrace:
CPU: 0 PID: 0 Comm: swapper/0 Tainted: G         C        5.6.0-rc5jook #1
Hardware name: LENOVO 6474B86/6474B86, BIOS CBET4000 4.5-732-gcc9095f 02/12/2017
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
RIP: 0010:cpuidle_enter_state+0x11e/0xda0
Code: b8 5d 94 fe 80 7d c0 00 74 17 9c 58 66 66 90 66 90 f6 c4 02 0f 85 fe 07 00 00 31 ff e8 7b 80 ac fe e8 46 b8 c2 fe fb 66 66 90 <66> 66 90 45 85 ed 0f 88 42 06 00 00 4d 63 f5 49 83 fe 09 0f 87 4c
RSP: 0018:ffffffff85207cb0 EFLAGS: 00000286 ORIG_RAX: ffffffffffffffdb
RAX: 0000000000000007 RBX: ffff88815a452f90 RCX: 0000000000000000
RDX: 0000000000000000 RSI: 0000000000000006 RDI: ffffffff85226fc4
RBP: ffffffff85207d08 R08: 0000000000000001 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: ffffffff859bfd60
R13: 0000000000000003 R14: ffffffff859bfeb0 R15: 0000000000000003
 cpuidle_enter+0x4f/0xa0
 do_idle+0x41d/0x5a0
 ? arch_cpu_idle_exit+0x50/0x50
 cpu_startup_entry+0x20/0x22
 rest_init+0x1e4/0x32d
 arch_call_rest_init+0xe/0x1b
 start_kernel+0x774/0x7af
 ? thread_stack_cache_init+0xb/0xb
 x86_64_start_reservations+0x24/0x26
 x86_64_start_kernel+0xf5/0xfc
 secondary_startup_64+0xb6/0xc0
Selection: mark console not the same as cut
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
