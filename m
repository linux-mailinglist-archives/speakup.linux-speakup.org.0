Return-Path: <speakup+bounces-377-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 78B694D1522
	for <lists+speakup@lfdr.de>; Tue,  8 Mar 2022 11:50:23 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=RTyocKXu;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E3F60380E36; Tue,  8 Mar 2022 05:50:22 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C970B380C72
	for <lists+speakup@lfdr.de>; Tue,  8 Mar 2022 05:50:22 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A8EFB380D08; Tue,  8 Mar 2022 05:50:16 -0500 (EST)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 24164380ABE
	for <speakup@linux-speakup.org>; Tue,  8 Mar 2022 05:50:16 -0500 (EST)
Received: by mail-ej1-f49.google.com with SMTP id bg10so38286234ejb.4
        for <speakup@linux-speakup.org>; Tue, 08 Mar 2022 02:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vY5N63IdhzRenmL1qMPict+eO+8VRP5bqHRj+/G9j0o=;
        b=RTyocKXuXVauf7EBkLzf8//J02IUgR0Jdp4TRVRKeenypRcpaqZQsQtA1zBfsa+P6C
         Lp68aIIqp3peYvpIcPG0myRZY9lB2b6GKXE2m4IDNUhhbySrC5GqtVX8QO3+16D9Z6n2
         emvhNh285nQ8m72yHNUnQTS5SPXp8A3uZ470X6x3VYQd46QKXlv64Lk5SPmODTbNu6zr
         aTrsQfVr28COX9KpXFaMgQTw79+UMcrjE56b2HyHAgeHfUrJ21AxGG18jex9UHbvlINo
         4fw1dzJwJ9Kz4zi8AYPoNQBNSzyHPfKus+Zrtjuhf6qgGtL/66o0hBC0Km6pdfuNELZh
         71bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vY5N63IdhzRenmL1qMPict+eO+8VRP5bqHRj+/G9j0o=;
        b=jr5MihocIPqL4X5t2R2IEtIs+849dPz2mMUPFrkDBVD3ws1t618RpmnarJb1Rs6wsA
         WKBuOb4kAr+k6vHUH5zRK0as311dtPfcZxhpMl+bGFO69aDluHtqQZ8mZUL2zRIFBWf6
         HVmcvLkRM3qhKBA9GXTE9/0/pFX9raE3w7FjMbdQ1SB0bE3mY94o8uign08GELDhVzvU
         Dy6mhlZYkcHuyONZxT6lvF2w81WoX8ov50KXvInwQV1DWz2LEv55YHd4YK8MyFzsVyzn
         lcF6nAFKZ4D9RyWASgMr4vN/tsq/Trvkktow2NAJs+5WYdfxI/AvzXeTS5ieNZ6DeSsA
         X2mQ==
X-Gm-Message-State: AOAM533hvAezyN0JkqUkaJ5TBTZqpvxa7lqaRhtTu9mBN0DRS8dLBmhF
	wO+RO79sNN30dOSYy5YVRuU=
X-Google-Smtp-Source: ABdhPJyreqwFJ8epjwAxlkfN5IIcsR4Rw9N7CQo9a6/8e5afHAdikG5gslaqO/qwU2y8wTYqci94Tw==
X-Received: by 2002:a17:907:3f0d:b0:6da:8413:9eb8 with SMTP id hq13-20020a1709073f0d00b006da84139eb8mr12802224ejc.280.1646736552320;
        Tue, 08 Mar 2022 02:49:12 -0800 (PST)
Received: from localhost ([91.77.167.245])
        by smtp.gmail.com with ESMTPSA id qp3-20020a170907206300b006da96b87e9csm5400588ejb.181.2022.03.08.02.49.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Mar 2022 02:49:11 -0800 (PST)
Date: Tue, 8 Mar 2022 13:49:09 +0300
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
To: criss <crisspro@hotmail.com>
Cc: speakup@linux-speakup.org
Subject: Re: I can't change languaje
Message-ID: <20220308104909.33n34sw7ytyaai43@alex-pc>
References: <DM6PR04MB6268EB668254EF3EE9FB7127DA089@DM6PR04MB6268.namprd04.prod.outlook.com>
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
In-Reply-To: <DM6PR04MB6268EB668254EF3EE9FB7127DA089@DM6PR04MB6268.namprd04.prod.outlook.com>
User-Agent: NeoMutt/20211029
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Mon, Mar 07, 2022 at 08:50:38PM -0300, criss wrote:
> Hello every body.
> 
> I am installing archlinux, so when run espeakup I want to change the
> language, I use this:
> 
> espeakup --default-voice=es
> 
> But I don't get result because espeakup continue in english. how can i
> solved?

hello. have you read arch install with accessibility wiki? [1]

you need to edit systemd unit of espeakup and restart the service. [2]

> Thank you.

[1] https://wiki.archlinux.org/title/Install_Arch_Linux_with_accessibility_options
[2] https://wiki.archlinux.org/title/Install_Arch_Linux_with_accessibility_options#Change_speech_language

-- 
Sincerely, Alexander

