Return-Path: <speakup+bounces-229-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2661C3C3B71
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 12:03:32 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7F2C3380F59; Sun, 11 Jul 2021 06:03:31 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6CFDD380BB2
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 06:03:31 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C9611380BB2; Sun, 11 Jul 2021 06:03:26 -0400 (EDT)
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 69A6E380A84
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 06:03:26 -0400 (EDT)
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id E88152978D57_EAC1E8B
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 10:03:20 +0000 (GMT)
Received: from pta-gwia2.csir.co.za (pta-gwia2.csir.co.za [146.64.54.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTPS id AAF6D2976359_EAC1E8F
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 10:03:20 +0000 (GMT)
Received: from marge.meraka.csir.co.za ([146.64.28.1])
	by pta-gwia2.csir.co.za with ESMTP (NOT encrypted); Sun, 11 Jul 2021 12:03:13 +0200
Received: from marge.meraka.csir.co.za (localhost [127.0.0.1])
	by marge.meraka.csir.co.za (Postfix) with ESMTP id 2B182471B9;
	Sun, 11 Jul 2021 12:03:13 +0200 (SAST)
X-Virus-Scanned: amavisd-new at meraka.org.za
Received: from marge.meraka.csir.co.za ([127.0.0.1])
	by marge.meraka.csir.co.za (marge.meraka.csir.co.za [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dfs2ojWOkaKt; Sun, 11 Jul 2021 12:03:13 +0200 (SAST)
Received: from willempc.meraka.csir.co.za (unknown [IPv6:2001:4200:7000:3:7a2b:cbff:fe9d:7520])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by marge.meraka.csir.co.za (Postfix) with ESMTPS;
	Sun, 11 Jul 2021 12:03:12 +0200 (SAST)
Received: from [127.0.0.1] (helo=localhost)
	by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
	(envelope-from <wvdwalt@csir.co.za>)
	id 1m2WIq-0008UP-4p; Sun, 11 Jul 2021 12:03:12 +0200
Date: Sun, 11 Jul 2021 12:03:12 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
To: Chime Hart <chime@hubert-humphrey.com>
cc: speakup@linux-speakup.org
Subject: Re: No Interrupt in Voxin Embedded Voices?
In-Reply-To: <a983ac4d-a9aa-a592-8612-275a1d729bfe@hubert-humphrey.com>
Message-ID: <alpine.DEB.2.21.1.2107111202180.32429@willempc.meraka.csir.co.za>
References: <a983ac4d-a9aa-a592-8612-275a1d729bfe@hubert-humphrey.com>
User-Agent: Alpine 2.21.1 (DEB 211 2017-05-04)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-SASI-RCODE: 200
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

By the sound of it, the problem most likely lies with voxinup.

On Sat, 10 Jul 2021, Chime Hart wrote:

> [The e-mail server of the sender could not be verified (SPF Record)]
>
> Wow, after practicly an entire afternoon, we got Alicin-and-Samantha 
> installed in Debian on my laptop. We needed to run "voxinup" instead of 
> speechd-up. Voice sounds quite good, was about to explore dictionary 
> settings, when I realized no keys, controll or anything else will interrupt 
> speech. I must wait til it stops reading or catches up if you type while its 
> reading. I have no idea if there are any places in Speakup where I can fix 
> this, or would I report this through Oralux? Thanks so much in advance
> Chime
>
>

