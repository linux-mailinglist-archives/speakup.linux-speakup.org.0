Return-Path: <speakup+bounces-728-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2E7D35A55AD
	for <lists+speakup@lfdr.de>; Mon, 29 Aug 2022 22:36:42 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CCF9C381657; Mon, 29 Aug 2022 16:36:40 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B7ED838097A
	for <lists+speakup@lfdr.de>; Mon, 29 Aug 2022 16:36:40 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D5A1D380985; Mon, 29 Aug 2022 16:36:35 -0400 (EDT)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A62C338097A
	for <speakup@linux-speakup.org>; Mon, 29 Aug 2022 16:36:35 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id C71A120116;
	Mon, 29 Aug 2022 22:36:25 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D-uSzOWntrx7; Mon, 29 Aug 2022 22:36:25 +0200 (CEST)
Received: from begin (lfbn-bor-1-376-208.w109-215.abo.wanadoo.fr [109.215.91.208])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id C719F200D2;
	Mon, 29 Aug 2022 22:36:25 +0200 (CEST)
Received: from samy by begin with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1oSlUf-00DEh3-2t;
	Mon, 29 Aug 2022 22:36:25 +0200
Date: Mon, 29 Aug 2022 22:36:25 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, speakup@linux-speakup.org
Subject: speakup_soft: Add direct module parameter
Message-ID: <20220829203625.6s6x57miowu4p664@begin>
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

For non-english speech synthesis, it is often desirable to make
speakup_soft pass text directly.  Adding a direct parameter to the
speakup_soft module allows to easily set that at boot, rather than
setting the sys variable after boot.

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

---
 drivers/accessibility/speakup/speakup_soft.c |    6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

--- a/drivers/accessibility/speakup/speakup_soft.c
+++ b/drivers/accessibility/speakup/speakup_soft.c
@@ -34,6 +34,9 @@ static int init_pos;
 static int misc_registered;
 
 static struct var_t vars[] = {
+	/* DIRECT is put first so that module_param_named can access it easily */
+	{ DIRECT, .u.n = {NULL, 0, 0, 1, 0, 0, NULL } },
+
 	{ CAPS_START, .u.s = {"\x01+3p" } },
 	{ CAPS_STOP, .u.s = {"\x01-3p" } },
 	{ PAUSE, .u.n = {"\x01P" } },
@@ -45,7 +48,6 @@ static struct var_t vars[] = {
 	{ PUNCT, .u.n = {"\x01%db", 0, 0, 3, 0, 0, NULL } },
 	{ VOICE, .u.n = {"\x01%do", 0, 0, 7, 0, 0, NULL } },
 	{ FREQUENCY, .u.n = {"\x01%df", 5, 0, 9, 0, 0, NULL } },
-	{ DIRECT, .u.n = {NULL, 0, 0, 1, 0, 0, NULL } },
 	V_LAST_VAR
 };
 
@@ -449,8 +451,10 @@ static int softsynth_adjust(struct spk_s
 }
 
 module_param_named(start, synth_soft.startup, short, 0444);
+module_param_named(direct, vars[0].u.n.default_val, int, 0444);
 
 MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
+MODULE_PARM_DESC(direct, "Set the direct variable on load.");
 
 module_spk_synth(synth_soft);
 

