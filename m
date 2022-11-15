Return-Path: <speakup+bounces-858-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D6E9D629554
	for <lists+speakup@lfdr.de>; Tue, 15 Nov 2022 11:09:03 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=B0M+xp6e;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4E22F38298D; Tue, 15 Nov 2022 05:09:03 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EC31F382957
	for <lists+speakup@lfdr.de>; Tue, 15 Nov 2022 05:09:02 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 05EAB382954; Tue, 15 Nov 2022 05:08:54 -0500 (EST)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 053D3382951
	for <speakup@linux-speakup.org>; Tue, 15 Nov 2022 05:08:53 -0500 (EST)
Received: by mail-wr1-f43.google.com with SMTP id d9so18650320wrm.13
        for <speakup@linux-speakup.org>; Tue, 15 Nov 2022 02:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cPu7bwc+ZranhLPX5AB2LeDrS1+qW0XSqyGwXW15FJY=;
        b=B0M+xp6e67sZ2f07FTofWGuU2cuPrpvpOkA8ld1p02KEmalD04xPWLOxvcY4d6k+Ud
         YCDnc1st2zHdvvmXsCzeqaHz3a2CJxU5DOhF7WFWOCCoD7XSYCiSRPFe2LqgCWn5gcLN
         FqGEsDn9tcc6T5A5ty7JdTEgHXDbfqu1ch0SoGhOx+wqQhLHrYQNoaSRt+sxI0ida4lp
         UHVY4tpWZg7izsiUgKgTnAQGQegqrkm82gfW1ehlLkkuurC4ngitjHVWsMbhMEEiQTfR
         wiAUbPaHB6hJV1FZ24NwNURiAsNy2HSD6t7AlldPKjxSgt7zvB7MgtQhtjpO5RUiGquz
         EDWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cPu7bwc+ZranhLPX5AB2LeDrS1+qW0XSqyGwXW15FJY=;
        b=6Mb6WmlE5+4VGxLlHu2r839foswqbVqQ5ZcOsGeO1h/m71z6VLhAaXUublduwdmfrv
         YvQpwHyKPcHiPNl1/lke/GYYL7Gl3WKABvzPZ552OV7MXZIHHykvq8q45LLhMIarjQmC
         pPntFIMoqY8I70HxW3lxfoYV7kNgouXJP3uABH5duVmfiKu2apyMMJH6ublgLZN9wPWz
         cAPVhK7zS9tHwAAyzh71+vdJzaBuzfWGU1hQu9p9cWhJE3Y3+BiDs3RwsSEnH0OV/CcX
         7tzTKhCQOmJSHOBQ6+c27v9hQB+hJpC18/2lROazgQMTxx+SrOdnuAIjzs2sRAWZ8XYY
         7uNQ==
X-Gm-Message-State: ANoB5pn4NlbJyS02U0jZGzWo32hISot6TEkvscfxYn8dQzbDk5L0vwCa
	VVgA8Q5vsXyvIxOCmu5PjCU=
X-Google-Smtp-Source: AA0mqf4R/x/n80rD/XYttwZg5yBjNpOQNn8RcsMSg++0FvfG66itcVzgKOBHcg0STDusYt2pvzBvyA==
X-Received: by 2002:a5d:42c7:0:b0:22e:35c9:fce5 with SMTP id t7-20020a5d42c7000000b0022e35c9fce5mr10196528wrr.534.1668506871535;
        Tue, 15 Nov 2022 02:07:51 -0800 (PST)
Received: from arch.localdomain ([119.160.120.210])
        by smtp.gmail.com with ESMTPSA id m16-20020a05600c3b1000b003a3170a7af9sm16577154wms.4.2022.11.15.02.07.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 02:07:51 -0800 (PST)
From: Mushahid Hussain <mushi.shar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org,
	Mushahid Hussain <mushi.shar@gmail.com>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>
Subject: [PATCHv2 1/2] accessibility: speakup: Specify spk_vars among module parameters
Date: Tue, 15 Nov 2022 15:05:29 +0500
Message-Id: <20221115100530.91174-2-mushi.shar@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221115100530.91174-1-mushi.shar@gmail.com>
References: <20221115100530.91174-1-mushi.shar@gmail.com>
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

