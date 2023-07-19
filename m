Return-Path: <speakup+bounces-1016-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 23745759538
	for <lists+speakup@lfdr.de>; Wed, 19 Jul 2023 14:36:47 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B03A5382598; Wed, 19 Jul 2023 08:36:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9C54D38245B
	for <lists+speakup@lfdr.de>; Wed, 19 Jul 2023 08:36:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 58E74382462; Wed, 19 Jul 2023 08:36:42 -0400 (EDT)
Received: from sa-prd-fep-042.btinternet.com (mailomta19-sa.btinternet.com [213.120.69.25])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0C605382323
	for <speakup@linux-speakup.org>; Wed, 19 Jul 2023 08:36:41 -0400 (EDT)
Received: from sa-prd-rgout-003.btmx-prd.synchronoss.net ([10.2.38.6])
          by sa-prd-fep-042.btinternet.com with ESMTP
          id <20230719123639.BNEF20040.sa-prd-fep-042.btinternet.com@sa-prd-rgout-003.btmx-prd.synchronoss.net>
          for <speakup@linux-speakup.org>; Wed, 19 Jul 2023 13:36:39 +0100
Authentication-Results: btinternet.com;
    auth=pass (PLAIN) smtp.auth=mike.ray@btinternet.com;
    bimi=skipped
X-SNCR-Rigid: 64067FEB0F857725
X-Originating-IP: [86.177.244.103]
X-OWM-Source-IP: 86.177.244.103 (GB)
X-OWM-Env-Sender: mike.ray@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedviedrgeekgdefkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedtudenucenucfjughrpefkffggfghruffvfhfhjggtgfesthekredttdefjeenucfhrhhomhepofhikhgvucftrgihuceomhhikhgvsehrrghsphgsvghrrhihvhhirdhorhhgqeenucggtffrrghtthgvrhhnpefggfdtleejhfeijeevteeigfejkeffledtjefggefhgedtjeefudetfeettdfhudenucfkphepkeeirddujeejrddvgeegrddutdefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplgduledvrdduieekrddtrddvngdpihhnvghtpeekiedrudejjedrvdeggedruddtfedpmhgrihhlfhhrohhmpehmihhkvgesrhgrshhpsggvrhhrhihvihdrohhrghdpnhgspghrtghpthhtohepuddprhgtphhtthhopehsphgvrghkuhhpsehlihhnuhigqdhsphgvrghkuhhprdhorhhgpdhrvghvkffrpehhohhsthekiedqudejjedqvdeggedquddtfedrrhgrnhhgvgekiedqudejjedrsghttggvnhhtrhgrlhhplhhushdrtghomhdprghuthhhpghushgvrhepmhhikhgvrdhrrgihsegsthhinhhtvghrnhgvthdrtghomhdpghgvohfkrfepifeupdfovfetjfhoshhtpehsrgdqphhrugdqrhhgohhuthdqtddtfe
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from [192.168.0.2] (86.177.244.103) by sa-prd-rgout-003.btmx-prd.synchronoss.net (5.8.814) (authenticated as mike.ray@btinternet.com)
        id 64067FEB0F857725 for speakup@linux-speakup.org; Wed, 19 Jul 2023 13:36:39 +0100
Message-ID: <4ecbfbb2-8e25-4dc5-e924-163dd37edeb1@raspberryvi.org>
Date: Wed, 19 Jul 2023 13:36:38 +0100
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Reply-To: mike@raspberryvi.org
Subject: Re: sort of ot: what causes this issue?
Content-Language: en-US
To: speakup@linux-speakup.org
References: <Pine.LNX.4.64.2307190655310.1206822@users.shellworld.net>
From: Mike Ray <mike@raspberryvi.org>
In-Reply-To: <Pine.LNX.4.64.2307190655310.1206822@users.shellworld.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5





I've always suspected the hardware-handshake does not work correctly on 
all USB to serial adapters.

In my experience those that are made with the FTTDI chipset are the 
best, while the PL2303 devices are worse than useless.

The synth needs to be able to tell the computer when to stop sending 
until the synth is ready to accept more. If this does not happen it can 
result in garbled speech.





On 19/07/2023 11:58, Karen Lewellen wrote:
> Hi folks,
> for those who use serial synthesizers, what can cause garbled characters 
> to be sent to the synthesizer?
> they are not on the screen,  and I am trying to troubleshoot how, with 
> two different computers the problem starts after a while.
> Thanks,
> Karen
> 
> 
> 

-- 
Michael A. Ray
Software engineer
Witley, Surrey, South-east UK

He/him/cis

"Perfection is achieved, not when there is nothing more to add, but when 
there is nothing left to take away." -- A. de Saint-Exupery




