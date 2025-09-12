Return-Path: <speakup+bounces-1347-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 96882B555CF
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 20:06:28 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=crosslink.net header.i=cstrobel@crosslink.net header.a=rsa-sha256 header.s=zoho header.b=ScIxavLS;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CC671382C42; Fri, 12 Sep 2025 14:06:26 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AC668382C3B
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 14:06:26 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 76D10382C01; Fri, 12 Sep 2025 14:06:19 -0400 (EDT)
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com [136.143.188.12])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7727B382BCE
	for <speakup@linux-speakup.org>; Fri, 12 Sep 2025 14:06:18 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; t=1757700374; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=iERLNZhrRsELwYYgvb/beIi58tyCsX/FT9Loykm4KKpogSooyqPM6El+XxT8+Y7QfMc5lhLtseLGs9kMQx0ECfQq1cJq3/3DDxzhDsVTcG/nJI13glvQ13c7GTgtSIG3ErwC81PqsK24MzNq5SF5LRG/yFOhLrgMDHU7v3WYvHs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1757700374; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=HPAW7jGqcsMCz1aJKNA9AcPCDHRQFXda8dosE0pcIhc=; 
	b=VRXBBDXPMJM8Yiku4VNtqswREpk1Vpu8T7F4hjQBPGk4kr+c+RztKagNwSfrsgSQ1d4v4DgedMdjDDzq9R2h40I/9YkRU0me6Ek9yfn1EUL/w4LcpNiQjaNsbMqiG+2nfF5rhu481hE+On7TdS5tWdxNHZHxZdUlJitaeLZ7aw8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=crosslink.net;
	spf=pass  smtp.mailfrom=cstrobel@crosslink.net;
	dmarc=pass header.from=<cstrobel@crosslink.net>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1757700374;
	s=zoho; d=crosslink.net; i=cstrobel@crosslink.net;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To:Cc;
	bh=HPAW7jGqcsMCz1aJKNA9AcPCDHRQFXda8dosE0pcIhc=;
	b=ScIxavLSB+HxKzeK8xKK+PQkVHMN1UrijNRnrg4WLYR0kTkzDpQXrlk7yIxmgnQt
	Dk7y7gkh6U7TJ/b1mGx65niyiI4GrYm+8IDJXdJ2GXd3O4Jo/N81sekSUfhWymjpxDv
	irAMsvJwTJBsrPsq2J30CzchduXAguyRxl9HIiR8=
Received: by mx.zohomail.com with SMTPS id 1757700372879685.449860825558;
	Fri, 12 Sep 2025 11:06:12 -0700 (PDT)
Message-ID: <713cb0dd-df63-487c-8bd2-74f876c497fb@crosslink.net>
Date: Fri, 12 Sep 2025 14:06:11 -0400
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
To: speakup@linux-speakup.org
References: <202509121609.58CG9HoH010921@nfbcal.org>
Content-Language: en-US
From: Chevelle <cstrobel@crosslink.net>
In-Reply-To: <202509121609.58CG9HoH010921@nfbcal.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I didn't do anything special to get Lynx to work.  This is

Lynx Version 2.9.2 (31 May 2024)

Maybe you have a different version, or there are changes in your 
lynx.cfg file.

There is a command line option '-accept-all-cookies' but I didn't use that.

I didn't get prompted by a captia.


On 9/12/25 12:09 PM, Brian Buhrow wrote:
> 	Hello.  I'd like to hear about what you did to get the ddg search
> engine to work with lynx.  As I wrote edarlier this morning, I tried to get
> it going, but couldn't figure out a way to get past the captcha.
>
> -thanks
> -Brian
>

