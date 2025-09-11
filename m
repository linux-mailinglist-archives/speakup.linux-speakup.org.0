Return-Path: <speakup+bounces-1327-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 576D8B52E64
	for <lists+speakup@lfdr.de>; Thu, 11 Sep 2025 12:31:31 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=blinksoft-com.20230601.gappssmtp.com header.i=@blinksoft-com.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=bufYgyQj;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4A54C382AAB; Thu, 11 Sep 2025 06:31:30 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2992338266E
	for <lists+speakup@lfdr.de>; Thu, 11 Sep 2025 06:31:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C72AD382660; Thu, 11 Sep 2025 06:31:22 -0400 (EDT)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 71ADC382121
	for <speakup@linux-speakup.org>; Thu, 11 Sep 2025 06:31:22 -0400 (EDT)
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-4b5f6ae99c3so6731231cf.1
        for <speakup@linux-speakup.org>; Thu, 11 Sep 2025 03:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blinksoft-com.20230601.gappssmtp.com; s=20230601; t=1757586620; x=1758191420; darn=linux-speakup.org;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=3u/vZaM1K/bMmK7DwvdgHf4v6qZJKsfKA11BAKSksb0=;
        b=bufYgyQjNjVHEVAIdSWMhw+nHXpSpowD39EQ2Lfz5E2VgqaC52hFdM69LMhVoKjSUU
         +0EO0+6u2DiKurnV1yXHPHzdrpZsZXObI+aMJfKa2dwnR2uTGbWDnCLCkm7hv10Gp16j
         zhMcDUewxWVy69adO+Yg44/+E7b/khMx/wyRPQ26FTTt5JDZs8XoKIxD1GClhxG3XODD
         M7FzJvscW6ZnqY1g+36slvuVbCvMc0E4FfnzY55KPtEf0gEvZ0NglMMevNy69HgXc5r5
         ia/Vj/5eox6gWQcJuG8aH6aaYNk+aW/6EGJPf09qodNUtkY6j03GqvBDFb1Qz2y8vzXG
         qfkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757586620; x=1758191420;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3u/vZaM1K/bMmK7DwvdgHf4v6qZJKsfKA11BAKSksb0=;
        b=Up8ELHDCqkgHS8O2491eLbP5s6HpCXFuXYOLIBPu2+lOtMDq8uE4gXXRuHWDhSHAa/
         7eNhQtBmpgW2xQWNi0T7zM0sCe3MVb9UWBmRn4J67V9AR64r6jw2WFx2mFArCpcRhELD
         BX9bqK/dIL9hZQOg4yiW0BTTSiSEbF8+DXzrZXlay0i+cBbndQuwkLUxGD6DKzDdROpW
         o1HtP+GFqmV5U0bFNeogdAckW19fSFMoV/Wy8fEnPZw+JfznF12zLWs8juBbiHXLQYQP
         5P6eEDvEGmuHwwTkiLxY2KHM2hNbKDgZ3on9O6+FJrc3ryw73UU+5BbbGiQQTajyGOzf
         S59Q==
X-Gm-Message-State: AOJu0YxHfoyE9md0+hoWFf49e4RaBY7X7fN9qrfrlExiM2R3e0ATiFX6
	yuDwrSXgY0Dwx6mlAJcDDw9exOp9hQYEry1CaiiLLITamdvkZWHHA/8EpNnwowPbLofymwU+M1j
	vp7s5o1E=
X-Gm-Gg: ASbGncvUgy3q1hv/7BwHfP7Xa9Q3940Oa430EtMLfsa9yGks1muC5PTFm4f58K4Mqxt
	khTRV7Nd06xaFP99UAeMmqcNkWGQb4i5o4M0K8DUssgzeqG3G308DbMB0QJCHxoULg0aunUL7fl
	/Yo+YcLsHo+Z0JbR68Ob6aJOjpfWbJftolNdA7Ec65eSBQ6g3tD7Rg6TddFVELz7ORG7qbRkorb
	WEtJFNWBuaRu6GINM1tn5vtluOz8LfnrdfOXdO/RbfFKtf085vfKCj50cbZuQcFaBOuv8x0xJt1
	Wrn+MQIEW7DacMUrIDsPE7coCiWPZIWXpu8UNn+ML71IRowIzqVfTDPAV+Kuq3ziJoTU5Cwulac
	y2AV3/4VRtiNeOa2ZJCEsL8zd9lmSuOHcz74UYm+JmRP81d2GP3UKOGDURSTItYgEhRcKMg==
X-Google-Smtp-Source: AGHT+IHH7H+7YUoNBNXsRX96K1azyn2W0gDP4UbaHOyt9McAc5usOtBcI+LVMA8GMe8uQkktNTk7fw==
X-Received: by 2002:a05:622a:647:b0:4b3:cbc:18b9 with SMTP id d75a77b69052e-4b5f83c890dmr203945051cf.33.1757586620119;
        Thu, 11 Sep 2025 03:30:20 -0700 (PDT)
Received: from Hatchi (syn-096-029-133-244.res.spectrum.com. [96.29.133.244])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-820cef10761sm78712485a.58.2025.09.11.03.30.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Sep 2025 03:30:19 -0700 (PDT)
From: <kperry@blinksoft.com>
To: "'Willem van der Walt'" <wvdwalt@csir.co.za>
Cc: "'Speakup is a screen review system for Linux.'" <speakup@linux-speakup.org>
References: <f2b8f3d0-eb0d-8426-09e2-1afce33c713c@csir.co.za>
In-Reply-To: <f2b8f3d0-eb0d-8426-09e2-1afce33c713c@csir.co.za>
Subject: RE: "your browser is not supported anymore" both lynx and elinks, what now?
Date: Thu, 11 Sep 2025 06:30:18 -0400
Message-ID: <001e01dc2307$12695b30$373c1190$@blinksoft.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHbffA6EX3JDgiuMNaP5/Dj7zY5tbSPEfdQ
Content-Language: en-us
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

You may want to look at the browsers that run in emacs. Emacspeak brings
access to the w3 browser and I think it is still up-to-date.  Iam not
currently using it but I might set it up and see today.

Ken

-----Original Message-----
From: Willem van der Walt <wvdwalt@csir.co.za> 
Sent: Thursday, September 11, 2025 4:12 AM
Cc: Speakup is a screen review system for Linux. <speakup@linux-speakup.org>
Subject: "your browser is not supported anymore" both lynx and elinks, what
now?

Good day list,
When trying to do a google search this morning, I got the above message.
  My Orca setup is currently broken, so I would like to know if there is a
console browser/searchengine combination that will still work?
TIA, Willem





