Return-Path: <speakup+bounces-1280-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A7F51AACBF5
	for <lists+speakup@lfdr.de>; Tue,  6 May 2025 19:12:19 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=U4ab+gXO;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1DB843829A7; Tue, 06 May 2025 13:12:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EED36382960
	for <lists+speakup@lfdr.de>; Tue, 06 May 2025 13:12:18 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CBEDA382966; Tue, 06 May 2025 13:12:11 -0400 (EDT)
Received: from mail56.out.titan.email (mail56.out.titan.email [209.209.25.162])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A2C9238295E
	for <speakup@linux-speakup.org>; Tue, 06 May 2025 13:12:11 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 1E4A31404D4;
	Tue,  6 May 2025 17:12:08 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=CG2rBtuOQx0ydPydJ41YodHEHWB+O0ySK9BwHvjNxLc=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=reply-to:mime-version:from:cc:subject:date:message-id:to:references:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1746551528; v=1;
	b=U4ab+gXOBzCMayIgb3fPnFnEHmA9Bil6jX+FnzUKxWRTLw0j3LU21jsa/ciFU2+M4OWGvzMm
	LAp8M0SlX30phGnz4Esqp4wml1AtqJZyJ19aTiXqhTqGcn7qV2aQ7xXS49qppFS9VlBMi/M3fUj
	+kF3BbYrV7g60YAKMFkTtCc8=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 9805E140520;
	Tue,  6 May 2025 17:12:07 +0000 (UTC)
Message-ID: <009a01dbbea9$feae2e20$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>,
	"John G. Heim" <jheim@math.wisc.edu>
Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu> <aBklhtM_CN4OmF3L@begin> <781e661c-7ee3-44ab-8da3-a69e7dd21d39@math.wisc.edu> <aBk1N295aRxq7LAP@begin> <d8af1f2a-eaa9-4f91-adb2-e2c3cdbf1ebd@math.wisc.edu> <aBlwpQWdLhedVVNx@gregn.net> <6c8093f9-e75e-442b-9d0c-570d066056a0@math.wisc.edu> <aBl-sbHNyN6NRrrs@gregn.net> <14db84c6-0360-44b0-beb2-54d7e5c424d9@math.wisc.edu> <008801dbbea3$075d66f0$01ffa8c0@nucwin10> <2cee115c-569e-4d91-8ce0-93a57c95c445@math.wisc.edu> <008c01dbbea4$6c522b80$01ffa8c0@nucwin10> <e960a70d-b3a0-4502-95a3-82285031b153@math.wisc.edu>
Subject: Re: Load speakup module as kernel parameter?
Date: Tue, 6 May 2025 12:12:04 -0500
Organization: Home
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1746551527939823070.32042.8182168179057342709@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=fZxXy1QF c=1 sm=1 tr=0 ts=681a42e7
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=hEK2XftRAAAA:8
	a=qPKtzgQbAAAA:8 a=EUccVSm-tJGHTR7JAQ4A:9 a=QEXdDO2ut3YA:10
	a=pvvZm7_9ER1OwvpV3Ftp:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Also, you don't have to write an ISO to read only media.
You can do that after you have made your changes.

----- Original Message ----- 
From: "John G. Heim" <jheim@math.wisc.edu>
To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen 
review system for Linux." <speakup@linux-speakup.org>
Sent: Tuesday, May 6, 2025 12:06 PM
Subject: Re: Load speakup module as kernel parameter?


If you booted a ubuntu on a CD-ROM, you can make all the changes you
want to /etc/, /usr/bin, or whatever and the next time you boot from
that CD, it will do exactly the same thing it did before. You can fix
stuff on the hard drive of the computer you are booting on but that is
not what I am working on. When you boot Ubuntu, you can press
control+alt+s to start Orca. But GRML uses Speakup, not Orca. That's
fine because it is designed to help you rescue a broken computer. I just
want to start Speakup during boot on the live image. Like if Ubuntu came
up talking instead of making you press control+alt+s.





On 5/6/25 11:32 AM, K0LNY ?? wrote:
> If you have the image on writable media, you can edit it.
> I was working with Raspbian on an SD card and I messed up the fstab file 
> and
> it would not boot.
> So I plugged the card into another raspberry pi and used the cp command to
> copy my backup fstab file back in place.
> I could easily put a service file in /etc/systemd/system.
> You would have to wait until first boot to run
> sudo systemctl enable file.service
>
> Glenn
> ----- Original Message -----
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen
> review system for Linux." <speakup@linux-speakup.org>
> Sent: Tuesday, May 6, 2025 11:26 AM
> Subject: Re: Load speakup module as kernel parameter?
>
>
> Well, this is GRML, it is a distro designed to be run from a CD-ROM or
> USB thumb drive. If you change something in /etc/, you will lose it the
> next time you reboot. I don't know if it's even possible to change
> anything in /etc/ while running a live GRML image. It might be mounted
> read-only.
>
>
>
> On 5/6/25 11:22 AM, K0LNY ?? wrote:
>> One could use a startup script in systemd/system or maybe a line in
>> rc.local.
>> Glenn
>> ----- Original Message -----
>> From: "John G. Heim" <jheim@math.wisc.edu>
>> To: "Gregory Nowak" <greg@gregn.net>
>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a 
>> screen
>> review system for Linux." <speakup@linux-speakup.org>
>> Sent: Tuesday, May 6, 2025 11:17 AM
>> Subject: Re: Load speakup module as kernel parameter?
>>
>>
>>
>>> If you want to start speakup by passing parameters to the kernel, the
>>> speakup modules you want to load have to be compiled into the kernel,
>>> unless grml does something nifty I don't know about. If the speakup
>>> modules are just modules, then the earliest stage to start speakup is
>>> inside the initramfs. That's still not as early as the kernel
>>> decompresses and loads, but it should still be enough for most
>>> purposes.
>>>
>> Hmm, I guess figuring out how to load hardware speech drivers isn't
>> worthwhile. It might be possible to install a custom kernel into a GRML
>> image but probably a more useful thing to try is to start speakup with
>> software speech automatically during boot. It is not too difficult to
>> start speakup after your machine is done booting but it would be better
>> to have it start automatically and during boot. I'll have to get back on
>> the GrML list to see if I can make this new approach work.
>>
>> Man, I should have asked here first instead of spending a week trying to
>> load the speakup modules at the kernel command line.
>>
>>
>> 


