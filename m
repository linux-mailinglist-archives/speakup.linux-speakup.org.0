Return-Path: <speakup+bounces-333-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 45727457F5F
	for <lists+speakup@lfdr.de>; Sat, 20 Nov 2021 17:08:28 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=dQ7D3Moc;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D492D38114B; Sat, 20 Nov 2021 11:08:27 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C140F380331
	for <lists+speakup@lfdr.de>; Sat, 20 Nov 2021 11:08:27 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D86BD380AC8; Sat, 20 Nov 2021 11:08:21 -0500 (EST)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B0C4D380331
	for <speakup@linux-speakup.org>; Sat, 20 Nov 2021 11:08:21 -0500 (EST)
Received: by mail-ed1-f47.google.com with SMTP id x15so56119155edv.1
        for <speakup@linux-speakup.org>; Sat, 20 Nov 2021 08:08:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8OaQfcyvmmzMF+PbDIss4n3bLyPGHIZdJPYzACg/ojw=;
        b=dQ7D3MocPCpUJmnIkC6vYAZb1T+1Ps+XSugqbJrKJFPUSFAPsGfJTuG9Sq+wTSlidn
         7+Ib3hJUi/pWooZaA/cTc8vH3GbUccMLYRtFsHHoUTU1koa51ouNNmDcw7+feKja+LKy
         zMs4F19h5htlhwWPHgCXkyBsX/BySgzbML4rilUNyNRPFEVVXtP+Bzr5uQMatEUxyEa2
         DgtX5f1BASTbMgK0wCzCd885TMhjgAf6wm7c17uio+49g1IVXIvBMUWfYgIGRODp5Apd
         ZTn8BWeLL5QzwqGTzaWVm1vhJZIBQq/wSGpWfYbj7TH0xDBfOwGVzFRzlNN5av1Zhhv1
         01Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8OaQfcyvmmzMF+PbDIss4n3bLyPGHIZdJPYzACg/ojw=;
        b=okr8B7Y8PcHBGfJc0vC4iQLH/hmjOj16KcfNtO/X1J4JaiW4sP0dC7tA4YT0ombRP2
         yj4bLKn5JcYi3DLFlw7YmSKTN9t/0U4PuxjG63VTfXdZM/NDVRuGaUY3260MmzM+CLSm
         BbI9Za6oXRtwvUqQcsCZWJ4ph+VE3JaEjp5FqZsNubmoHRaS0pvCyJV3UmNUtoNqcvFy
         d27/ej2evJFzJ3PSuMEZpj+Q9sgEoH2Ua03iqJ3Tp4uQTJZpDK82hZFh3a5JUZDUM50J
         Pgo3C9z3rVmYyGeWH5ksqC0eeQ5pTbKkxtKAGiwGqG/TmVjIKFLAeUa8X++X2moz9E9S
         D+Ng==
X-Gm-Message-State: AOAM532PPliS6030HuWiW73pre6LnznW84+joRPsbOVa8gohWksMKrWL
	ZXX8A9LvkPRvqTNN21urvms=
X-Google-Smtp-Source: ABdhPJw1Mo5Bgfp3rRlAUTXjrzS1R/rmCdYnSAUJ9DzUw9KT0Xp8d0eV5WAJOD/HCIoYz9mNpVL0Xw==
X-Received: by 2002:a17:907:7f9e:: with SMTP id qk30mr7794815ejc.313.1637424439877;
        Sat, 20 Nov 2021 08:07:19 -0800 (PST)
Received: from localhost ([91.77.167.245])
        by smtp.gmail.com with ESMTPSA id sg17sm1333308ejc.72.2021.11.20.08.07.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Nov 2021 08:07:19 -0800 (PST)
Date: Sat, 20 Nov 2021 19:07:17 +0300
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
To: Mike Keithley <mlkeithley@comcast.net>
Cc: speakup@linux-speakup.org
Subject: Re: speech/braille live rescue?
Message-ID: <20211120160717.qwmgazxxvxbuqzfa@alex-pc>
References: <228234727.2.1637378390667@localhost>
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
In-Reply-To: <228234727.2.1637378390667@localhost>
User-Agent: NeoMutt/20211029
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Fri, Nov 19, 2021 at 07:20:04PM -0800, Mike Keithley wrote:
> Which linux rescue systems have speech/braille as a live bootable image I can put on a USB stick?

Arch Linux does[1].

[1]: https://wiki.archlinux.org/title/Install_Arch_Linux_with_accessibility_options

--
Sincerely, Alexander

