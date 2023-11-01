Return-Path: <speakup+bounces-1053-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 411977DE7C3
	for <lists+speakup@lfdr.de>; Wed,  1 Nov 2023 22:57:52 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9D74C38274D; Wed,  1 Nov 2023 17:57:49 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 860FB3822E1
	for <lists+speakup@lfdr.de>; Wed,  1 Nov 2023 17:57:49 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7556C38222F; Wed,  1 Nov 2023 17:57:45 -0400 (EDT)
Received: from atlas.bondproducts.com (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5AD2A3821A9
	for <speakup@linux-speakup.org>; Wed,  1 Nov 2023 17:57:45 -0400 (EDT)
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id B2C6B40508;
	Wed,  1 Nov 2023 17:57:36 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1034)
	id 7DBAE1001B8; Wed,  1 Nov 2023 17:57:36 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 7C4781001AA;
	Wed,  1 Nov 2023 14:57:36 -0700 (PDT)
Date: Wed, 1 Nov 2023 14:57:35 -0700 (PDT)
From: Butch Bussen <butchb@shellworld.net>
To: K0LNY ?? <glenn@ervin.email>
cc: Karen Lewellen <klewellen@shellworld.net>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: slightly different dectalk question.
In-Reply-To: <1a1901da0c58$b29deac0$01ffa8c0@nucwin10>
Message-ID: <Pine.LNX.4.64.2311011456240.3180685@users.shellworld.net>
References: <Pine.LNX.4.64.2310311538430.3146024@users.shellworld.net>
 <Pine.LNX.4.64.2310311709250.3149750@users.shellworld.net>
 <1a1901da0c58$b29deac0$01ffa8c0@nucwin10>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

As I recall on the sounding board, irq 2 was default, and we sometimes 
used seven.  I think 5 was for sound card, irq 4 was for come 1 and 3 
and irq3 was for com 2 and com 4 as I recall.  On Tue, 31 Oct 2023, K0LNY 
?? wrote:

> I thought that somewhere in with the DecTalk files, there was a tool that
> probes for the Dectalk.
> It should not be hard to change the jumpers on the card, I used to do it all
> the time.
> Seems like I usually used IRQ 5 or 7 and what is the other, DMA?
> I think that was usually 3.
> Anyway, it wouldn't hurt to move them, as the worse that can happen is that
> it will be not working like it it is currently.
> You just feel the the available jumper pins, and move the jumper over.
>
> Glenn
> ----- Original Message -----
> From: "Butch Bussen" <butchb@shellworld.net>
> To: "Karen Lewellen" <klewellen@shellworld.net>
> Cc: "Speakup is a screen review system for Linux."
> <speakup@linux-speakup.org>
> Sent: Tuesday, October 31, 2023 7:10 PM
> Subject: Re: slightly different dectalk question.
>
>
> I don't know of a tool, but I have a whole folder of dectalk stuff, says
> software 4.2 if I remember right.  There is one file, for example, that
> talks about a conflict with certain cdrom drives.
> On Tue, 31 Oct 2023,
> Karen Lewellen wrote:
>
>> And likely more on point.
>> I did get a copy of the pc1 software, from another list.
>> The error suggests address factors, but my associate took one look at all
>> those switches and was afraid to touch them.
>> Given dt.bat can be edited it seems,
>> any tool that will locate the dectalk internal card?
>> Thanks,
>> Karen
>>
>>
>>
>>
>
>

