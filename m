Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 557D81AEEB4
	for <lists+speakup@lfdr.de>; Sat, 18 Apr 2020 16:28:56 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7083A1C57B4; Sat, 18 Apr 2020 10:28:55 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=YInSJmNn;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 00C251C5801;
	Sat, 18 Apr 2020 10:28:38 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 4C0281C57B4; Sat, 18 Apr 2020 10:28:34 -0400 (EDT)
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com
 [IPv6:2607:f8b0:4864:20::82c])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 98AA71C0B50
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 10:28:32 -0400 (EDT)
Received: by mail-qt1-x82c.google.com with SMTP id 71so4564415qtc.12
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 07:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version:content-language
 :thread-index; bh=XyF7/xQXvbAtXGyi4rAYIXxcWbxepbMVbBCwXDSPki8=;
 b=YInSJmNna+FZhoSOqCjzm0gq4DfF66hlGRSSip1Mb5FQSftkJqgl4uJ6DPmqt2oKe1
 BZpYa41urHGy/6xsdrvMVkrLIg+rFjdlasYHtdCeEdV+LsPgjpu/JaruRevPpIYvbBwi
 DtN195QyHbmuUA+GnaiL2+/pM4qPd4f9rfetbE5AZ92SgSuFtCpCniR8SxI00gFXFlkN
 VI6nR1AJVFzEFjrPja3NkKuSg3CLcZRaVPOhzUbvTSqIeL+JYk5Ebi5NT4p2UpCngqc8
 QuoNmLURK8ykpf6/BcDnZVdN5xsPGIdlBIpYQs77pePgIpbSe1i8OSXMSmUocGhEbV8b
 wFxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-language:thread-index;
 bh=XyF7/xQXvbAtXGyi4rAYIXxcWbxepbMVbBCwXDSPki8=;
 b=ljIntwEH9EJuNSqGwWsS0t8KaGc5fJoVePCHEDfNF0BmV/qRal53H67z82sNHmA2v4
 GFmbWmM52wvXhJLRvPaaxo81/PKFTuaRO8QcETzQ8UPwGWbxAIAKX6GMt8+vaIVSxFVR
 5JOTGnVZOZ5/kIwgT7M22aaEHAxJkbWMVoSx3yKDYgoXtnSEUMsiBRiAJP8IsuiDjEZo
 6Gy4nnnXcfAzZ6x/TYtWvqST0NcZuo7HcZS+5rpWILx8D2Ms7KZH5931d5KACbHL/m1l
 Yl5y7RAD066FzKifSIiPPTM4ET43vl6rYyU5kiSRv0Ox5vBboHPHNajoZfX1uGd8E6yh
 1yIg==
X-Gm-Message-State: AGi0PubEzHn+k28Oehu2G9zcCUST5X3EqhqWTgx13onuPsDBMYmkOaEe
 I2gEFkFLhey7iHX/HbxMZySB46b3
X-Google-Smtp-Source: APiQypKaMdYs7t3hiFQXsFdzcFrziQSpcok5vxF6CHmp3UBg/6UBLlFVeMnW2KpxKHbpPgI58y45ww==
X-Received: by 2002:ac8:2fda:: with SMTP id m26mr7982469qta.80.1587220109891; 
 Sat, 18 Apr 2020 07:28:29 -0700 (PDT)
Received: from X230 (99-72-244-221.lightspeed.mdsnwi.sbcglobal.net.
 [99.72.244.221])
 by smtp.gmail.com with ESMTPSA id j9sm2236495qkk.99.2020.04.18.07.28.28
 for <speakup@linux-speakup.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 Apr 2020 07:28:29 -0700 (PDT)
From: "Chris Zenchenko" <old78rpm@gmail.com>
To: <speakup@linux-speakup.org>
Subject: log file noise
Date: Sat, 18 Apr 2020 09:28:27 -0500
Message-ID: <006d01d6158d$a10093f0$e301bbd0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AdYVjT0b26smgrAGSY+xTFIIrNfdHA==
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Not exactly a Speakup issue but I'm wondering if anyone has figured out a
way to read through log files minus the date and time.
I'd like to be able to run through a file without all that extra info at the
start of each entry.
If I find something important then of course I want to know when but for
just skimming through a file all that extra speech is making me crazy.
Ok, more crazy than I am already!

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
