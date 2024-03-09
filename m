Return-Path: <speakup+bounces-1088-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9CB3C8773E1
	for <lists+speakup@lfdr.de>; Sat,  9 Mar 2024 21:36:06 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E33763821C2; Sat,  9 Mar 2024 15:36:00 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CDAEA38211F
	for <lists+speakup@lfdr.de>; Sat,  9 Mar 2024 15:36:00 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8F3E73821B7; Sat,  9 Mar 2024 15:35:56 -0500 (EST)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 66EAF380634
	for <speakup@linux-speakup.org>; Sat,  9 Mar 2024 15:35:56 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id A00C7A02B9;
	Sat,  9 Mar 2024 21:35:50 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eP4BFBAT6w_l; Sat,  9 Mar 2024 21:35:50 +0100 (CET)
Received: from begin (aamiens-653-1-111-57.w83-192.abo.wanadoo.fr [83.192.234.57])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 3C28CA02B8;
	Sat,  9 Mar 2024 21:35:50 +0100 (CET)
Received: from samy by begin with local (Exim 4.97)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1rj3Q5-00000001EM3-3UMS;
	Sat, 09 Mar 2024 21:35:49 +0100
Date: Sat, 9 Mar 2024 21:35:49 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, speakup@linux-speakup.org
Subject: [PATCH] speakup: Fix warning for label at end of compound statement
Message-ID: <20240309203549.jj2l6epnznyjsrje@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	speakup@linux-speakup.org
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Label at end of compound statements is a C2x extension, so add an empty instruction.

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
Reported-by: kernel test robot <lkp@intel.com>
Fixes: 807977260ae4 ("speakup: Add /dev/synthu device")
Closes: https://lore.kernel.org/oe-kbuild-all/202403090122.cpUNsozM-lkp@intel.com/

Index: linux-6.4/drivers/accessibility/speakup/devsynth.c
===================================================================
--- linux-6.4.orig/drivers/accessibility/speakup/devsynth.c
+++ linux-6.4/drivers/accessibility/speakup/devsynth.c
@@ -108,6 +108,7 @@ static ssize_t speakup_file_writeu(struc
 				break;
 			}
 drop:
+			;
 		}
 
 		count -= bytes;

