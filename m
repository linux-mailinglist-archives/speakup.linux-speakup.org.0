Return-Path: <speakup+bounces-334-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0118D45805C
	for <lists+speakup@lfdr.de>; Sat, 20 Nov 2021 21:40:24 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 55E2E381166; Sat, 20 Nov 2021 15:40:23 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 425D33809CA
	for <lists+speakup@lfdr.de>; Sat, 20 Nov 2021 15:40:23 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 77AC3380AC8; Sat, 20 Nov 2021 15:40:18 -0500 (EST)
Received: from smtprelay.b.hostedemail.com (smtprelay0117.b.hostedemail.com [64.98.42.117])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 67267380195
	for <speakup@linux-speakup.org>; Sat, 20 Nov 2021 15:40:18 -0500 (EST)
Received: from omf13.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay05.b.hostedemail.com (Postfix) with ESMTP id B0637100496C8;
	Sat, 20 Nov 2021 20:40:17 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf13.b.hostedemail.com (Postfix) with ESMTPA id 0493D801BEE2;
	Sat, 20 Nov 2021 20:40:16 +0000 (UTC)
Message-ID: <095701d7de4e$d34cf390$7101a8c0@NUCPPYH>
Reply-To: "K0LNY" <Glenn@Ervin.eMail>
From: "K0LNY" <glenn@ervin.email>
To: "Mike Keithley" <mlkeithley@comcast.net>,
	<speakup@linux-speakup.org>,
	"John G. Heim" <jheim@math.wisc.edu>
References: <228234727.2.1637378390667@localhost> <092501d7ddc4$929696b0$7101a8c0@NUCPPYH> <f12a316c-f52b-1cc4-6db1-5c1191f4c0c6@math.wisc.edu>
Subject: Re: speech/braille live rescue?
Date: Sat, 20 Nov 2021 14:40:12 -0600
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
	format=flowed;
	charset="iso-8859-1";
	reply-type=response
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.3790.1830
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: 0493D801BEE2
X-Spam-Status: No, score=-1.40
X-Stat-Signature: 1agk6ufgk519iejqqhjs95n8buw9xdjr
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19OBC3C59W7YJWbX1nE+BWfwYKtRvpJ7CA=
X-HE-Tag: 1637440816-80335
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I'm sure you can put GRML on an USB stick with Universal USB installer.
Glenn
----- Original Message ----- 
From: "John G. Heim" <jheim@math.wisc.edu>
To: "K0LNY" <Glenn@Ervin.eMail>; "Mike Keithley" <mlkeithley@comcast.net>; 
<speakup@linux-speakup.org>
Sent: Saturday, November 20, 2021 9:17 AM
Subject: Re: speech/braille live rescue?


> GRML hasn't had many releases lately. They put out a new release only 
> every couple of years now a days. I am on the developers email list. I 
> haven't actually done any development but I test every release for 
> accessibility. So I am pretty sure the latest release has both speech and 
> braille.
>
> I am pretty sure the way you get speech is still the same. Wait for grml 
> startup tones, press q to quit the menu, type "modprobe speakup_soft", 
> type "espeakup".
>
> The last couple of times i needed to boot a machine to rescue it, I used a 
> Ubuntu disk because I usually have one of those around. That is probably 
> the big disadvantage of GRML, you have to think to make one of those in 
> advance. I like using CD-ROMs because you don't usually have to fiddle 
> with the BIOS. If you have a machine where you can leave the drawer open a 
> little, you can just keep the CD-ROM in there and simply push it closed to 
> boot from the CD-ROM. Only problem with that, of course, is that you might 
> as well go watch an episode of Discovery waiting for it to boot.
>
>
>
> On 11/19/21 10:10 PM, K0LNY wrote:
>> It used to be that GRML did, but I haven't used it for so long, I can't 
>> say for sure now.
>> Glenn
>> ----- Original Message ----- From: "Mike Keithley" 
>> <mlkeithley@comcast.net>
>> To: <speakup@linux-speakup.org>
>> Sent: Friday, November 19, 2021 9:20 PM
>> Subject: speech/braille live rescue?
>>
>>
>>> Which linux rescue systems have speech/braille as a live bootable image 
>>> I can put on a USB stick?
>>>
>>
>>
>
> -- 
> ###
> John G. Heim, 608-263-4189, jheim@math.wisc.edu 


