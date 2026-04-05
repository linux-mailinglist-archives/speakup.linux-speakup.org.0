Return-Path: <speakup+bounces-1574-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id DIl9Jsp30mm4YAcAu9opvQ
	(envelope-from <speakup+bounces-1574-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Sun, 05 Apr 2026 16:55:06 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4517039EC62
	for <lists+speakup@lfdr.de>; Sun, 05 Apr 2026 16:55:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1775400902;
	bh=OCh7ZszrNh8oqwmlqI0kWU5Lqr4fLK2GuyKiY5NvrEc=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=LSmqa4ht1qVxGniLh5tdeoMwcnSIOQJsKoyxh4EQRit6b+EBG9inNMQf0AFo7miXl
	 3B5jH1DLEHAOsyVVRrYC6yre5uBOqXneGwtmszbBuWxgahoLlBcB/pzAKeNF4xDKF5
	 jG3fpNlm2/Hnk43g3QnrduHxddw+rUHSmNdedgq4=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 55D2F382666; Sun, 05 Apr 2026 10:55:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1775400902;
	bh=OCh7ZszrNh8oqwmlqI0kWU5Lqr4fLK2GuyKiY5NvrEc=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=LSmqa4ht1qVxGniLh5tdeoMwcnSIOQJsKoyxh4EQRit6b+EBG9inNMQf0AFo7miXl
	 3B5jH1DLEHAOsyVVRrYC6yre5uBOqXneGwtmszbBuWxgahoLlBcB/pzAKeNF4xDKF5
	 jG3fpNlm2/Hnk43g3QnrduHxddw+rUHSmNdedgq4=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 35B10381831
	for <lists+speakup@lfdr.de>; Sun, 05 Apr 2026 10:55:02 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1775400896;
	bh=OCh7ZszrNh8oqwmlqI0kWU5Lqr4fLK2GuyKiY5NvrEc=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=JTNvIv3cdFFfjJlP4GOoH0lXVDZZWu4hUzb+Iaj+Sy1D1QEPCRk/2kGamSvSwAk45
	 +OnQZ9ghtF0KDoBs9CEsRo9g+TeZ6JSi508EdB5ieCGuOkMp45eBKjtMmprcphTlsS
	 mOOK8JbIB2h6sNLQBXhSrcsIGh4Z2dtBUmMx+Lqc=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 154AD381925; Sun, 05 Apr 2026 10:54:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1775400894;
	bh=OCh7ZszrNh8oqwmlqI0kWU5Lqr4fLK2GuyKiY5NvrEc=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=bVpMwRJt8/HL5Y8nOqexz+ZIJk/e2Xox1/aWm+fKbZYC0IL0z+jEgQ14rQmXM9sTh
	 rj4WIY5etknjXbtHoxb+DyvMRbZMjrUi/0d4L7xmaSeyDJ5Mnejsy2ntMguNk++Lz9
	 p6l6yL2bG70bSjA0DafJACWoeC2KtQhFf54Rhkq0=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0B3C6381831;
	Sun, 05 Apr 2026 10:54:54 -0400 (EDT)
Date: Sun, 5 Apr 2026 10:54:53 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Gregory Nowak <greg@gregn.net>
cc: "John G. Heim" <jheim@math.wisc.edu>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Rewriting the docs
In-Reply-To: <adHSoyDi8VElDn6Q@gregn.net>
Message-ID: <cf50432b-faed-7951-68f8-539f925658fd@reisers.ca>
References: <f73d1414-0f07-471e-a160-4b40eb0346e6@math.wisc.edu> <adHSoyDi8VElDn6Q@gregn.net>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-0.39 / 15.00];
	R_DKIM_ALLOW(-0.20)[reisers.ca:s=befuddled];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[reisers.ca];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[bounces-1574-lists,speakup=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[reisers.ca:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[kirk@reisers.ca,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns]
X-Rspamd-Queue-Id: 4517039EC62
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Well, I'm not even sure where to start my comments. The latest version
of speechd-up I have is 0.3. A while back, meaning a few years, Chris
Brannon aggreed to take over supporting speechd-up. He is no longer
with us but maybe Deedra can dig up Chris's latest repository he
maintained. I haven't really had anything to do with the package since
I turned it over to the braillecom folks back many years ago.

I originally wrote speechd-up as a first attempt at software speech
before espeakup was written. So I'm not surprised it didn't keep up
with the additions William Hubb made. Certainly espeakup works with
pipewire and friends although sometimes one needs to do some fiddling
about to get it all working.

I'm happy to give anyone that wishes my copy of speechd-up_0.3 that
wishes it. I'll ask Deedra about Chris's repo and let the list know
what I find. I haven't heard anything from the braillecom folks in
many years.

   Kirk


On Sat, 4 Apr 2026, Gregory Nowak wrote:

> I would suggest taking the neutral position, and explaining that
> either can be used. The caveats to both are that all the layers that
> are being put on top of alsa these days don't play nice with espeakup,
> and that speechd-up does not have the same level of functionality as
> espeakup does when it comes to setting speech parameters.
>
> Greg
>
>
> On Sat, Apr 04, 2026 at 12:54:34PM -0500, John G. Heim wrote:
>> Now that I'm pretty much done with my hardware synth project, I thought I'd
>> get started rewriting the Speakup documentation. I decided to start with the
>> FAQ, which if you believe the date on the FAQ itself, is 24 years old.
>>
>> The FAQ doesn't even mention software speech so I need to add that. But one
>> thing I am unclear on is the relationship between espeakup and speechd-up. I
>> understand the technical differences but what I am unclear on is whether
>> speechd-up has made espeakup obsolete. Obviously, you wouldn't use both but
>> is one preferred over the other? Maybe the FAQ should take a neutral
>> position and just explain that either can be used.
>>
>> PS: A note on the hardware synth project -- I am working on getting my
>> package into Debian so it would then automatically be included in Raspberry
>> Pi OS. Once I get that done, I'll get going on getting the kernel to
>> recognize hardware speech synths, including my hardware synth emulator.
>>
>>
>>
>
>

