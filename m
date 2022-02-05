Return-Path: <speakup+bounces-361-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 14CF64AAD08
	for <lists+speakup@lfdr.de>; Sun,  6 Feb 2022 00:30:11 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3B29E38116E; Sat,  5 Feb 2022 18:30:10 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2829D3805F3
	for <lists+speakup@lfdr.de>; Sat,  5 Feb 2022 18:30:10 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 473D2380BFA; Sat,  5 Feb 2022 18:30:05 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1ADFA3805F3
	for <speakup@linux-speakup.org>; Sat,  5 Feb 2022 18:30:05 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 54ADB1F7;
	Sun,  6 Feb 2022 00:30:00 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2xG9pPbeLRYL; Sun,  6 Feb 2022 00:29:59 +0100 (CET)
Received: from begin (unknown [IPv6:2a01:cb19:956:1b00:de41:a9ff:fe47:ec49])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 34512171;
	Sun,  6 Feb 2022 00:29:59 +0100 (CET)
Received: from samy by begin with local (Exim 4.95)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1nGUVB-00HZhK-PH;
	Sun, 06 Feb 2022 00:29:57 +0100
Date: Sun, 6 Feb 2022 00:29:57 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, speakup@linux-speakup.org
Subject: [PATCH] [speakup] Allow lower values for the flush parameter
Message-ID: <20220205232957.bc6o6yyt5hitg754@begin>
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
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Spamd-Bar: /
Authentication-Results: hera.aquilenet.fr;
	none
X-Rspamd-Server: hera
X-Rspamd-Queue-Id: 54ADB1F7
X-Spamd-Result: default: False [0.40 / 15.00];
	 ARC_NA(0.00)[];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 FROM_HAS_DN(0.00)[];
	 RCPT_COUNT_THREE(0.00)[3];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 MIME_GOOD(-0.10)[text/plain];
	 TO_DN_NONE(0.00)[];
	 HAS_ORG_HEADER(0.00)[];
	 RCVD_COUNT_THREE(0.00)[3];
	 FROM_EQ_ENVFROM(0.00)[];
	 MIME_TRACE(0.00)[0:+];
	 RCVD_TLS_LAST(0.00)[];
	 MID_RHS_NOT_FQDN(0.50)[]
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Users needing it with the dectlk synth report that a 100ms flush delay
is still noticeable and prefer to set it to e.g. 10ms. This leaves the
default to 4000ms (since hitting it is a sign that the cable is faulty
and should be replaced), but allows to set it as short as 10ms.

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

diff --git a/drivers/accessibility/speakup/synth.c b/drivers/accessibility/speakup/synth.c
index 2b8699673bac..eea2a2fa4f01 100644
--- a/drivers/accessibility/speakup/synth.c
+++ b/drivers/accessibility/speakup/synth.c
@@ -348,7 +348,7 @@ struct var_t synth_time_vars[] = {
 	{ TRIGGER, .u.n = {NULL, 20, 10, 2000, 0, 0, NULL } },
 	{ JIFFY, .u.n = {NULL, 50, 20, 200, 0, 0, NULL } },
 	{ FULL, .u.n = {NULL, 400, 200, 60000, 0, 0, NULL } },
-	{ FLUSH, .u.n = {NULL, 4000, 100, 4000, 0, 0, NULL } },
+	{ FLUSH, .u.n = {NULL, 4000, 10, 4000, 0, 0, NULL } },
 	V_LAST_VAR
 };
 

