Return-Path: <speakup+bounces-1015-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E4AEF759514
	for <lists+speakup@lfdr.de>; Wed, 19 Jul 2023 14:25:17 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DF8DC382596; Wed, 19 Jul 2023 08:25:16 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CB8A0380CE4
	for <lists+speakup@lfdr.de>; Wed, 19 Jul 2023 08:25:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A2D4E382419; Wed, 19 Jul 2023 08:25:12 -0400 (EDT)
Received: from atlas.bondproducts.com (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8B52F382323
	for <speakup@linux-speakup.org>; Wed, 19 Jul 2023 08:25:12 -0400 (EDT)
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 2F71640508;
	Wed, 19 Jul 2023 08:25:11 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id DD76F1000AB; Wed, 19 Jul 2023 08:25:10 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id DCFC010007F;
	Wed, 19 Jul 2023 08:25:10 -0400 (EDT)
Date: Wed, 19 Jul 2023 08:25:10 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: John Covici <covici@ccs.covici.com>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: sort of ot: what causes this issue?
In-Reply-To: <m3y1jcdu3l.wl-covici@ccs.covici.com>
Message-ID: <Pine.LNX.4.64.2307190821260.1207890@users.shellworld.net>
References: <Pine.LNX.4.64.2307190655310.1206822@users.shellworld.net>
 <m3y1jcdu3l.wl-covici@ccs.covici.com>
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

Okay, let me provide more details.
What has been happening since I moved is that, say after a power change 
happen sup stairs, I will first get a spike in pitch,
Then garbled text bleeding from my computer through the serial port into 
my  reading edge buffer.
The reading edge itself has a diagnostic tool for serial ports, there is a 
loop back between the edge and the computer.  So I will get a cereal loop 
back failure error too.



On Wed, 19 Jul 2023, John Covici wrote:

> Sounds like the handshake is not working properly.  What is your synth
> and what handshake is being used?
>
> On Wed, 19 Jul 2023 06:58:22 -0400,
> Karen Lewellen wrote:
>>
>> Hi folks,
>> for those who use serial synthesizers, what can cause garbled
>> characters to be sent to the synthesizer?
>> they are not on the screen,  and I am trying to troubleshoot how,
>> with two different computers the problem starts after a while.
>> Thanks,
>> Karen
>>
>>
>>
>
> -- 
> Your life is like a penny.  You're going to lose it.  The question is:
> How do
> you spend it?
>
>         John Covici wb2una
>         covici@ccs.covici.com
>
>

