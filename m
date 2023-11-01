Return-Path: <speakup+bounces-1052-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 98D137DE575
	for <lists+speakup@lfdr.de>; Wed,  1 Nov 2023 18:40:51 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CDB91382751; Wed,  1 Nov 2023 13:40:50 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B6CCB38222F
	for <lists+speakup@lfdr.de>; Wed,  1 Nov 2023 13:40:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9404638220F; Wed,  1 Nov 2023 13:40:46 -0400 (EDT)
Received: from atlas.bondproducts.com (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7A2DF382113
	for <speakup@linux-speakup.org>; Wed,  1 Nov 2023 13:40:46 -0400 (EDT)
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 8F6AF40508;
	Wed,  1 Nov 2023 13:40:39 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 4C4711001B8; Wed,  1 Nov 2023 13:40:39 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 4BE521001AA;
	Wed,  1 Nov 2023 13:40:39 -0400 (EDT)
Date: Wed, 1 Nov 2023 13:40:39 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Brian Buhrow <buhrow@nfbcal.org>
cc: K0LNY ?? <glenn@ervin.email>, Butch Bussen <butchb@shellworld.net>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: slightly different dectalk question.
In-Reply-To: <202311011705.3A1H5095003406@nfbcal.org>
Message-ID: <Pine.LNX.4.64.2311011339340.3176199@users.shellworld.net>
References: <202311011705.3A1H5095003406@nfbcal.org>
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

Mercy this is brilliant!
Thanks profoundly, can run these tests on my own using a different speech 
source, and learn each result.
thanks so very truly much!
Kare



On Wed, 1 Nov 2023, Brian Buhrow wrote:

> 	hello.  Here are some notes on how to configure the Dectalk PC, taken from work I did on
> this product many years ago.
>
> 1.  The I/O base addresses choices for the Dectalk are:
> 0x240, 0x250, 0x340 or 0x350
>
> 2.  the BIOS base choices are:
> 0xc000, 0xc800, 0xd000 or 0xd800
>
> 3.  Although the Dectalk is capable of running with interrupts enabled, my notes indicate the
> Dectalk software runs the synthesizer in polling mode, so a discussion of which interrupt to
> use is mostly academic.
>
> 4.  It appears the default i/o address setting for the Dectalk PC is 0x240.  My suggestion is
> to edit your config.bat file with each of the choices listed above, in the order listed, and
> try and start up the Dectalk software.  You won't hurt anything with this technique, though
> you may need to reboot several times as my notes say that you can hang the machine by trying to
> get the software to talk to the hardware at the wrong address.  To prevent yourself from
> getting locked out of the system, don't set the dectalk to come up talking automatically on
> boot until you've confirmed that you have the right settings and that it works when started
> manually.  By doing things this way, you shouldn't have to adjust the jumpers on the card at
> all.
>
> 	I hope these notes are helpful.  It has been a long time since I touched this card, 25
> years if the dates on my notes are to be believed, so I may be leaving some details out.
>
> -Brian
>
>

