Return-Path: <speakup+bounces-604-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8BC9959EEFD
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 00:25:29 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 87DFB384897; Tue, 23 Aug 2022 18:25:28 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 72EAE384886
	for <lists+speakup@lfdr.de>; Tue, 23 Aug 2022 18:25:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 71EE93808C7; Tue, 23 Aug 2022 18:25:23 -0400 (EDT)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 47EE03805E0
	for <speakup@linux-speakup.org>; Tue, 23 Aug 2022 18:25:23 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id B863820134;
	Wed, 24 Aug 2022 00:25:15 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Q1gtM_Rm0JG; Wed, 24 Aug 2022 00:25:15 +0200 (CEST)
Received: from begin.home (lfbn-bor-1-376-208.w109-215.abo.wanadoo.fr [109.215.91.208])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id A63912011A;
	Wed, 24 Aug 2022 00:25:15 +0200 (CEST)
Received: from samy by begin.home with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1oQcKh-00GY2a-17;
	Wed, 24 Aug 2022 00:25:15 +0200
Message-ID: <20220823222514.929670068@ens-lyon.org>
User-Agent: quilt/0.66
Date: Wed, 24 Aug 2022 00:25:02 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org,
 speakup@linux-speakup.org,
 Samuel Thibault <samuel.thibault@ens-lyon.org>
Subject: [patch 1/2] speakup-dummy: Add support for PUNCT variable
References: <20220823222501.483597563@ens-lyon.org>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This allows to debug the update of the punctuation level.

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Index: linux/drivers/accessibility/speakup/speakup_dummy.c
===================================================================
--- linux.orig/drivers/accessibility/speakup/speakup_dummy.c
+++ linux/drivers/accessibility/speakup/speakup_dummy.c
@@ -27,6 +27,7 @@ static struct var_t vars[] = {
 	{ INFLECTION, .u.n = {"INFLECTION %d\n", 8, 0, 16, 0, 0, NULL } },
 	{ VOL, .u.n = {"VOL %d\n", 8, 0, 16, 0, 0, NULL } },
 	{ TONE, .u.n = {"TONE %d\n", 8, 0, 16, 0, 0, NULL } },
+	{ PUNCT, .u.n = {"PUNCT %d\n", 0, 0, 3, 0, 0, NULL } },
 	{ DIRECT, .u.n = {NULL, 0, 0, 1, 0, 0, NULL } },
 	V_LAST_VAR
 };
@@ -42,6 +43,8 @@ static struct kobj_attribute pitch_attri
 	__ATTR(pitch, 0644, spk_var_show, spk_var_store);
 static struct kobj_attribute inflection_attribute =
 	__ATTR(inflection, 0644, spk_var_show, spk_var_store);
+static struct kobj_attribute punct_attribute =
+	__ATTR(punct, 0644, spk_var_show, spk_var_store);
 static struct kobj_attribute rate_attribute =
 	__ATTR(rate, 0644, spk_var_show, spk_var_store);
 static struct kobj_attribute tone_attribute =
@@ -69,6 +72,7 @@ static struct attribute *synth_attrs[] =
 	&caps_stop_attribute.attr,
 	&pitch_attribute.attr,
 	&inflection_attribute.attr,
+	&punct_attribute.attr,
 	&rate_attribute.attr,
 	&tone_attribute.attr,
 	&vol_attribute.attr,


