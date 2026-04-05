Return-Path: <speakup+bounces-1575-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ZsjBAuOP0mmtYwcAu9opvQ
	(envelope-from <speakup+bounces-1575-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Sun, 05 Apr 2026 18:37:55 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1A20039EFF0
	for <lists+speakup@lfdr.de>; Sun, 05 Apr 2026 18:37:53 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ECF4C38273E; Sun, 05 Apr 2026 12:37:40 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D86743825FC
	for <lists+speakup@lfdr.de>; Sun, 05 Apr 2026 12:37:40 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A8207381964; Sun, 05 Apr 2026 12:37:37 -0400 (EDT)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
	by befuddled.reisers.ca (Postfix) with ESMTP id 59076381832
	for <speakup@linux-speakup.org>; Sun, 05 Apr 2026 12:37:37 -0400 (EDT)
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 8C4E240508;
	Sun,  5 Apr 2026 12:37:27 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 3A24C100BEF; Sun,  5 Apr 2026 12:37:27 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 36F2F10008B;
	Sun,  5 Apr 2026 12:37:27 -0400 (EDT)
Date: Sun, 5 Apr 2026 12:37:27 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Kirk Reiser <kirk@reisers.ca>
cc: Gregory Nowak <greg@gregn.net>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Rewriting the docs
In-Reply-To: <cf50432b-faed-7951-68f8-539f925658fd@reisers.ca>
Message-ID: <Pine.LNX.4.64.2604051233430.1461518@users.shellworld.net>
References: <f73d1414-0f07-471e-a160-4b40eb0346e6@math.wisc.edu>
 <adHSoyDi8VElDn6Q@gregn.net> <cf50432b-faed-7951-68f8-539f925658fd@reisers.ca>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-0.09 / 15.00];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[shellworld.net : No valid SPF, No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_RCPT(0.00)[speakup];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.925];
	R_DKIM_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[klewellen@shellworld.net,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1575-lists,speakup=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1A20039EFF0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Just wondering as an objective reader.
Given Greg's comment specifically, might it be wise for a more interactive 
document option too?  The sort of wiki page as it were, so that, when 
other    changes impact success there  is a reasonably current source for 
information?
Linux can be a rather isolated  effort if that resonates.
Kare



On Sun, 5 Apr 2026, Kirk Reiser wrote:

> Well, I'm not even sure where to start my comments. The latest version
> of speechd-up I have is 0.3. A while back, meaning a few years, Chris
> Brannon aggreed to take over supporting speechd-up. He is no longer
> with us but maybe Deedra can dig up Chris's latest repository he
> maintained. I haven't really had anything to do with the package since
> I turned it over to the braillecom folks back many years ago.
>
> I originally wrote speechd-up as a first attempt at software speech
> before espeakup was written. So I'm not surprised it didn't keep up
> with the additions William Hubb made. Certainly espeakup works with
> pipewire and friends although sometimes one needs to do some fiddling
> about to get it all working.
>
> I'm happy to give anyone that wishes my copy of speechd-up_0.3 that
> wishes it. I'll ask Deedra about Chris's repo and let the list know
> what I find. I haven't heard anything from the braillecom folks in
> many years.
>
>  Kirk
>
>
> On Sat, 4 Apr 2026, Gregory Nowak wrote:
>
>>  I would suggest taking the neutral position, and explaining that
>>  either can be used. The caveats to both are that all the layers that
>>  are being put on top of alsa these days don't play nice with espeakup,
>>  and that speechd-up does not have the same level of functionality as
>>  espeakup does when it comes to setting speech parameters.
>>
>>  Greg
>> 
>>
>>  On Sat, Apr 04, 2026 at 12:54:34PM -0500, John G. Heim wrote:
>> >  Now that I'm pretty much done with my hardware synth project, I thought 
>> >  I'd
>> >  get started rewriting the Speakup documentation. I decided to start with 
>> >  the
>> >  FAQ, which if you believe the date on the FAQ itself, is 24 years old.
>> > 
>> >  The FAQ doesn't even mention software speech so I need to add that. But 
>> >  one
>> >  thing I am unclear on is the relationship between espeakup and 
>> >  speechd-up. I
>> >  understand the technical differences but what I am unclear on is whether
>> >  speechd-up has made espeakup obsolete. Obviously, you wouldn't use both 
>> >  but
>> >  is one preferred over the other? Maybe the FAQ should take a neutral
>> >  position and just explain that either can be used.
>> > 
>> >  PS: A note on the hardware synth project -- I am working on getting my
>> >  package into Debian so it would then automatically be included in 
>> >  Raspberry
>> >  Pi OS. Once I get that done, I'll get going on getting the kernel to
>> >  recognize hardware speech synths, including my hardware synth emulator.
>> > 
>> > 
>> > 
>> 
>> 
>
>
>

