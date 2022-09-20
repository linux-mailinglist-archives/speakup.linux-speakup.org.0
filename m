Return-Path: <speakup+bounces-738-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2886F5BD94C
	for <lists+speakup@lfdr.de>; Tue, 20 Sep 2022 03:21:17 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=kxPVA/Nm;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 62CC5380AA8; Mon, 19 Sep 2022 21:21:16 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 42F4F380797
	for <lists+speakup@lfdr.de>; Mon, 19 Sep 2022 21:21:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1254F380798; Mon, 19 Sep 2022 21:21:07 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A64A1380750
	for <speakup@linux-speakup.org>; Mon, 19 Sep 2022 21:21:06 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4MWkJd0tsVz2nPW;
	Mon, 19 Sep 2022 21:21:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1663636865; bh=3fuszQH8381YPFavi3zGPs2UJnwMsYfLCRCwnw60gaQ=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=kxPVA/NmA1jGMg8vpAWWDBEXzyjsIPzcZphx9DdquO56fZyKOTNhqIPIKbptIjO9b
	 UbkFX9IZwJp+56wfM8RSAPB+KghBIzpBU1qT9zKAZxdddEhrtoX3rV8Frbejofapj6
	 G6axErFaa7jBeOB5hSU/voCRGIDJD769X7XeLru8=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4MWkJd0Nqqzcbc; Mon, 19 Sep 2022 21:21:04 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4MWkJc6xqtzcbP;
	Mon, 19 Sep 2022 21:21:04 -0400 (EDT)
Date: Mon, 19 Sep 2022 21:21:04 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Chime Hart <chime@hubert-humphrey.com>, speakup@linux-speakup.org
Subject: Re: Are Their BiPass KeyStrokes in Speakup?
In-Reply-To: <68c7b66a-d07e-1966-db37-d148eb221bed@hubert-humphrey.com>
Message-ID: <6e31bf63-7978-c5a1-2380-1515c311eeb6@panix.com>
References: <68c7b66a-d07e-1966-db37-d148eb221bed@hubert-humphrey.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

You may need to turn speakup off temporarily do the dectalk keystrokes
then turn speakup on again for your results.  If keystrokes and their
destination got stored in a script running the script as speakup is off
then enabling speakup ought to be more certain to work.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Mon, 19 Sep 2022, Chime Hart wrote:

> Hi All: I think I remember in Vocal-Eyes, we could hit a control+n to send
> commands directly to a synthesizer. Does Speakup have such a way? Reason I
> ask, on the DecTalk discussion list, we've been discussing my long-standing
> Speakup related sudden changes in pitch, rate, and volume. And so this
> question came up about a bipass. To continue, here are Don's comments from
> earlier today
> The problem is that we can't talk to the DECtalk without going through
> SpeakUp.  To test the condition you pose, we could tell DECtalk to use
> some other voice.  Then, after the "drop" happens, see if it has reset
> the parameters of THAT voice... or, changed to the voice that SpeakUp
> *thought* was being used.
>
> We also don't know what the values are reverting to.  Or, what their
> various defaults might be (power up, nonvolatile memory, speakup settings,
> etc.)
>
> For an original DECtalk, we could enable logging and just look at the
> characters that were being sent to the DECtalk by SpeakUp.  If there
> are no control sequences that try to alter these settings, then we
> would KNOW that it was something that was happening inside the DECtalk
> unit.
> If, on the other hand, we see some commands being sent but they are
> incorrect, then we know the problem lies in SpeakUp.
> I don't know how to divorce the serial interface from SpeakUp so that
> we can eavesdrop on it.  There are some ways to do this but I don't
> know how they will color the results.
> The better solution would be if SpeakUp had a debug mode that caused
> all output to be copied to some log file that could be analyzed after
> a "drop" was noticed.  You could then manually examine the log and
> identify whether SpeakUp was causing a parameter change or not.
> This would also help the developers backtrace to see why the commands
> were being issued and why they weren't correct.
> Chime
>
>

