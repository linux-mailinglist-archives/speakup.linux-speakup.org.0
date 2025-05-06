Return-Path: <speakup+bounces-1282-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 986C4AACCA5
	for <lists+speakup@lfdr.de>; Tue,  6 May 2025 20:01:33 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=BnThbic7;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ED21E3829A1; Tue, 06 May 2025 14:01:31 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C9B8738215F
	for <lists+speakup@lfdr.de>; Tue, 06 May 2025 14:01:31 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B16E8382963; Tue, 06 May 2025 14:01:24 -0400 (EDT)
Received: from mail98.out.titan.email (mail98.out.titan.email [54.147.227.70])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7092438215F
	for <speakup@linux-speakup.org>; Tue, 06 May 2025 14:01:24 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 865831404E9;
	Tue,  6 May 2025 18:01:23 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=mVpsEyncnx37jOrSdWjmhyq7tjLkDphVzjP7OkyLaqQ=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=references:reply-to:cc:subject:mime-version:to:date:message-id:from:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1746554483; v=1;
	b=BnThbic7cTbpXoKi/zgeDwFJ3M9I+pwavMSUU1Hcm9ofhkj7MUI45K+Je/P34+X4UmygfZ1M
	FAcnJd4pp1IklWOcGet+nZGxBkrZBjcb421WdQtXUbqlD7G9MfH5lGHqabn4CSIQp4wtGUhson2
	ZNv0p6yUDVWan+y3OrdsxDZo=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id D3555140348;
	Tue,  6 May 2025 18:01:22 +0000 (UTC)
Message-ID: <00b001dbbeb0$e03dce30$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>,
	"John G. Heim" <jheim@math.wisc.edu>
Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu> <aBklhtM_CN4OmF3L@begin> <781e661c-7ee3-44ab-8da3-a69e7dd21d39@math.wisc.edu> <aBk1N295aRxq7LAP@begin> <d8af1f2a-eaa9-4f91-adb2-e2c3cdbf1ebd@math.wisc.edu> <aBlwpQWdLhedVVNx@gregn.net> <6c8093f9-e75e-442b-9d0c-570d066056a0@math.wisc.edu> <aBl-sbHNyN6NRrrs@gregn.net> <14db84c6-0360-44b0-beb2-54d7e5c424d9@math.wisc.edu> <008801dbbea3$075d66f0$01ffa8c0@nucwin10> <2cee115c-569e-4d91-8ce0-93a57c95c445@math.wisc.edu> <008c01dbbea4$6c522b80$01ffa8c0@nucwin10> <e960a70d-b3a0-4502-95a3-82285031b153@math.wisc.edu> <009a01dbbea9$feae2e20$01ffa8c0@nucwin10> <d8ee99cd-3883-413c-80a8-df492a861f5d@math.wisc.edu>
Subject: Re: Load speakup module as kernel parameter?
Date: Tue, 6 May 2025 13:01:21 -0500
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
X-Titan-Src-Out: 1746554483338053293.32042.3772731508744891733@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=fZxXy1QF c=1 sm=1 tr=0 ts=681a4e73
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=hEK2XftRAAAA:8
	a=qPKtzgQbAAAA:8 a=qeo3bj1LCo26H8-KS88A:9 a=QEXdDO2ut3YA:10
	a=pvvZm7_9ER1OwvpV3Ftp:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

If you download UUI the universal USB Installer I mentioned, they have an 
installer that you run whenever you want a writable live image on a USB 
drive, and GRML is in the list of operating systems that you can select, and 
it downloads the latest image ISO.
Then you can edit it all you want, and the changes will stay until you 
change them.
Glenn
----- Original Message ----- 
From: "John G. Heim" <jheim@math.wisc.edu>
To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen 
review system for Linux." <speakup@linux-speakup.org>
Sent: Tuesday, May 6, 2025 12:57 PM
Subject: Re: Load speakup module as kernel parameter?


An iso file contains a read-only file system. GR ML uses a squashed file
system w/i it's ISO file. So you'd have to mount the iso on a loopback
device, copy off the squashed file system, unsquash it, make your
changes, squash it, make a writable copy of the iso file system, copy
your new squashed file system into the iso file system, and then
recreate the iso file.

As I said, GRML has it's own customization options. I'll use those.



On 5/6/25 12:12 PM, K0LNY ?? wrote:
> Also, you don't have to write an ISO to read only media.
> You can do that after you have made your changes.
>
> ----- Original Message -----
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen
> review system for Linux." <speakup@linux-speakup.org>
> Sent: Tuesday, May 6, 2025 12:06 PM
> Subject: Re: Load speakup module as kernel parameter?
>
>
> If you booted a ubuntu on a CD-ROM, you can make all the changes you
> want to /etc/, /usr/bin, or whatever and the next time you boot from
> that CD, it will do exactly the same thing it did before. You can fix
> stuff on the hard drive of the computer you are booting on but that is
> not what I am working on. When you boot Ubuntu, you can press
> control+alt+s to start Orca. But GRML uses Speakup, not Orca. That's
> fine because it is designed to help you rescue a broken computer. I just
> want to start Speakup during boot on the live image. Like if Ubuntu came
> up talking instead of making you press control+alt+s.
>
>
>
>
>
> On 5/6/25 11:32 AM, K0LNY ?? wrote:
>> If you have the image on writable media, you can edit it.
>> I was working with Raspbian on an SD card and I messed up the fstab file
>> and
>> it would not boot.
>> So I plugged the card into another raspberry pi and used the cp command 
>> to
>> copy my backup fstab file back in place.
>> I could easily put a service file in /etc/systemd/system.
>> You would have to wait until first boot to run
>> sudo systemctl enable file.service
>>
>> Glenn
>> ----- Original Message -----
>> From: "John G. Heim" <jheim@math.wisc.edu>
>> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a 
>> screen
>> review system for Linux." <speakup@linux-speakup.org>
>> Sent: Tuesday, May 6, 2025 11:26 AM
>> Subject: Re: Load speakup module as kernel parameter?
>>
>>
>> Well, this is GRML, it is a distro designed to be run from a CD-ROM or
>> USB thumb drive. If you change something in /etc/, you will lose it the
>> next time you reboot. I don't know if it's even possible to change
>> anything in /etc/ while running a live GRML image. It might be mounted
>> read-only.
>>
>>
>>
>> On 5/6/25 11:22 AM, K0LNY ?? wrote:
>>> One could use a startup script in systemd/system or maybe a line in
>>> rc.local.
>>> Glenn
>>> ----- Original Message -----
>>> From: "John G. Heim" <jheim@math.wisc.edu>
>>> To: "Gregory Nowak" <greg@gregn.net>
>>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a
>>> screen
>>> review system for Linux." <speakup@linux-speakup.org>
>>> Sent: Tuesday, May 6, 2025 11:17 AM
>>> Subject: Re: Load speakup module as kernel parameter?
>>>
>>>
>>>
>>>> If you want to start speakup by passing parameters to the kernel, the
>>>> speakup modules you want to load have to be compiled into the kernel,
>>>> unless grml does something nifty I don't know about. If the speakup
>>>> modules are just modules, then the earliest stage to start speakup is
>>>> inside the initramfs. That's still not as early as the kernel
>>>> decompresses and loads, but it should still be enough for most
>>>> purposes.
>>>>
>>> Hmm, I guess figuring out how to load hardware speech drivers isn't
>>> worthwhile. It might be possible to install a custom kernel into a GRML
>>> image but probably a more useful thing to try is to start speakup with
>>> software speech automatically during boot. It is not too difficult to
>>> start speakup after your machine is done booting but it would be better
>>> to have it start automatically and during boot. I'll have to get back on
>>> the GrML list to see if I can make this new approach work.
>>>
>>> Man, I should have asked here first instead of spending a week trying to
>>> load the speakup modules at the kernel command line.
>>>
>>>
>>>


