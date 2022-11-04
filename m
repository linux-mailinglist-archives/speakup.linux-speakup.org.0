Return-Path: <speakup+bounces-832-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9A44C619EF6
	for <lists+speakup@lfdr.de>; Fri,  4 Nov 2022 18:39:47 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ukr.net header.i=@ukr.net header.a=rsa-sha256 header.s=fsm header.b=mhtOkQtA;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 187C4383BD7; Fri,  4 Nov 2022 13:39:04 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EDBFF383BAB
	for <lists+speakup@lfdr.de>; Fri,  4 Nov 2022 13:39:03 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 21FE7383BBC; Fri,  4 Nov 2022 13:38:55 -0400 (EDT)
Received: from frv151.fwdcdn.com (frv151.fwdcdn.com [212.42.77.151])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 62F87383BAB
	for <speakup@linux-speakup.org>; Fri,  4 Nov 2022 13:38:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=ukr.net;
	s=fsm; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:
	To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=PV7efiumRaAqEGdu8ch278bL2xjxmJ3oWJFkWh1Rlcg=; b=mhtOkQtAmZVecLfoJxueLx9SKU
	ZOR/aVh6X5o6EOlhwkyN59paRAdVpIPgm3bZr2mOHkCmiSd1UwgeVIVfx5EszKZYcK2rlr4dj/Plu
	IfSIs61wSXQ8svXxQCmErFteNabEAr/lgXT6qVdPob9n+vz1IuoYvB5offAp7VMAN54g=;
Received: from public-gprs247008.centertel.pl ([31.60.112.33] helo=[192.168.25.201])
	by frv151.fwdcdn.com with esmtpsa ID 1or0eU-0005KP-HN
	for speakup@linux-speakup.org; Fri, 04 Nov 2022 19:38:46 +0200
Message-ID: <a8a30e0c-e9ed-3a29-35b2-ac61ef80aeeb@ukr.net>
Date: Fri, 4 Nov 2022 18:38:45 +0100
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: Voxin/ibmtts with eSpeakup
To: speakup@linux-speakup.org
References: <05de01d8eefb$e44f16a0$80ffa8c0@Win7VM>
 <Y2LqK66AdnnW9DOg@gregn.net> <20221102233629.ayyi63uakfhkw3dc@begin>
 <072a01d8ef2a$7e7bd820$80ffa8c0@Win7VM>
 <08a901d8efbc$33020490$80ffa8c0@Win7VM> <Y2RSm7hG8WHdiygs@gregn.net>
 <0b4101d8f063$69069fe0$80ffa8c0@Win7VM>
Content-Language: en-US
From: Volodymyr Dorozhinsky <dorozhinsky@ukr.net>
Disposition-Notification-To: Volodymyr Dorozhinsky <dorozhinsky@ukr.net>
In-Reply-To: <0b4101d8f063$69069fe0$80ffa8c0@Win7VM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Result: IP=31.60.112.33; mail.from=dorozhinsky@ukr.net; dkim=pass; header.d=ukr.net
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Maybe sound is muted... Can You try to increase volum level?


On 11/4/22 16:37, K0LNY_Glenn wrote:
> I ran  the following:
> sudo adduser audio lenny
> and I got the message that lenny was already a member of audio.
> speaker-test works  as sudo, but no sound without sudo.
> Just like spd-say, no errors, just no audio.
> Any ideas?
> Thanks.
> Glenn
>
> ----- Original Message -----
> From: "Gregory Nowak" <greg@gregn.net>
> To: "K0LNY_Glenn" <glenn@ervin.email>
> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen
> review system for Linux." <speakup@linux-speakup.org>
> Sent: Thursday, November 03, 2022 6:45 PM
> Subject: Re: Voxin/ibmtts with eSpeakup
>
>
> On Thu, Nov 03, 2022 at 02:40:57PM -0500, K0LNY_Glenn wrote:
>
>> spd-say test, without sudo is still silent
>> but with sudo, I get Voxin.
> Is the user you're running spd-say as in the audio group?
>
>> So, espeakup, or just speakup, whichever I'm using, is not runing as sudo,
> As far as I know, espeakup runs as root, unless you have a user named
> sudo on your system, and have made necessary changes to run espeakup
> as that user. Also, you need to decide what you want speakup to
> use. More likely espeakup and speech-dispatcher will just get in each
> other's way. If you're going to stick with voxin, you want to use
> speechd-up. If you're going to stick with espeak, you want to use espeakup.
>
> Greg
>
>

