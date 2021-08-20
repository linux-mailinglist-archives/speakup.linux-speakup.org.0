Return-Path: <speakup+bounces-263-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 695133F2F68
	for <lists+speakup@lfdr.de>; Fri, 20 Aug 2021 17:27:19 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3C67C380E9F; Fri, 20 Aug 2021 11:27:18 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=oGrzkBlr;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 280CD380A90
	for <lists+speakup@lfdr.de>; Fri, 20 Aug 2021 11:27:18 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 32EE2380B3C; Fri, 20 Aug 2021 11:27:12 -0400 (EDT)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0F355380994
	for <speakup@linux-speakup.org>; Fri, 20 Aug 2021 11:27:12 -0400 (EDT)
Received: by mail-lf1-f52.google.com with SMTP id u22so21289900lfq.13
        for <speakup@linux-speakup.org>; Fri, 20 Aug 2021 08:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=byW45E9B2guAOzoyIKGsCMCbX6WeNI5FoDzdJFK8IFM=;
        b=oGrzkBlrwDUL8TyPZe9vHTEvUEMmOBMsoXqaOrua2CMDXjptEKKsSamHofa7ZpIfb7
         Ep0j4bI/kXNF44VwL6i6dkzDfVmmJHHzW7QFkmWb2rTyJjIF4Nu6JjRPX2NnAmEOACEV
         Alu008b9vh5iQegmR9SR8VaqPc2m+kSMHW3WwTkdiJdVE35K1uOwLtQMtcUPbUjsKhEo
         ZcPlWzP9oobnnDO4jChA/SU+zzxunG1txwiutRlD8Mvo5ykgZgAyrDL0Xi0xUAVkab4P
         Dvhc71v1OwpZLpTg66ZwaSKDFf36jAU0Ql8jHhlpacoWBs+tyMGSMSU8DZf7X+iOBbt1
         ykMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=byW45E9B2guAOzoyIKGsCMCbX6WeNI5FoDzdJFK8IFM=;
        b=LZZCP1sJmTWVGgSMyrVRMda/npZ0A25ZrtJzDv+qltL6UkoqrHi5PYmPRrS6O3aeBz
         pvz1aT89KxYz1NO3pb44bw536gFcLg2JHa4pHNBHkqyXcusUiW4JkCPympEE+SogSzYv
         f/oHkOVfvWnU4cTzbPczzgQeKnOiQl1lNtSwGbb5JwpfRaUB4nHtrVKEXdV2iSVwfCTk
         7MG8qCITXBRDQEpfFpfpJqxLkEx/i0QCBCXkdJYi9i7zvUlcrdnaraiDPADiRnkR9i2C
         ZbBXcN0RxZmBCGU5EkUlEY4mv+NXcitHBMzpK0FMfTMwi8Qzpm6k7zg31KC/RhxV3ZxT
         DrEA==
X-Gm-Message-State: AOAM533BNFTwMwsXOhwUsaNUM6upLN9gzwq+K5BUCYo5x1jwYleqgk05
	ULzBZFZoqQeQddly+2qkTUU=
X-Google-Smtp-Source: ABdhPJzlo7VnnML3jrHD2GthMtZWCNG+lhT5hqpQ+sTG43FXNgcsRKCUQCeX9Crg2/3eqR0qDBuqOw==
X-Received: by 2002:a05:6512:3c85:: with SMTP id h5mr3260887lfv.59.1629473168044;
        Fri, 20 Aug 2021 08:26:08 -0700 (PDT)
Received: from localhost ([91.77.167.245])
        by smtp.gmail.com with ESMTPSA id e18sm542206ljo.105.2021.08.20.08.26.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 08:26:07 -0700 (PDT)
Date: Fri, 20 Aug 2021 18:26:06 +0300
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: Janina Sajka <janina@rednote.net>,
	Kelly Prescott <kprescott@coolip.net>, speakup@linux-speakup.org,
	Alexander Epaneshnikov <alex19ep@archlinux.org>
Subject: Re: Archlinux Speakup problems after alsa package upgrade
Message-ID: <20210820152606.r5nznst2t5532th3@alex-pc>
References: <alpine.LNX.2.22.411.2106082204570.1927@io.coolip.net>
 <20210609072927.3igbp7jvopq3c6f7@begin>
 <alpine.LNX.2.22.411.2106090608590.13304@io.coolip.net>
 <20210609110828.kpo76f2zmbixjran@begin>
 <alpine.LNX.2.22.411.2106091332550.28397@whatsup.nkparts.com>
 <YMdZA0DL4BgCAShe@rednote.net>
 <6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
 <YNMr0Pathc/mqx1L@rednote.net>
 <20210819205617.l76b7fxume3lrf67@begin>
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
In-Reply-To: <20210819205617.l76b7fxume3lrf67@begin>
User-Agent: NeoMutt/20210205
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Thu, Aug 19, 2021 at 10:56:17PM +0200, Samuel Thibault wrote:
> Hello,
>
> As an additional datapoint: in Debian the upgrade of alsa-lib to 1.2.5.1
> disturbs the espeakup output. Not completely broken, but distorted
> enough that you'll rather reboot to get back normal speech. I could
> capture some warnings, reported on
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=992537
> Hopefully they will have ideas.

don't know if it's helpful info. but on arch linux espeakup 0.90 works fine
with: alsa-lib 1.2.5.1-3, pcaudiolib 1.2-2  and espeak-ng 1.50-4

maybe espeakup or espeak-ng should be rebuilt?

> Samuel

--
Sincerely, Alexander

