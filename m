Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 73E6823BDB4
	for <lists+speakup@lfdr.de>; Tue,  4 Aug 2020 18:07:22 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C85B91C0767; Tue,  4 Aug 2020 12:07:21 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 870661C07F4;
	Tue,  4 Aug 2020 12:07:04 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7DE1C1C0767; Tue,  4 Aug 2020 12:07:02 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B19631C0758
 for <speakup@linux-speakup.org>; Tue,  4 Aug 2020 12:07:01 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 92B20EB27;
 Tue,  4 Aug 2020 18:07:00 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y6vmc6G22xcS; Tue,  4 Aug 2020 18:06:59 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id B597F83E4;
 Tue,  4 Aug 2020 18:06:59 +0200 (CEST)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1k2zSt-0027me-1x; Tue, 04 Aug 2020 18:06:59 +0200
Date: Tue, 4 Aug 2020 18:06:59 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Subject: [PATCHv2 2/2] speakup: only build serialio when ISA is enabled
Message-ID: <20200804160659.7y76sdseow43lfms@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 speakup@linux-speakup.org
References: <20200804160637.x3iycau5izywbgzl@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200804160637.x3iycau5izywbgzl@function>
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

Drivers using serialio were already made available in Kconfig only under
the ISA condition.

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Index: linux-2.6/drivers/accessibility/speakup/Makefile
===================================================================
--- linux-2.6.orig/drivers/accessibility/speakup/Makefile
+++ linux-2.6/drivers/accessibility/speakup/Makefile
@@ -25,8 +25,8 @@ speakup-y := \
 	keyhelp.o \
 	kobjects.o \
 	selection.o \
-	serialio.o \
 	spk_ttyio.o \
 	synth.o \
 	thread.o \
 	varhandlers.o
+speakup-$(CONFIG_SPEAKUP_SERIALIO) += serialio.o
Index: linux-2.6/drivers/accessibility/speakup/Kconfig
===================================================================
--- linux-2.6.orig/drivers/accessibility/speakup/Kconfig
+++ linux-2.6/drivers/accessibility/speakup/Kconfig
@@ -42,6 +42,11 @@ config SPEAKUP
 		one of the listed synthesizers, you should say n.
 
 if SPEAKUP
+
+config SPEAKUP_SERIALIO
+	def_bool y
+	depends on ISA || COMPILE_TEST
+
 config SPEAKUP_SYNTH_ACNTSA
 	tristate "Accent SA synthesizer support"
 	help
@@ -52,7 +57,7 @@ config SPEAKUP_SYNTH_ACNTSA
 
 config SPEAKUP_SYNTH_ACNTPC
 	tristate "Accent PC synthesizer support"
-	depends on ISA || COMPILE_TEST
+	depends on SPEAKUP_SERIALIO
 	help
 		This is the Speakup driver for the accent pc
 		synthesizer.  You can say y to build it into the kernel,
@@ -104,7 +109,7 @@ config SPEAKUP_SYNTH_DECEXT
 
 config SPEAKUP_SYNTH_DECPC
 	depends on m
-	depends on ISA || COMPILE_TEST
+	depends on SPEAKUP_SERIALIO
 	tristate "DECtalk PC (big ISA card) synthesizer support"
 	help
 
@@ -127,7 +132,7 @@ config SPEAKUP_SYNTH_DECPC
 
 config SPEAKUP_SYNTH_DTLK
 	tristate "DoubleTalk PC synthesizer support"
-	depends on ISA || COMPILE_TEST
+	depends on SPEAKUP_SERIALIO
 	help
 
 		This is the Speakup driver for the internal DoubleTalk
@@ -138,7 +143,7 @@ config SPEAKUP_SYNTH_DTLK
 
 config SPEAKUP_SYNTH_KEYPC
 	tristate "Keynote Gold PC synthesizer support"
-	depends on ISA || COMPILE_TEST
+	depends on SPEAKUP_SERIALIO
 	help
 
 		This is the Speakup driver for the Keynote Gold
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
