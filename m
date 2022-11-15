Return-Path: <speakup+bounces-853-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E43406294C5
	for <lists+speakup@lfdr.de>; Tue, 15 Nov 2022 10:48:28 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=FV5VwkZ1;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0AD473829FB; Tue, 15 Nov 2022 04:48:26 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D2C2A3829F0
	for <lists+speakup@lfdr.de>; Tue, 15 Nov 2022 04:48:26 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E8B7438293F; Tue, 15 Nov 2022 04:48:17 -0500 (EST)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B00CC3806CA
	for <speakup@linux-speakup.org>; Tue, 15 Nov 2022 04:48:17 -0500 (EST)
Received: by mail-wm1-f42.google.com with SMTP id p16so9270402wmc.3
        for <speakup@linux-speakup.org>; Tue, 15 Nov 2022 01:48:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=q2Q6yJygbHr4Zzn8DwsSexLuA37VlJWO80Y9Cecq2Tc=;
        b=FV5VwkZ1IfZRjMUjtq/DHYtS/RW1pivwQ8//c0u0hu14GYGpHTmd95HIOr7jRaKbUA
         vNuBOuGLWkLTRqjss8D8OPL5qNy8CkKpr1yBuODs4VuRNo2sr8BOw80VO4OQFBrWkHqG
         qx/ooriXmH8sErwGh1TZzUDB+UM8hiTz6uuUA+4At7AU8nkJPw8QhgwoF/SmFvxO1J40
         bm8ztUfrFGFwHMJrhL9FHxM6C6J0onJLRl/VPFgy5v0mA5oGX2B3bIXwML6ai8aMrG7Y
         2KmdjJCK9DBnV8PyVexQJdB/eQQnljf6itmQDiSjZLc52LJappSwr705q2zgcDJydMrH
         4v2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q2Q6yJygbHr4Zzn8DwsSexLuA37VlJWO80Y9Cecq2Tc=;
        b=jmURD6XcOBuGu0feTgIBrhbR6/PPMq5vsvVlkempLuT+zDlDKDNFJas/aKsKy9z3Pn
         qZg1fou3Qk3HpK5ohYEHksoXQ++IZz6z1qYDlbWzdka2JiWYY7cXzbXN1pvd0n/TAzwk
         JrjQQIbYwem6Pv/V2TYMBOdy8i/CT34tBNvW0mjOctdyLabTEPbbpUETGh5P1Apo2g/3
         mQuxTrjZAh8ap7MolzpFvpzW1w/TSsq0pIlY2vZud1e/gmjRapVjP2th5M1m8hTGBh8l
         W477wQ3bLIzoYAkxIhPVSdYPF/b45NwFRd7tUuYYGF3ufyvQ+Wfo6/VrOjLHPicAWBUy
         4Q7g==
X-Gm-Message-State: ANoB5plaY+Hf/0RX5qtIlKhLpN3XEIsT61P3NMGIfKPNxG73gM1R7u80
	433HqtTCXSzEAjMuLmLNjDM=
X-Google-Smtp-Source: AA0mqf4sOhhZhW9MgZUEy3zA93GOm3U2EjHeIRIUEb91/i2CI3qerYmnzX/KpsAWS+vPtUAE8jgJHw==
X-Received: by 2002:a05:600c:3acc:b0:3cf:a3e0:73e4 with SMTP id d12-20020a05600c3acc00b003cfa3e073e4mr180675wms.21.1668505633519;
        Tue, 15 Nov 2022 01:47:13 -0800 (PST)
Received: from arch.localdomain ([119.160.120.210])
        by smtp.gmail.com with ESMTPSA id p14-20020a5d458e000000b0022eafed36ebsm11904866wrq.73.2022.11.15.01.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 01:47:13 -0800 (PST)
From: Mushahid Hussain <mushi.shar@gmail.com>
To: samuel.thibault@ens-lyon.org
Cc: okash.khawaja@gmail.com,
	speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org,
	Mushahid Hussain <mushi.shar@gmail.com>
Subject: [PATCHv2 0/2] default driver params and phonetic spelling while arrowing
Date: Tue, 15 Nov 2022 14:48:10 +0500
Message-Id: <20221115094812.81632-1-mushi.shar@gmail.com>
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

