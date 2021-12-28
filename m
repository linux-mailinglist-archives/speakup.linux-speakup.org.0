Return-Path: <speakup+bounces-346-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 361C4480C35
	for <lists+speakup@lfdr.de>; Tue, 28 Dec 2021 18:58:13 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=JD2rL2tK;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E6DFD381185; Tue, 28 Dec 2021 12:58:11 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D2C94380F4B
	for <lists+speakup@lfdr.de>; Tue, 28 Dec 2021 12:58:11 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EB061381151; Tue, 28 Dec 2021 12:58:05 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4BA77380EA8
	for <speakup@linux-speakup.org>; Tue, 28 Dec 2021 12:58:05 -0500 (EST)
Received: from ici.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 33218A3778
	for <speakup@linux-speakup.org>; Tue, 28 Dec 2021 17:57:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1640710672; bh=WIeOnGcB/igpCcwrZgDuVvxJtrOpn6yUqQjaLvHZCTU=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=JD2rL2tKy2varYKSchrOSXUTFMJWkd8IExXaTxEUp/ira8UVxQegzviXnRfcyOMcK
	 d8ldMnNQ170vkbPAgLPsV3PB26kAoRdBSIDxHW1BT2W0SAN+Iil+XAalyY59ukPWcc
	 CLL1Lzz1pM8v5QJqHsinS6+WY7yZB7r+aX1SJC5rHSJKH7fA22zcCVfpmHGaIhnpue
	 ccFgKO2rK/+hf0an3NK88QMWXKUha6Riqg3QMU2zapgeApA++AOfqK1NNi8+DR24s8
	 PSKPcF8sBf/Bzbx8teDBLENDlAcg0dDuBKRb9aR4U33POn3PL7tL/lbo/GLIjcGY6+
	 7zsyplPZ0vAbQ==
Subject: Re: Now Fixed: Archlinux Speakup problems after alsa package upgrade
To: speakup@linux-speakup.org
References: <alpine.LNX.2.22.411.2106082204570.1927@io.coolip.net>
 <20210609072927.3igbp7jvopq3c6f7@begin>
 <alpine.LNX.2.22.411.2106090608590.13304@io.coolip.net>
 <20210609110828.kpo76f2zmbixjran@begin>
 <alpine.LNX.2.22.411.2106091332550.28397@whatsup.nkparts.com>
 <YMdZA0DL4BgCAShe@rednote.net>
 <6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
 <YNMr0Pathc/mqx1L@rednote.net> <YcNUgwlCFtiAmY3Q@rednote.net>
 <3cefe3e6-f95a-ffe9-5995-543d6e4357db@jasonjgw.net>
 <Ycs60ClBq1jcVDuF@rednote.net>
From: Didier Spaier <didier@slint.fr>
Message-ID: <055e3d2d-0653-3edc-4879-484816734d00@slint.fr>
Date: Tue, 28 Dec 2021 18:57:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
In-Reply-To: <Ycs60ClBq1jcVDuF@rednote.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Janina and all,

On 28/12/2021 17:26, Janina Sajka wrote:
> Very relevant observation, Jason.
> Indeed, that file I refer to seems to have been deleted by one upgrade
> or another over the past week--I've run several.
> 
> So, not sure what's going on under the hood. All I can say is that
> creating that file, for whatever reason, caused Espeakup to work on the
> System76 Meerkat system.
> 
> On my older, 2012 era custom built Linux board, Espeakup-0.80 is still
> required, but it now works with the latest alsa. No matter what I try,
> Espeakup-0.90 won't work, even though the espeak command speaks using
> espeak-ng. So, I downgraded to the latest Espeak, dated on Arch from mid
> December, and downgraded Espeakup accordingly.
> 
> Apparently there must be some kind of reason why Espeakup can't be
> agnostic between espeak and espeak-ng?

espeakup is linked against the shared library installed at time of building it.

Here:
dance[~]$ ldd /usr/bin/espeakup | grep libespeak
	libespeak-ng.so.1 => /usr/lib64/libespeak-ng.so.1 (0x00007f290df83000)

My guess is you will find libespeak.so.1 instead running the same command.

So you need to rebuild espeakup-0.90 after having removed espeak and installed
espeak-ng only.

It could be possible to just make a symlink instead, but that would ugly. Better
just get read of espeak.

Cheers,
Didier



