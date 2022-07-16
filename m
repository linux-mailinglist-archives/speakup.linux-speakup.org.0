Return-Path: <speakup+bounces-478-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AD2B4576B6C
	for <lists+speakup@lfdr.de>; Sat, 16 Jul 2022 05:19:03 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 531B3380A43; Fri, 15 Jul 2022 23:19:02 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3FA263805D8
	for <lists+speakup@lfdr.de>; Fri, 15 Jul 2022 23:19:02 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 24D6F3805D8; Fri, 15 Jul 2022 23:18:57 -0400 (EDT)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0864B380407
	for <speakup@linux-speakup.org>; Fri, 15 Jul 2022 23:18:57 -0400 (EDT)
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id AA2DF12132F; Sat, 16 Jul 2022 03:18:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id A6A73120475;
	Fri, 15 Jul 2022 23:18:53 -0400 (EDT)
Date: Fri, 15 Jul 2022 23:18:53 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
cc: Chime Hart <chime@hubert-humphrey.com>, speakup@linux-speakup.org
Subject: Re: About no_interrupt?
In-Reply-To: <20220711060626.pv44xzokg3tui4sj@begin>
Message-ID: <Pine.LNX.4.64.2207152314490.572799@server2.shellworld.net>
References: <Pine.LNX.4.64.2207101628140.440089@server2.shellworld.net>
 <20220710203826.3wasqo5hnxf3zdep@begin> <Pine.LNX.4.64.2207101659370.441118@server2.shellworld.net>
 <b9ac0798-5749-12be-6dbb-9d05f7e48078@hubert-humphrey.com>
 <Pine.LNX.4.64.2207101720510.441523@server2.shellworld.net>
 <20220710212952.oopexzb26c2kobuy@begin> <Pine.LNX.4.64.2207101803190.442232@server2.shellworld.net>
 <20220711035822.453lixuqfba7667g@begin> <20220711035920.yrrxc3uakze33cvn@begin>
 <Pine.LNX.4.64.2207110140001.450746@server2.shellworld.net>
 <20220711060626.pv44xzokg3tui4sj@begin>
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

Again though I ask why this company would have any reason to build pipes 
for   speakup well at all?
Your stop sign analogy does not quite resonate because the source of the 
sign, government, city, county or whomever is an authority that drivers 
have a reason to obey.  Or at least choose to obey.
If the traveler has no reason to be aware of, or even concern themselves 
with   a stop sign, they are not likely to plan accordingly.
Kare



On Mon, 11 Jul 2022, Samuel Thibault wrote:

>> On Mon, 11 Jul 2022, Samuel Thibault wrote:
>>> Put another way: the problem has to be addressed by voxin people,
>>> speakup cannot do anything about it.
>
> Karen Lewellen, le lun. 11 juil. 2022 01:54:23 -0400, a ecrit:
>> I am not being provocative, just curious, but why?
>
> Because speakup *does* support stopping synthesis, it *does* send the
> interruption request to voxinup. It's voxinup or voxin or whatever is
> behind them that don't actually take it into account.
>
> Put another way, when there is a red sign that shows cars to stop, but a
> car ignore the red sign, the problem is in the car, not in the red sign.
>
> Samuel
>
>

