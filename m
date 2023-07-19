Return-Path: <speakup+bounces-1017-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 15227759778
	for <lists+speakup@lfdr.de>; Wed, 19 Jul 2023 15:56:18 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5513C382591; Wed, 19 Jul 2023 09:56:17 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3FEEA38244D
	for <lists+speakup@lfdr.de>; Wed, 19 Jul 2023 09:56:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1553638243D; Wed, 19 Jul 2023 09:56:13 -0400 (EDT)
Received: from atlas.bondproducts.com (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165])
	by befuddled.reisers.ca (Postfix) with ESMTP id F16FD38234B
	for <speakup@linux-speakup.org>; Wed, 19 Jul 2023 09:56:12 -0400 (EDT)
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id ED7A140508;
	Wed, 19 Jul 2023 09:56:10 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id A7A081000AB; Wed, 19 Jul 2023 09:56:10 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id A735310007F;
	Wed, 19 Jul 2023 09:56:10 -0400 (EDT)
Date: Wed, 19 Jul 2023 09:56:10 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Mike Ray <mike@raspberryvi.org>
cc: speakup@linux-speakup.org
Subject: Re: sort of ot: what causes this issue?
In-Reply-To: <4ecbfbb2-8e25-4dc5-e924-163dd37edeb1@raspberryvi.org>
Message-ID: <Pine.LNX.4.64.2307190954430.1208945@users.shellworld.net>
References: <Pine.LNX.4.64.2307190655310.1206822@users.shellworld.net>
 <4ecbfbb2-8e25-4dc5-e924-163dd37edeb1@raspberryvi.org>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-1520655725-1689774970=:1208945"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1949452079-1520655725-1689774970=:1208945
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

I am unsure how this matters for my case.  I have an actual 9 pin port, no=
=20
USB involved.  That 9 pin is connected via cable to the back of my reading=
=20
edge...I make sure all of my computers have actual serial hardware.



On Wed, 19 Jul 2023, Mike Ray wrote:

>
>
>
>
> I've always suspected the hardware-handshake does not work correctly on a=
ll=20
> USB to serial adapters.
>
> In my experience those that are made with the FTTDI chipset are the best,=
=20
> while the PL2303 devices are worse than useless.
>
> The synth needs to be able to tell the computer when to stop sending unti=
l=20
> the synth is ready to accept more. If this does not happen it can result =
in=20
> garbled speech.
>
>
>
>
>
> On 19/07/2023 11:58, Karen Lewellen wrote:
>>  Hi folks,
>>  for those who use serial synthesizers, what can cause garbled character=
s
>>  to be sent to the synthesizer?
>>  they are not on the screen,=C2=A0 and I am trying to troubleshoot how, =
with
>>  two different computers the problem starts after a while.
>>  Thanks,
>>  Karen
>>
>>
>>=20
>
> --=20
> Michael A. Ray
> Software engineer
> Witley, Surrey, South-east UK
>
> He/him/cis
>
> "Perfection is achieved, not when there is nothing more to add, but when=
=20
> there is nothing left to take away." -- A. de Saint-Exupery
>
>
>
>
>
--1949452079-1520655725-1689774970=:1208945--

