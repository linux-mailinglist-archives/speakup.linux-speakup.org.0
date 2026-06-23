Return-Path: <speakup+bounces-1620-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yWjRLTPSOmpUHwgAu9opvQ
	(envelope-from <speakup+bounces-1620-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 20:36:35 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7E24E6B9784
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 20:36:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=panix.com header.s=panix header.b=hblpgKbG;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1620-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1620-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=none) header.from=panix.com
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A5817382692; Tue, 23 Jun 2026 14:36:33 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 82690382637
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 14:36:33 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 97D69382639; Tue, 23 Jun 2026 14:36:27 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 753ED38262D
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 14:36:27 -0400 (EDT)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4glDL23N15z47B9
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 14:36:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1782239786; bh=kBJAiEyTeqgZFTW/1Ly1H+8POQb3QUaFwpACH2T9hwg=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=hblpgKbG56mR0kan8hSoK3GGOaiPeUGIY+3MZLfPJ5cPrJpYdqEWz6zKxZ9ThDcEX
	 BGFnoIxnSe6mVQXlstZodVmaZJSQ0TqtjDw0Ul2gKY2u9GvkkTHNySQRtyezvutlTD
	 /BAFM7tDL2OvJLx+fqyua7jnrHBEvldBfqxZg3Pg=
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4glDL2351jz1QXN; Tue, 23 Jun 2026 14:36:26 -0400 (EDT)
Date: Tue, 23 Jun 2026 14:36:26 -0400
From: Rudy Vener <salt@panix.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Speechd-up -- nice!
Message-ID: <ajrSKnrqwLcVFaAN@panix.com>
References: <aa9f5623-dba3-4686-9b5c-8144e409425f@math.wisc.edu>
 <031401dd02c6$798d33a0$8b01f80a@nucwin10>
 <d6e07425-3566-407a-a371-a4d8055e9764@math.wisc.edu>
 <036601dd032c$a63f17e0$8b01f80a@nucwin10>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <036601dd032c$a63f17e0$8b01f80a@nucwin10>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[panix.com,none];
	R_DKIM_ALLOW(-0.20)[panix.com:s=panix];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1620-lists,speakup=lfdr.de];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER(0.00)[salt@panix.com,speakup@linux-speakup.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[panix.com:+];
	RCPT_COUNT_ONE(0.00)[1];
	FORWARDED(0.00)[lists@lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[salt@panix.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	DBL_BLOCKED_OPENRESOLVER(0.00)[substack.com:url,rudyvener.com:url,wisc.edu:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E24E6B9784


-- 
Rudy Vener

Can monsters be the good guys? Find out in Beast Hunt Vol 1: https://www.amazon.com/dp/B0DPN1QGGJ
Like Light-hearted Limericks? Read Memories Of The Music Man https://substack.com/@LimerickDude
Website: http://www.rudyvener.com
I tried using speechd-up just now on my slint Linux console mode speakup. But I had to switch back to espeakup. Not
so much because of the voice, but because I could not get speechd-up to say "space" when speakup is in key_echo mode.
Instead of saying "space" I get a dead silence when I hitt the space bar.
Is there a simple fix for this?


On Tue, Jun 23, 2026 at 11:23:38AM -0500, K0LNY ?? wrote:
> I started out with an Artic internal card, and I enjoyed having that.
> I think now that Espeak sounds a lot like my artic card.
> Perhaps it is the default Espeak that grates on me if I listen to it too
> long.
> It is far better than that crap in the Roku devices, or that was, I don't
> know if they still use that crappy voice.
> I could not even enter my password because I could not distinguish some of
> the characters.
> I suggested to Roku that they use Espeak, because it is free, but after I
> contacted them, I only heard crickets.
> I have heard some variances in Espeak-ng that aren't bad in my opinion.
> When I used to set up NVDA for clients, and Espeak came up, usually they
> started laughing.
> But hey, any TTS is better than nothing.
> Glenn
> 
> ----- Original Message ----- 
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: "K0LNY ??" <glenn@ervin.email>
> Sent: Tuesday, June 23, 2026 10:24 AM
> Subject: Re: Speechd-up -- nice!
> 
> 
> I am convinced it's just what you are used to. It's like if you listen
> to English with a British accent every day, that sounds clearer than
> English spoken with an American accent. If you listen to podcasts at 1.5
> speed, at first it's hard to understand but then you get used to it. As
> someone who switches back and forth between the espeak-ng voice Gene
> and Eloquence, I am absolutely convinced there is not a meaningful
> difference.
> 
> Your mileage may vary. I'm not a neurologist. But I'd bet my house that
> it's just what you are used to.
> 
> 
> 
> On 6/22/26 11:12 PM, K0LNY ?? wrote:
> > I dread the day that human sounding voices are all we have.
> > I hate Speakup, although it is quite intelligible, but I never want 
> > anything
> > but Eloquence/voxin.
> > Human sounding voices might be okay for reading a book, but not for 
> > computer
> > use in my opinion.
> > ----- Original Message -----
> > From: "John G. Heim" <jheim@math.wisc.edu>
> > To: "Speakup is a screen review system for Linux."
> > <speakup@linux-speakup.org>
> > Sent: Monday, June 22, 2026 10:45 PM
> > Subject: Speechd-up -- nice!
> >
> >
> > Not much mention of speechd-up on this list over the years. Turns out
> > it's pretty nice. While working on rewriting the docs for Speakup, I
> > gave speechd-up a try and it works great. I'm using that Voxin default
> > voice, Eloquence, at the command line. You can't do that with espeakup.
> >
> > Speechd-up might be the way to go in the future because voices that are
> > not resource hogs and are more human sounding are coming. Well, they
> > already exist except I don't know how to get them to work with Speech
> > Dispatcher. AFAIK, nobody does. Like, I have a license for Samantha but
> > darned if I can get it to work with Speech Dispatcher.
> >
> > Anyway, once that kind of thing gets worked out, you'll be able to have
> > human sounding voices at the Linux command line.
> >
> >
> >
> >
> > 
> 
> 

