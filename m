Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1BDF923B942
	for <lists+speakup@lfdr.de>; Tue,  4 Aug 2020 13:14:49 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 719FC1C07AF; Tue,  4 Aug 2020 07:14:48 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7F9651C0766;
	Tue,  4 Aug 2020 07:14:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id B413A1C074E; Tue,  4 Aug 2020 07:14:10 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 9F89A1C0858
 for <speakup@linux-speakup.org>; Tue,  4 Aug 2020 07:13:34 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id B4613DB76;
 Tue,  4 Aug 2020 13:13:33 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pl8Jk5nyrYj5; Tue,  4 Aug 2020 13:13:33 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 208D51866;
 Tue,  4 Aug 2020 13:13:33 +0200 (CEST)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1k2usu-001aKA-9s; Tue, 04 Aug 2020 13:13:32 +0200
Date: Tue, 4 Aug 2020 13:13:32 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH 2/2] speakup: only build serialio when ISA is enabled
Message-ID: <20200804111332.dex7jobmabifdzw5@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org,
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
Cc: speakup@linux-speakup.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Drivers using serialio are already made available in Kconfig only under
the ISA condition.

This solves warnings in inb/outb macros on platform that do not have 
support for ISA.

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Index: linux-2.6/drivers/accessibility/speakup/Makefile
===================================================================
--- linux-2.6.orig/drivers/accessibility/speakup/Makefile
+++ linux-2.6/drivers/accessibility/speakup/Makefile
@@ -16,6 +16,7 @@ obj-$(CONFIG_SPEAKUP_SYNTH_TXPRT) += spe
 obj-$(CONFIG_SPEAKUP_SYNTH_DUMMY) += speakup_dummy.o
 
 obj-$(CONFIG_SPEAKUP) += speakup.o
+obj-$(CONFIG_ISA) += serialio.o
 speakup-y := \
 	buffers.o \
 	devsynth.o \
@@ -25,7 +26,6 @@ speakup-y := \
 	keyhelp.o \
 	kobjects.o \
 	selection.o \
-	serialio.o \
 	spk_ttyio.o \
 	synth.o \
 	thread.o \
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
