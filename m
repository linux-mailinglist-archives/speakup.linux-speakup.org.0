Return-Path: <speakup+bounces-247-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1F9593CE8FC
	for <lists+speakup@lfdr.de>; Mon, 19 Jul 2021 19:49:17 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A6F0D380B57; Mon, 19 Jul 2021 13:49:16 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=qM4j/V+w;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 94665380995
	for <lists+speakup@lfdr.de>; Mon, 19 Jul 2021 13:49:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C6845380B1B; Mon, 19 Jul 2021 13:49:10 -0400 (EDT)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A2DAB38098B
	for <speakup@linux-speakup.org>; Mon, 19 Jul 2021 13:49:10 -0400 (EDT)
Received: by mail-lj1-f174.google.com with SMTP id d17so7398805ljq.12
        for <speakup@linux-speakup.org>; Mon, 19 Jul 2021 10:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=DKM8GpgL2bCKd1NOU/Iwq5YZM8ytccRS0z7/Uq3cZmg=;
        b=qM4j/V+wBBv7j+sXg01cILbUQrNxtMmbIZ2w5n4Hk6Wg5K/pu7cWdvBY5T0/YjTGfI
         G2180uvQrb/09FjQOVlbU3o8E3o8tdOIAtM80ZnIYuy1D8VvhbUdMKwbHGpc7XktjysF
         WKLFrPWa3/d5qPETEmLW17Xo5yp2J0TkEH6lz02GrB/IoOZBsW+4Lhy6LsSFaA2fFJnY
         Rk+HHKH+vilao3l2j25cCZ7xuRX6o34lo5SQmJInC8vhzk2fNsxdG70AbKiABCO64Vv7
         vIdYJTHrLJHNPMZyjp305jgZUPn+kKMSEqOkCwaQcUOMJlGxtxQyT9nvzjd9Av2xtCle
         zbBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=DKM8GpgL2bCKd1NOU/Iwq5YZM8ytccRS0z7/Uq3cZmg=;
        b=U/BouYSp3yGyYK8mjDlAoSD3TGuomfuXqpGDXT7MScCgyj4qyVnL2HqERhWV6UqCxZ
         /ZYHzaOXlIiuAnGogihen+fSL+29Ql3d8VECrP5yX5rd2z0qENQOT9ofnd1prlLhua4p
         kDt1B0i2dARpYm5osAJaYLIzr/EwXE8dkKfYsHQzD+/WfZAVdM3Xl9rtgko85ovjJ3NB
         X0HCE+CPwrMiu+X+eA76oBgT8JbeZbCW3qJJZAPRTPYHuzYBVIae3z9lFBIDDBzsMpym
         WyAvYTnrgCN9hRtPbWGxhQE0hXNgc9hC5l+MkDfGljyQXJyA3fsSC2Tajo4nLeAKYa9/
         5b8Q==
X-Gm-Message-State: AOAM532PmP2vx1J7XzFXIHADrJWLpwxSaKPOf7TlITM+CcUW4fF4QLTi
	jOxECCocazb+S//cQD0GJDtxI+csfPeItg==
X-Google-Smtp-Source: ABdhPJzMa7a1EFEfgG6tNRy05rGdTM9zyxfyCt4xkrICAlwzeomRRWeCM8NufcMenWb3i/wFDd634w==
X-Received: by 2002:a2e:9ed4:: with SMTP id h20mr4178349ljk.469.1626716887436;
        Mon, 19 Jul 2021 10:48:07 -0700 (PDT)
Received: from localhost ([91.77.167.245])
        by smtp.gmail.com with ESMTPSA id a21sm1335044lfm.136.2021.07.19.10.48.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jul 2021 10:48:06 -0700 (PDT)
Date: Mon, 19 Jul 2021 20:48:06 +0300
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
To: speakup@linux-speakup.org
Cc: =?utf-8?Q?Micha=C5=82?= Zegan <webczat_200@poczta.onet.pl>
Subject: Re: changing subscription
Message-ID: <20210719174806.2vvhegreuwml2kfr@alex-pc>
References: <7f0bd106-57a2-1719-576a-29a0ecd8e926@poczta.onet.pl>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7f0bd106-57a2-1719-576a-29a0ecd8e926@poczta.onet.pl>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Mon, Jul 19, 2021 at 07:37:24PM +0200, Michał Zegan wrote:
> Hi,
> seems like something is very very broken because when I go to the
> mailman info page of the list and try to remind my password, the whole
> thing crashes.
> My intention was to change subscription to my new email address.
>

As far as I know, at the moment, neither the mailman nor the archives
are working.

