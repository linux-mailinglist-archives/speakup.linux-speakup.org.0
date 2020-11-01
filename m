Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id B428A2A20CB
	for <lists+speakup@lfdr.de>; Sun,  1 Nov 2020 19:39:20 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 41F4E380F23; Sun,  1 Nov 2020 13:39:20 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D2156380F20;
	Sun,  1 Nov 2020 13:39:18 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 4A756380F0E; Sun,  1 Nov 2020 13:39:17 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 2586F380EE9
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 13:39:17 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id E4326B04;
 Sun,  1 Nov 2020 19:39:14 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mLVmrU8rCt9z; Sun,  1 Nov 2020 19:39:14 +0100 (CET)
Received: from function (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr
 [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 2F636AAC;
 Sun,  1 Nov 2020 19:39:14 +0100 (CET)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kZIG1-008KHD-35; Sun, 01 Nov 2020 19:39:13 +0100
Date: Sun, 1 Nov 2020 19:39:13 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH] speakup_dummy: log about characters received by the dummy
 driver
Message-ID: <20201101183913.yg35cbqpn2ba6cew@function>
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

The dummy speakup driver is used to check that speakup is working
properly, without the need for actually owning the hardware. Some
drivers require receiving characters, so we need a way to check that
this is working properly.

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Index: linux-5.9/drivers/accessibility/speakup/speakup_dummy.c
===================================================================
--- linux-5.9.orig/drivers/accessibility/speakup/speakup_dummy.c
+++ linux-5.9/drivers/accessibility/speakup/speakup_dummy.c
@@ -80,6 +80,11 @@ static struct attribute *synth_attrs[] =
 	NULL,	/* need to NULL terminate the list of attributes */
 };
 
+static void read_buff_add(u_char c)
+{
+	pr_info("speakup_dummy: got character %02x\n", c);
+}
+
 static struct spk_synth synth_dummy = {
 	.name = "dummy",
 	.version = DRV_VERSION,
@@ -103,7 +108,7 @@ static struct spk_synth synth_dummy = {
 	.flush = spk_synth_flush,
 	.is_alive = spk_synth_is_alive_restart,
 	.synth_adjust = NULL,
-	.read_buff_add = NULL,
+	.read_buff_add = read_buff_add,
 	.get_index = NULL,
 	.indexing = {
 		.command = NULL,
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
