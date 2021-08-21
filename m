Return-Path: <speakup+bounces-266-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A12C53F3AB1
	for <lists+speakup@lfdr.de>; Sat, 21 Aug 2021 14:49:23 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3C7CF380F66; Sat, 21 Aug 2021 08:49:23 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=AXIIU84U;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 280CA3809B9
	for <lists+speakup@lfdr.de>; Sat, 21 Aug 2021 08:49:23 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 453A8380A1C; Sat, 21 Aug 2021 08:49:17 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 355373809B9
	for <speakup@linux-speakup.org>; Sat, 21 Aug 2021 08:49:17 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 11812FA268;
	Sat, 21 Aug 2021 08:49:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1629550153;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dZwdluxot82jvNdN+XLvuYa1tPei3euafy08maDSu6c=;
	b=AXIIU84UCB5S4pN/t7nThi81kikwY8kMhxBSSzWtzRfdobeAcduCYQTn6gGckS9+TRb7t3
	IKQw82f421ykdmWfi1ryy7d1H7zBDcZWtryTsS0SOJcPDJW9VcE9OF+GDqbu6P+VKptYr9
	ydxxn+6RiMkIIE+1aSRyq8tg5UN+/Cc=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 11812FA268
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 17LCnC3J036333;
	Sat, 21 Aug 2021 08:49:12 -0400
Date: Sat, 21 Aug 2021 08:49:12 -0400
From: Janina Sajka <janina@rednote.net>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: Alexander Epaneshnikov <aarnaarn2@gmail.com>,
        Kelly Prescott <kprescott@coolip.net>, speakup@linux-speakup.org,
        Alexander Epaneshnikov <alex19ep@archlinux.org>
Subject: Re: Archlinux Speakup problems after alsa package upgrade
Message-ID: <YSD2SHLJ+hWMEj7Z@rednote.net>
References: <20210609110828.kpo76f2zmbixjran@begin>
 <alpine.LNX.2.22.411.2106091332550.28397@whatsup.nkparts.com>
 <YMdZA0DL4BgCAShe@rednote.net>
 <6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
 <YNMr0Pathc/mqx1L@rednote.net>
 <20210819205617.l76b7fxume3lrf67@begin>
 <20210820152606.r5nznst2t5532th3@alex-pc>
 <20210820155212.rlj4addvh726cgbb@begin>
 <YSDtfiv5yYy/FfQq@rednote.net>
 <20210821121814.vbyw4vxysowqf7as@begin>
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
In-Reply-To: <20210821121814.vbyw4vxysowqf7as@begin>
X-Operating-System: Linux opera.rednote.net 5.13.12-200.fc34.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi, Samuel:

espeakup -d gives me:

Unable to open the softsynth device: Permission denied

Best,

Janina

Samuel Thibault writes:
> Janina Sajka, le sam. 21 août 2021 08:11:42 -0400, a ecrit:
> > I have confirmed my audio devices can aplay without problems, but no joy
> > from espeakup.
> 
> Would you be able to run espeakup by hand with the -d flag? That'll dump
> the alsa errors and whatnot.
> 
> Samuel

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa


