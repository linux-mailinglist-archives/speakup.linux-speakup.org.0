Return-Path: <speakup+bounces-223-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C8F7E3B86F2
	for <lists+speakup@lfdr.de>; Wed, 30 Jun 2021 18:17:51 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CB4D9381764; Wed, 30 Jun 2021 12:17:49 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=U3IefBt7;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B88323809A8
	for <lists+speakup@lfdr.de>; Wed, 30 Jun 2021 12:17:49 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D6D99380BC2; Wed, 30 Jun 2021 12:17:46 -0400 (EDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C75293809A8
	for <speakup@linux-speakup.org>; Wed, 30 Jun 2021 12:17:46 -0400 (EDT)
Received: by mail-wm1-f44.google.com with SMTP id p10-20020a05600c430ab02901df57d735f7so4835807wme.3
        for <speakup@linux-speakup.org>; Wed, 30 Jun 2021 09:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=BUv0yg57ef61uAd/0ajBzpy34ELNJdotc5hyKgvt49c=;
        b=U3IefBt7GA3LMU4Y1mUuapjH2TpToWEDY7woabV09nV2iWQMehQzP1RfMWdETOfbyG
         ECi3sCj1G3ew1QhEXmvkyAJQBgH+V49mLQeMwg6quzGLjbwZfYoJWX/tEMfCWDJ5V5W4
         ijV3f7eWmLCPd8W5Tb9jhNt9tWFwWNmzDZSu/35vTzOEXWFloeFt96xlXDuAw3PG7WvT
         z3ZTL/mCydWgpzfQDguZpdBrYey/dPwFXvXEWzWrjyvmy0kapt0PYcyYtNGdpm0ZEtST
         gXWZRrYxCkxWgKEDgh47nTAbuqzAD4Rz2cT4ZSAEvfPhoyoTcRmfDNxSWJTK8ZZ34kAw
         P+qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=BUv0yg57ef61uAd/0ajBzpy34ELNJdotc5hyKgvt49c=;
        b=uPcNOp8oP2t77f2vgYWOPjhhlavMuJCoD7oQCV8UhubnQN06amLoShO0yV8EduARUu
         ssGrrbOvaAPiIRigbBAPSFV3mSAxSKMD26kZLTrnPlZAIAYJSv9zaSSWghFtkOeGMVJp
         oihNp4H0AxQM7MNQBH+cYsnx3NINxVaV4gkHspQftkDO/covuyYWed1j4LlQ+bB5xAuS
         9M8ymmBTyFwwgVPDlofoGIoseWWk1p0C3Lwq/n3k4gX3q3f7F2RNNLjkoyHsnywv+m/Q
         8GOjo2RqcD0pHSzOTx20PHHInDgGPZBkRec9KwfcRNmErZ0KKkSCxQ0SPrqEj/zGu782
         uqNA==
X-Gm-Message-State: AOAM533QTw4DX0UKiBkNADRgDEvYUpOAwWay9N+d+H+jpOjS3FEwoNgS
	JHZbyRlMYx3TyrpmAQM6UqD5UOQUrSiVJQ==
X-Google-Smtp-Source: ABdhPJwnVujqiWK2//REodG8dEo+GLf9clVS57vUcpS8Mv5n4tHICNbYeSE3++ATVZP/hglpVHhsZw==
X-Received: by 2002:a1c:7410:: with SMTP id p16mr25098631wmc.24.1625069802139;
        Wed, 30 Jun 2021 09:16:42 -0700 (PDT)
Received: from pc ([196.235.73.129])
        by smtp.gmail.com with ESMTPSA id b9sm26333153wrh.81.2021.06.30.09.16.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jun 2021 09:16:41 -0700 (PDT)
Date: Wed, 30 Jun 2021 17:16:40 +0100
From: Salah Triki <salah.triki@gmail.com>
To: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org
Cc: speakup@linux-speakup.org
Subject: [PATCH] speakup: replace sprintf() by scnprintf()
Message-ID: <20210630161640.GA132791@pc>
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
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Replace sprintf() by scnprintf() in order to avoid buffer overflows.

Signed-off-by: Salah Triki <salah.triki@gmail.com>
---
 drivers/accessibility/speakup/speakup_soft.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/accessibility/speakup/speakup_soft.c b/drivers/accessibility/speakup/speakup_soft.c
index c3f97c572fb6..19824e7006fe 100644
--- a/drivers/accessibility/speakup/speakup_soft.c
+++ b/drivers/accessibility/speakup/speakup_soft.c
@@ -153,18 +153,25 @@ static char *get_initstring(void)
 	static char buf[40];
 	char *cp;
 	struct var_t *var;
+	size_t len;
+	size_t n;
 
 	memset(buf, 0, sizeof(buf));
 	cp = buf;
+	len = sizeof(buf);
+
 	var = synth_soft.vars;
 	while (var->var_id != MAXVARS) {
 		if (var->var_id != CAPS_START && var->var_id != CAPS_STOP &&
-		    var->var_id != PAUSE && var->var_id != DIRECT)
-			cp = cp + sprintf(cp, var->u.n.synth_fmt,
-					  var->u.n.value);
+		    var->var_id != PAUSE && var->var_id != DIRECT) {
+			n = scnprintf(cp, len, var->u.n.synth_fmt,
+				      var->u.n.value);
+			cp = cp + n;
+			len = len - n;
+		}
 		var++;
 	}
-	cp = cp + sprintf(cp, "\n");
+	cp = cp + scnprintf(cp, len, "\n");
 	return buf;
 }
 
-- 
2.25.1


