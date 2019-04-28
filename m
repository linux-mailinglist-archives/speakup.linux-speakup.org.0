Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E240BB65A
	for <lists+speakup@lfdr.de>; Sun, 28 Apr 2019 20:54:13 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7155F1C4390; Sun, 28 Apr 2019 14:54:13 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="t9p09qpc";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A229D1C4416;
	Sun, 28 Apr 2019 14:53:15 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id E51901C4390; Sun, 28 Apr 2019 14:53:13 -0400 (EDT)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 9DDED1C4381
 for <speakup@linux-speakup.org>; Sun, 28 Apr 2019 14:53:12 -0400 (EDT)
Received: by mail-wm1-x329.google.com with SMTP id y197so12348856wmd.0
 for <speakup@linux-speakup.org>; Sun, 28 Apr 2019 11:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GZGGGJreuqn7OHA5xb71hg6Hjmp1wgPoKvgxRQdH3PI=;
 b=t9p09qpc94R7iKRm3yjnW1DwLbKb9xzfw415I5nrf3ApGrZL72kdc6yRAd9tnCrYHu
 z3V766ibOeLBCHwEnoT7+r4k+A/KcX65LA9X6Z0hdkfGlJiqvY8QmAUINmI4drTR0lBz
 W6LoLWy8JfRYXgJpOilGYKNE2C2nq2feJu481FVdreqsVM354pppAL59lnSTjux1Gdwj
 CAf5RTRL9fglA37GYWTbgtagqwYhmeYGrVMYp4MgEm53T22tBXYGa/wICVRgtaIiHEGu
 xxymKWdOI6pnQTRd9E0HWJePpIZE+LZAuJOtOg33YelqKn8zv5FjRy0xaCXbABS6k3e4
 zUjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GZGGGJreuqn7OHA5xb71hg6Hjmp1wgPoKvgxRQdH3PI=;
 b=I6E2FntSoM+uW2Z/4xR3sOuU+N5Oz2llHtQ+zxtDPd2FIWmi3X/CnC+2JJ+Bp+VelX
 8BJpg+D/pJ0fxuNTgP4s4TGmwIKIvNntGukJoKtuxApZXF72Q71DqAjTpt9loPtraDOr
 m8bAoDlFmKe7XtVwg9eTQ5exAY3tiHe6YcdqrT9otXsGZ2ilUCO1pi9Lxi6iZQ4RDpU8
 zAnFg/m1H6l3DzDnAD1p3perzAehUIyTzIAhBtUT2UPYa/BBPlX+21Q725Q5jjGkI6Iu
 bFtW3lQXjJoCZ6gKLgUuIwV7JhxqWWe0vPVBkfSRjenlGMSbkOGSya7w6/s/SIKVCiMC
 CDYg==
X-Gm-Message-State: APjAAAWTud+fI1ZAH/1Gh3Y7JqNu3UCoVxmr334SykYpeqHE9Cs8llqm
 LbuEQpng87cGxtq8pmVN5T4=
X-Google-Smtp-Source: APXvYqxVOha6REjZsegT3rhBUJwLOXCkO+sw4fASEJAbnDrSWoFvOoVbApi36WuXs9QoFELqGMaYuQ==
X-Received: by 2002:a7b:c111:: with SMTP id w17mr15575053wmi.6.1556477589852; 
 Sun, 28 Apr 2019 11:53:09 -0700 (PDT)
Received: from narunkot ([94.11.212.240])
 by smtp.gmail.com with ESMTPSA id q7sm15790648wmc.11.2019.04.28.11.53.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 28 Apr 2019 11:53:08 -0700 (PDT)
Date: Sun, 28 Apr 2019 19:52:59 +0100
From: Okash Khawaja <okash.khawaja@gmail.com>
To: Chris Brannon <chris@the-brannons.com>
Subject: Re: speakup and garbled text
Message-ID: <20190428195259.6a206481@narunkot>
In-Reply-To: <874l6iufud.fsf@cmbmachine.messageid.invalid>
References: <7b432bc0-4164-714e-f3bd-69ec44a7116b@the-brannons.com>
 <alpine.NEB.2.21.1903160625050.548@panix1.panix.com>
 <20190428171803.7684984b@narunkot>
 <874l6iufud.fsf@cmbmachine.messageid.invalid>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

On Sun, 28 Apr 2019 11:47:38 -0700
Chris Brannon <chris@the-brannons.com> wrote:

> Okash Khawaja <okash.khawaja@gmail.com> writes:
> 
> > Hi,
> >
> > Apologies for a late follow-up. I am struggling to reproduce
> > this. Could you explain what you mean by reading large chunk of
> > text?
> >
> > Here is what I did. Set up speakup with espeak. Then in
> > console, opened spkguide.txt with less. I allowed it to read a full
> > screen but couldn't find garbled text. Shall I do it with more
> > screenfuls?  
> 
> Hi,
> One screenful might be enough or it might not.  This particular bug
> seems to be really environment-dependent.  I've only seen it on
> multi-processor systems, or systems using hyperthreading.
> Just now, I tried reproducing with less, and it didn't show up until
> the second screen.
I see. I have tried it on Core i5 with 4 cores. I can try more
screenfuls and also test on a bigger system.

Thank you
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
