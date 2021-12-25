Return-Path: <speakup+bounces-342-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2E04147F3DF
	for <lists+speakup@lfdr.de>; Sat, 25 Dec 2021 17:40:58 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=wi+r05Cg;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 00200381170; Sat, 25 Dec 2021 11:40:56 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E01DE380B2C
	for <lists+speakup@lfdr.de>; Sat, 25 Dec 2021 11:40:56 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1E4C2380B33; Sat, 25 Dec 2021 11:40:51 -0500 (EST)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 86446380995
	for <speakup@linux-speakup.org>; Sat, 25 Dec 2021 11:40:50 -0500 (EST)
Received: from [10.0.2.1] (unknown [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 34BBB3204D
	for <speakup@linux-speakup.org>; Sat, 25 Dec 2021 16:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1640450449;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eHd3t7b1aWqmS4RxCjiIhOMJXATIucoMaxEm/hQj/KA=;
	b=wi+r05Cgp209anlSZIJ6RMG+lWEXAsOpNsZhxfJrS9g/EiC0qVS5p1n50swh906GEj/akT
	29S8n4iW7/q2HgB4lWl9yVv3aRe6tA9cZdwR5pCEYaVVsfVThuA/KYAzdg+SW5W2n1618q
	DqDsTjXEOwZSD4bUK4AYwuNeu3U4ZD4D+3iEjWl/e9f50rAjQELjGrBzjKrEeTK3R2z5zk
	nBx+1MJUmTeDcMSsVibyul/X5Fz7X+osHZnyX4OHgOCYxULT9htsjCG+bdjC2O6ONoLr/f
	HCbVCKreuTAajM5A7Foa40fzPsXysRFDdMDFweCwckqRUCNP+tW5iRq134MaEg==
Message-ID: <3cefe3e6-f95a-ffe9-5995-543d6e4357db@jasonjgw.net>
Date: Sat, 25 Dec 2021 11:40:48 -0500
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: Now Fixed: Archlinux Speakup problems after alsa package upgrade
Content-Language: en-US
To: speakup@linux-speakup.org
References: <alpine.LNX.2.22.411.2106082204570.1927@io.coolip.net>
 <20210609072927.3igbp7jvopq3c6f7@begin>
 <alpine.LNX.2.22.411.2106090608590.13304@io.coolip.net>
 <20210609110828.kpo76f2zmbixjran@begin>
 <alpine.LNX.2.22.411.2106091332550.28397@whatsup.nkparts.com>
 <YMdZA0DL4BgCAShe@rednote.net>
 <6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
 <YNMr0Pathc/mqx1L@rednote.net> <YcNUgwlCFtiAmY3Q@rednote.net>
From: Jason White <jason@jasonjgw.net>
In-Reply-To: <YcNUgwlCFtiAmY3Q@rednote.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


On 22/12/21 11:38, Janina Sajka wrote:
> What was the fix?
>
> I introduced a file:
>
> /etc/asound.conf

Interestingly, I don't have that file on my Arch Linux system, but there 
are various configuration files under /etc/alsa/conf.d, apparently 
placed there by Pipewire packages.



