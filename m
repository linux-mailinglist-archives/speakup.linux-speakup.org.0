Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AA7AC2E0409
	for <lists+speakup@lfdr.de>; Tue, 22 Dec 2020 02:48:01 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 33BF6380FBC; Mon, 21 Dec 2020 20:48:01 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F316F380F24;
	Mon, 21 Dec 2020 20:48:00 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id DBB07380C1A; Mon, 21 Dec 2020 20:47:59 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B86F8380974
 for <speakup@linux-speakup.org>; Mon, 21 Dec 2020 20:47:59 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id A6176FD5;
 Tue, 22 Dec 2020 02:47:58 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zaj3haHk2R_5; Tue, 22 Dec 2020 02:47:57 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr
 (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id DCFEEF06;
 Tue, 22 Dec 2020 02:47:57 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1krWmK-0015DC-Sa; Tue, 22 Dec 2020 02:47:56 +0100
Date: Tue, 22 Dec 2020 02:47:56 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH] speakup: Add github repository URL and bug tracker
Message-ID: <20201222014756.ov5vi6fywylbp5n6@function>
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

We have set up a repository for users to try newer releases more easily, and
keep records of known bugs.

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Index: linux-5.10/MAINTAINERS
===================================================================
--- linux-5.10.orig/MAINTAINERS
+++ linux-5.10/MAINTAINERS
@@ -16325,6 +16325,8 @@ M:	Samuel Thibault <samuel.thibault@ens-
 L:	speakup@linux-speakup.org
 S:	Odd Fixes
 W:	http://www.linux-speakup.org/
+W:	https://github.com/linux-speakup/speakup
+B:	https://github.com/linux-speakup/speakup/issues
 F:	drivers/accessibility/speakup/
 
 SPEAR CLOCK FRAMEWORK SUPPORT
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
