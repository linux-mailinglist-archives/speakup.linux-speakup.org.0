Return-Path: <speakup+bounces-857-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6A951629552
	for <lists+speakup@lfdr.de>; Tue, 15 Nov 2022 11:08:52 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=ldTcu4lA;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CBED0382954; Tue, 15 Nov 2022 05:08:51 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AEA4F382945
	for <lists+speakup@lfdr.de>; Tue, 15 Nov 2022 05:08:51 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EA022382948; Tue, 15 Nov 2022 05:08:42 -0500 (EST)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BD3CE382945
	for <speakup@linux-speakup.org>; Tue, 15 Nov 2022 05:08:42 -0500 (EST)
Received: by mail-wr1-f53.google.com with SMTP id j15so23391062wrq.3
        for <speakup@linux-speakup.org>; Tue, 15 Nov 2022 02:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=q2Q6yJygbHr4Zzn8DwsSexLuA37VlJWO80Y9Cecq2Tc=;
        b=ldTcu4lAZ9Nb1vfUt/8/tmhk4NLnsg+lnkGw6d/E9P+LJjF3f+p9ctzhpWJXLt5f5g
         iMS6Q6Izmo8ZK58YP8pPEHOGd9uqfnpGmRsChbbdnRTE/eFd03CUTEhNHUvpV52s9+HX
         fFth3Dnr9DDF+lAQMFsaEMq6kCJEHkOnVPawj61VZRQ66gzXWSFhIM/6GyekX+XiiDly
         Gwky9iImKC0fHf2nuJgmshPawDEWg1TUz39ei3Y6dJL7lwMQmLwI+lDm4Pj0z+KaUD2V
         AibrEaryl9/9hzJHaLYq3dnnsL+fZ9i+JQP1tckJDkgq4KalyMgHmvZO8+73CrIbbbWP
         iEQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q2Q6yJygbHr4Zzn8DwsSexLuA37VlJWO80Y9Cecq2Tc=;
        b=oW+yu9hHhPPAtJIWbkvWeuYxQThX1+vhtQv79A489SaE2Yhxne648GSVK5xRCxicNK
         22FUqPGYbY1ZAqRsFBzk/LL1alKdfCZ4c8oxrppdqPUNp55hSizMKhaP9BnsksQuSenT
         5LsB5Yyy6hthCih97mqwOi5QpWtmy6PJOPKz0I5QtfNMbwvjDUkEJ+eEG4LNcM36zsfk
         JK08Tp9CHFfNp39JnbWdsTESyZ9nd8Xp33DGCDvHBAraAjW6cFluRPplEjzMpVTu+RM+
         Blaja0pPfYoONkhfVkYdde4hQz2cvTYxrgVrGuHd36IgZ02tiS8bOVAv2Qkj8Mmof28c
         RwkQ==
X-Gm-Message-State: ANoB5pm6C8pUFT0AdydgAA0Z9bmlM3MqenIqHmEcp4LdYeN9d9FonL5r
	aG+uUPovWXtRPzsC2ClK7F6rRyeNcBPyefqA
X-Google-Smtp-Source: AA0mqf4DIb09ZJ8bJgz2g4Qcxd7TZcE+jJufPZvq/psp84nQCJJJjtYxQO79PXCgKWFWpUDQxfriCw==
X-Received: by 2002:a05:6000:137b:b0:236:59ab:cf32 with SMTP id q27-20020a056000137b00b0023659abcf32mr10145821wrz.629.1668506861535;
        Tue, 15 Nov 2022 02:07:41 -0800 (PST)
Received: from arch.localdomain ([119.160.120.210])
        by smtp.gmail.com with ESMTPSA id m16-20020a05600c3b1000b003a3170a7af9sm16577154wms.4.2022.11.15.02.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 02:07:41 -0800 (PST)
From: Mushahid Hussain <mushi.shar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org,
	Mushahid Hussain <mushi.shar@gmail.com>
Subject: [PATCHv2 0/2] default driver params and phonetic spelling while arrowing
Date: Tue, 15 Nov 2022 15:05:28 +0500
Message-Id: <20221115100530.91174-1-mushi.shar@gmail.com>
X-Mailer: git-send-email 2.38.1
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

This patch series allows specifying default driver parameters for speakup
as module parameters, and includes an additional parameter, cur_phonetic.

cur_phonetic is necessary to introduce an enhancement which allows
speakup to speak letters phonetically, when a user arrows a
word letter by letter. This functionality can be enabled
by setting /sys/speakup/cur_phonetic to 1.

When cur_phonetic is set to 1, speakup will speak letters as
phonetically when arrowing over a word.

This does not affect when a user is typing but only affects when a user
is arrowing over a word.

When cur_phonetic is set to 0, speakup will work as before, it will
speak letters normally when arrowing over them.

When a user does not set /sys/speakup/cur_phonetic to any value, the
default value is 0.

Only accepted values for /sys/speakup/cur_phonetic are 1 and 0.


1. It indexes spk_vars by an enum and allows specifying spk_vars
as module parameters.

2. It introduces a new variable cur_phonetic in spk_vars,
allows specifying it as a module parameter as well. It also makes
cur_phonetic accessible in sysfs at /sys/speakup/ as all other
spk_vars. cur_phonetic can be used by users to enable phonetic
annuncement of letters when navigated by the cursor.
 It also documents the cur_phonetic in
/Documentation/ABI/stable/sysfs-driver-speakup.



since V1:
	- removed unnecessary lines


Mushahid Hussain (2):
  accessibility: speakup: Specify spk_vars among module parameters
  accessibility: speakup: phonetic spelling while arrowing letter by
    letter

 Documentation/ABI/stable/sysfs-driver-speakup |  9 +++
 drivers/accessibility/speakup/kobjects.c      |  3 +
 drivers/accessibility/speakup/main.c          | 72 +++++++++++++++----
 drivers/accessibility/speakup/speakup.h       |  1 +
 drivers/accessibility/speakup/spk_types.h     |  2 +-
 drivers/accessibility/speakup/varhandlers.c   |  1 +
 6 files changed, 72 insertions(+), 16 deletions(-)

--
2.38.1

