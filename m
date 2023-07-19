Return-Path: <speakup+bounces-1020-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 19EBC759CF6
	for <lists+speakup@lfdr.de>; Wed, 19 Jul 2023 19:57:59 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AB167382586; Wed, 19 Jul 2023 13:57:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9504B382472
	for <lists+speakup@lfdr.de>; Wed, 19 Jul 2023 13:57:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 742C8382473; Wed, 19 Jul 2023 13:57:54 -0400 (EDT)
Received: from atlas.bondproducts.com (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4CFB638245B
	for <speakup@linux-speakup.org>; Wed, 19 Jul 2023 13:57:54 -0400 (EDT)
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 57E1E40508;
	Wed, 19 Jul 2023 13:57:49 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 13D481000AB; Wed, 19 Jul 2023 13:57:49 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 1384210007F;
	Wed, 19 Jul 2023 13:57:49 -0400 (EDT)
Date: Wed, 19 Jul 2023 13:57:49 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: John Covici <covici@ccs.covici.com>
cc: Mike Ray <mike@raspberryvi.org>, speakup@linux-speakup.org
Subject: Re: sort of ot: what causes this issue?
In-Reply-To: <m3wmyveql3.wl-covici@ccs.covici.com>
Message-ID: <Pine.LNX.4.64.2307191357200.1211936@users.shellworld.net>
References: <Pine.LNX.4.64.2307190655310.1206822@users.shellworld.net>
 <4ecbfbb2-8e25-4dc5-e924-163dd37edeb1@raspberryvi.org>
 <Pine.LNX.4.64.2307190954430.1208945@users.shellworld.net>
 <m3wmyveql3.wl-covici@ccs.covici.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-77771949-1689789469=:1211936"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1949452079-77771949-1689789469=:1211936
Content-Type: TEXT/PLAIN; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

I use dOS because there is no speakup driver for the reading edge.



On Wed, 19 Jul 2023, John Covici wrote:

> Again, what speakup synthesizer are you using? i.e. what is the value
> of /sys/accessibility/speakup/synth ?  Does the reading edge honor
> rts/cts handshake?
>
> On Wed, 19 Jul 2023 09:56:10 -0400,
> Karen Lewellen wrote:
>>
>> [1  <text/plain; UTF-8 (quoted-printable)>]
>> I am unsure how this matters for my case.  I have an actual 9 pin
>> port, no USB involved.  That 9 pin is connected via cable to the
>> back of my reading edge...I make sure all of my computers have
>> actual serial hardware.
>>
>>
>>
>> On Wed, 19 Jul 2023, Mike Ray wrote:
>>
>>>
>>>
>>>
>>>
>>> I've always suspected the hardware-handshake does not work
>>> correctly on all USB to serial adapters.
>>>
>>> In my experience those that are made with the FTTDI chipset are
>>> the best, while the PL2303 devices are worse than useless.
>>>
>>> The synth needs to be able to tell the computer when to stop
>>> sending until the synth is ready to accept more. If this does
>>> not happen it can result in garbled speech.
>>>
>>>
>>>
>>>
>>>
>>> On 19/07/2023 11:58, Karen Lewellen wrote:
>>>>  Hi folks,
>>>>  for those who use serial synthesizers, what can cause garbled charact=
ers
>>>>  to be sent to the synthesizer?
>>>>  they are not on the screen,=A0 and I am trying to troubleshoot how, w=
ith
>>>>  two different computers the problem starts after a while.
>>>>  Thanks,
>>>>  Karen
>>>>
>>>>
>>>>
>>>
>>> --
>>> Michael A. Ray
>>> Software engineer
>>> Witley, Surrey, South-east UK
>>>
>>> He/him/cis
>>>
>>> "Perfection is achieved, not when there is nothing more to add,
>>> but when there is nothing left to take away." -- A. de
>>> Saint-Exupery
>>>
>>>
>>>
>>>
>>>
>
> --=20
> Your life is like a penny.  You're going to lose it.  The question is:
> How do
> you spend it?
>
>         John Covici wb2una
>         covici@ccs.covici.com
>
>
--1949452079-77771949-1689789469=:1211936--

