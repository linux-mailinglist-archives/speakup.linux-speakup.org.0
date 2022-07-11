Return-Path: <speakup+bounces-476-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8661B56D46A
	for <lists+speakup@lfdr.de>; Mon, 11 Jul 2022 07:54:30 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CEC63380B61; Mon, 11 Jul 2022 01:54:29 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BAD63380A3E
	for <lists+speakup@lfdr.de>; Mon, 11 Jul 2022 01:54:29 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CCFE9380ABF; Mon, 11 Jul 2022 01:54:24 -0400 (EDT)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B0F2C380A3E
	for <speakup@linux-speakup.org>; Mon, 11 Jul 2022 01:54:24 -0400 (EDT)
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 87408121E17; Mon, 11 Jul 2022 05:54:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 822AD121DA7;
	Mon, 11 Jul 2022 01:54:23 -0400 (EDT)
Date: Mon, 11 Jul 2022 01:54:23 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
cc: Chime Hart <chime@hubert-humphrey.com>, speakup@linux-speakup.org
Subject: Re: About no_interrupt?
In-Reply-To: <20220711035920.yrrxc3uakze33cvn@begin>
Message-ID: <Pine.LNX.4.64.2207110140001.450746@server2.shellworld.net>
References: <221ddb78-9ec2-6f00-b249-50dcbb7e57ef@hubert-humphrey.com>
 <a029ad61-468a-0daf-e245-fc679f1a8dab@hubert-humphrey.com>
 <Pine.LNX.4.64.2207101628140.440089@server2.shellworld.net>
 <20220710203826.3wasqo5hnxf3zdep@begin> <Pine.LNX.4.64.2207101659370.441118@server2.shellworld.net>
 <b9ac0798-5749-12be-6dbb-9d05f7e48078@hubert-humphrey.com>
 <Pine.LNX.4.64.2207101720510.441523@server2.shellworld.net>
 <20220710212952.oopexzb26c2kobuy@begin> <Pine.LNX.4.64.2207101803190.442232@server2.shellworld.net>
 <20220711035822.453lixuqfba7667g@begin> <20220711035920.yrrxc3uakze33cvn@begin>
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

Samuel,
I am not being provocative, just curious, but why?
By which I mean, why should a company who, and I may be wrong, likely 
developed  these voices for other goals, choose to create something to 
work with speakup?
again, drawing on far from Linux related experience, but to insure a 
screen reader functioned fully with a specific source of speech, those 
developing the screen reader wrote configuration  files to match the needs 
of that synthesizer, not the other way around.
It is how, again for me personally, I can have one synthesizer, but have 
more than one screen reader on my computer.  as installed, I located the 
specific config file associated with my synthesizer,  including it in the 
install process.

that way a screen reader could insure performance integrity across the 
board, while allow individuals to use the best synthesizers for their 
personal needs. 
Granted there is, to my mind, a great difference between text to Speech, 
and a screen reader working well with various types of speech synthesizers, 
but that is me.
Kare



On Mon, 11 Jul 2022, Samuel Thibault wrote:

> Samuel Thibault, le lun. 11 juil. 2022 05:58:22 +0200, a ecrit:
>> Karen Lewellen, le dim. 10 juil. 2022 18:09:41 -0400, a ecrit:
>>> I have personally never encountered synthesis that could not be
>>> paused.
>>
>> Yes, but the question here is whether the *pipes* between speakup and
>> the synthesis (here, voxinup and voxin) actually support that.
>
> Put another way: the problem has to be addressed by voxin people,
> speakup cannot do anything about it.
>
> Samuel
>
>

