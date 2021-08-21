Return-Path: <speakup+bounces-268-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3B7923F3ABA
	for <lists+speakup@lfdr.de>; Sat, 21 Aug 2021 15:13:45 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8F17C380F9A; Sat, 21 Aug 2021 09:13:39 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=oyhh/h5+;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7B0F5380B2E
	for <lists+speakup@lfdr.de>; Sat, 21 Aug 2021 09:13:39 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B879E380BCA; Sat, 21 Aug 2021 09:13:33 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 93430380A1C
	for <speakup@linux-speakup.org>; Sat, 21 Aug 2021 09:13:33 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id E266CFA268;
	Sat, 21 Aug 2021 09:13:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1629551612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZDhSOO2GQtbGN8dRhyocA5VVE3MszhDRjQONiLBOTUg=;
	b=oyhh/h5+KnjeGRHLN6Y2YvBa6jXYpWEVM++QGMVBAOCudLpNQvnMPIuK3+IWdymPZE5Juq
	Q3h+Qe8VKfsaSCP2n2veyTjv+AY4d7YBa9zbUdb9pY4kdHaDoeP/2L2iPZnspXxyUadDiZ
	npgK1jJfNtfixV0lRmM5OfalwY0xBIg=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net E266CFA268
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 17LDDWnP038159;
	Sat, 21 Aug 2021 09:13:32 -0400
Date: Sat, 21 Aug 2021 09:13:32 -0400
From: Janina Sajka <janina@rednote.net>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: Alexander Epaneshnikov <aarnaarn2@gmail.com>,
        Kelly Prescott <kprescott@coolip.net>, speakup@linux-speakup.org,
        Alexander Epaneshnikov <alex19ep@archlinux.org>
Subject: Re: Archlinux Speakup problems after alsa package upgrade
Message-ID: <YSD7/HB3nUVdYUVq@rednote.net>
References: <YMdZA0DL4BgCAShe@rednote.net>
 <6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
 <YNMr0Pathc/mqx1L@rednote.net>
 <20210819205617.l76b7fxume3lrf67@begin>
 <20210820152606.r5nznst2t5532th3@alex-pc>
 <20210820155212.rlj4addvh726cgbb@begin>
 <YSDtfiv5yYy/FfQq@rednote.net>
 <20210821121814.vbyw4vxysowqf7as@begin>
 <YSD2SHLJ+hWMEj7Z@rednote.net>
 <20210821125234.onaxd4ccrrh5oiyq@begin>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210821125234.onaxd4ccrrh5oiyq@begin>
X-Operating-System: Linux opera.rednote.net 5.13.12-200.fc34.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Running as root outputs nothing, but the permissions on /dev/softsynth
are the same as with older versions of espeakup, alsa-lib, etc:

crw------- 1 root root 10, 122 Aug 21 08:29 /dev/softsynth


That's the same as on my other Linux box where the following works just
fine:

janina@concerto 09:11:08 ~$yay -Q alsa-lib pcaudiolib espeak-ng espeakup
alsa-lib 1.2.4-3
pcaudiolib 1.2-2
espeak-ng 1.50-4
espeakup 0.80-3


I believe I have the same permissions:

root@concerto 09:12:26 dev#ls -l /dev/softsynth
crw------- 1 root root 10, 122 Aug 21 08:29 /dev/softsynth

Samuel Thibault writes:
> Janina Sajka, le sam. 21 août 2021 08:49:12 -0400, a ecrit:
> > espeakup -d gives me:
> > 
> > Unable to open the softsynth device: Permission denied
> 
> It needs to be run as root, or change the permissions on /dev/softsynth
> to be able to run it as non-root.
> 
> Samuel

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa


