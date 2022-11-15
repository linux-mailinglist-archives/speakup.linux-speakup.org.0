Return-Path: <speakup+bounces-854-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C129F6294C6
	for <lists+speakup@lfdr.de>; Tue, 15 Nov 2022 10:48:29 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=DAERfQFg;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 29CBA382A46; Tue, 15 Nov 2022 04:48:28 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E4795382A0A
	for <lists+speakup@lfdr.de>; Tue, 15 Nov 2022 04:48:27 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EA06B38293D; Tue, 15 Nov 2022 04:48:18 -0500 (EST)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by befuddled.reisers.ca (Postfix) with ESMTPS id CC58138293D
	for <speakup@linux-speakup.org>; Tue, 15 Nov 2022 04:48:18 -0500 (EST)
Received: by mail-wr1-f47.google.com with SMTP id l14so23266491wrw.2
        for <speakup@linux-speakup.org>; Tue, 15 Nov 2022 01:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cPu7bwc+ZranhLPX5AB2LeDrS1+qW0XSqyGwXW15FJY=;
        b=DAERfQFgE3Ib6MPZMtefbIoP3/4Hy6yIUOQdWCUs9y4mIsG4+Is2jzIAfex8nQ2Z2H
         eldnpR4tufY5eal/8gp9G33pu9Nc6lVRU4McHKaHLdFgNwbLvyWSGInhbADt3gCSO6oq
         xPQZQ5PVgwoK6KMYkKRcOTzUUqKZUp+mL7uJpREDyC5qYBT4pljZ7gHRozxxooK5hh0e
         QNMGmBZPWCty+sQw0lHXiZN4jtinhBWgm5H0BErxOnmHKBHny9rbjrSsw5uEVuvOWN/t
         cwy64yZO0sv9az6IR/mXAo4WzEHNKreq6ocb7mLNLZLeousSTPXQ+qrid5eXjYXo9Xwd
         LARQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cPu7bwc+ZranhLPX5AB2LeDrS1+qW0XSqyGwXW15FJY=;
        b=J7iq0X3lBqOPEk4ng4V8efnYfsZzyh/slOid5/CB7HYi6+VfUUiPCe9GQa2mM5pKen
         jQ75X9QeuovbtC9gjF888p/CMrXTUbZ7hJHka39tjFTwq0igA2g76Xe49K/74N8uhpNn
         FXt0wRhPYvdR1bztpKgWNBYaPk5ngYnd+KKHd2tCa03a+R5Yp/ah0bL+JDjRyFvUIeNI
         0LTkUxI8kvAju/wOVxKbnoVFDhIWTAHsnhaQU4xqA+5EINghZheXrqySlD0Gmc42D3uk
         bmgkwtLI0bdwvlFWfjJTklUhze0MTUiVOGAC0Hj+Te+g44OofAqUVQlupuicK/kwJZRd
         OsrA==
X-Gm-Message-State: ANoB5pnejK7nbrHL3TPQ8PTFcV4NtenrijWdNw5RBLEg3O8TAkkjbpXP
	KU37Cs9eRYgJXpO+tfk/33U=
X-Google-Smtp-Source: AA0mqf5YUvRFZykexIik3guOHGeaUQX4gN6mJBq1wrtsSLps+2ApgvYomucoInu0hEQm8sOrxjJLMg==
X-Received: by 2002:adf:f8cf:0:b0:241:9606:1123 with SMTP id f15-20020adff8cf000000b0024196061123mr3898021wrq.537.1668505636805;
        Tue, 15 Nov 2022 01:47:16 -0800 (PST)
Received: from arch.localdomain ([119.160.120.210])
        by smtp.gmail.com with ESMTPSA id p14-20020a5d458e000000b0022eafed36ebsm11904866wrq.73.2022.11.15.01.47.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 01:47:16 -0800 (PST)
From: Mushahid Hussain <mushi.shar@gmail.com>
To: samuel.thibault@ens-lyon.org
Cc: okash.khawaja@gmail.com,
	speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org,
	Mushahid Hussain <mushi.shar@gmail.com>
Subject: [PATCHv2 1/2] accessibility: speakup: Specify spk_vars among module parameters
Date: Tue, 15 Nov 2022 14:48:11 +0500
Message-Id: <20221115094812.81632-2-mushi.shar@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221115094812.81632-1-mushi.shar@gmail.com>
References: <20221115094812.81632-1-mushi.shar@gmail.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is an enhancement which allows setting default variables for
speakup module at the boot rather than setting the sys variables after
the boot.

Signed-off-by: Mushahid Hussain <mushi.shar@gmail.com>
Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
---
 drivers/accessibility/speakup/main.c | 60 ++++++++++++++++++++++------
 1 file changed, 47 insertions(+), 13 deletions(-)

diff --git a/drivers/accessibility/speakup/main.c b/drivers/accessibility/speakup/main.c
index f52265293482..2e6e0649fe90 100644
--- a/drivers/accessibility/speakup/main.c
+++ b/drivers/accessibility/speakup/main.c
@@ -1268,20 +1268,28 @@ int spk_set_key_info(const u_char *key_info, u_char *k_buffer)
 	return 0;
 }

-static struct var_t spk_vars[] = {
+enum spk_vars_id {
+	BELL_POS_ID = 0, SPELL_DELAY_ID, ATTRIB_BLEEP_ID,
+	BLEEPS_ID, BLEEP_TIME_ID, PUNC_LEVEL_ID,
+	READING_PUNC_ID, CURSOR_TIME_ID, SAY_CONTROL_ID,
+	SAY_WORD_CTL_ID, NO_INTERRUPT_ID, KEY_ECHO_ID,
+	V_LAST_VAR_ID, NB_ID
+};
+
+static struct var_t spk_vars[NB_ID] = {
 	/* bell must be first to set high limit */
-	{BELL_POS, .u.n = {NULL, 0, 0, 0, 0, 0, NULL} },
-	{SPELL_DELAY, .u.n = {NULL, 0, 0, 4, 0, 0, NULL} },
-	{ATTRIB_BLEEP, .u.n = {NULL, 1, 0, 3, 0, 0, NULL} },
-	{BLEEPS, .u.n = {NULL, 3, 0, 3, 0, 0, NULL} },
-	{BLEEP_TIME, .u.n = {NULL, 30, 1, 200, 0, 0, NULL} },
-	{PUNC_LEVEL, .u.n = {NULL, 1, 0, 4, 0, 0, NULL} },
-	{READING_PUNC, .u.n = {NULL, 1, 0, 4, 0, 0, NULL} },
-	{CURSOR_TIME, .u.n = {NULL, 120, 50, 600, 0, 0, NULL} },
-	{SAY_CONTROL, TOGGLE_0},
-	{SAY_WORD_CTL, TOGGLE_0},
-	{NO_INTERRUPT, TOGGLE_0},
-	{KEY_ECHO, .u.n = {NULL, 1, 0, 2, 0, 0, NULL} },
+	[BELL_POS_ID] = { BELL_POS, .u.n = {NULL, 0, 0, 0, 0, 0, NULL} },
+	[SPELL_DELAY_ID] = { SPELL_DELAY, .u.n = {NULL, 0, 0, 4, 0, 0, NULL} },
+	[ATTRIB_BLEEP_ID] = { ATTRIB_BLEEP, .u.n = {NULL, 1, 0, 3, 0, 0, NULL} },
+	[BLEEPS_ID] = { BLEEPS, .u.n = {NULL, 3, 0, 3, 0, 0, NULL} },
+	[BLEEP_TIME_ID] = { BLEEP_TIME, .u.n = {NULL, 30, 1, 200, 0, 0, NULL} },
+	[PUNC_LEVEL_ID] = { PUNC_LEVEL, .u.n = {NULL, 1, 0, 4, 0, 0, NULL} },
+	[READING_PUNC_ID] = { READING_PUNC, .u.n = {NULL, 1, 0, 4, 0, 0, NULL} },
+	[CURSOR_TIME_ID] = { CURSOR_TIME, .u.n = {NULL, 120, 50, 600, 0, 0, NULL} },
+	[SAY_CONTROL_ID] { SAY_CONTROL, TOGGLE_0},
+	[SAY_WORD_CTL_ID] = {SAY_WORD_CTL, TOGGLE_0},
+	[NO_INTERRUPT_ID] = { NO_INTERRUPT, TOGGLE_0},
+	[KEY_ECHO_ID] = { KEY_ECHO, .u.n = {NULL, 1, 0, 2, 0, 0, NULL} },
 	V_LAST_VAR
 };

@@ -2453,5 +2461,31 @@ static int __init speakup_init(void)
 	return err;
 }

+module_param_named(bell_pos, spk_vars[BELL_POS_ID].u.n.default_val, int, 0444);
+module_param_named(spell_delay, spk_vars[SPELL_DELAY_ID].u.n.default_val, int, 0444);
+module_param_named(attrib_bleep, spk_vars[ATTRIB_BLEEP_ID].u.n.default_val, int, 0444);
+module_param_named(bleeps, spk_vars[BLEEPS_ID].u.n.default_val, int, 0444);
+module_param_named(bleep_time, spk_vars[BLEEP_TIME_ID].u.n.default_val, int, 0444);
+module_param_named(punc_level, spk_vars[PUNC_LEVEL_ID].u.n.default_val, int, 0444);
+module_param_named(reading_punc, spk_vars[READING_PUNC_ID].u.n.default_val, int, 0444);
+module_param_named(cursor_time, spk_vars[CURSOR_TIME_ID].u.n.default_val, int, 0444);
+module_param_named(say_control, spk_vars[SAY_CONTROL_ID].u.n.default_val, int, 0444);
+module_param_named(say_word_ctl, spk_vars[SAY_WORD_CTL_ID].u.n.default_val, int, 0444);
+module_param_named(no_interrupt, spk_vars[NO_INTERRUPT_ID].u.n.default_val, int, 0444);
+module_param_named(key_echo, spk_vars[KEY_ECHO_ID].u.n.default_val, int, 0444);
+
+MODULE_PARM_DESC(bell_pos, "This works much like a typewriter bell. If for example 72 is echoed to bell_pos, it will beep the PC speaker when typing on a line past character 72.");
+MODULE_PARM_DESC(spell_delay, "This controls how fast a word is spelled when speakup's spell word review command is pressed.");
+MODULE_PARM_DESC(attrib_bleep, "Beeps the PC speaker when there is an attribute change such as background color when using speakup review commands. One = on, zero = off.");
+MODULE_PARM_DESC(bleeps, "This controls whether one hears beeps through the PC speaker when using speakup review commands.");
+MODULE_PARM_DESC(bleep_time, "This controls the duration of the PC speaker beeps speakup produces.");
+MODULE_PARM_DESC(punc_level, "Controls the level of punctuation spoken as the screen is displayed, not reviewed.");
+MODULE_PARM_DESC(reading_punc, "It controls the level of punctuation when reviewing the screen with speakup's screen review commands.");
+MODULE_PARM_DESC(cursor_time, "This controls cursor delay when using arrow keys.");
+MODULE_PARM_DESC(say_control, "This controls if speakup speaks shift, alt and control when those keys are pressed or not.");
+MODULE_PARM_DESC(say_word_ctl, "Sets thw say_word_ctl  on load.");
+MODULE_PARM_DESC(no_interrupt, "Controls if typing interrupts output from speakup.");
+MODULE_PARM_DESC(key_echo, "Controls if speakup speaks keys when they are typed. One = on zero = off or don't echo keys.");
+
 module_init(speakup_init);
 module_exit(speakup_exit);
--
2.38.1

