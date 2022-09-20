Return-Path: <speakup+bounces-740-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E4F655BF35D
	for <lists+speakup@lfdr.de>; Wed, 21 Sep 2022 04:16:16 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=sLaVLxWF;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 751D3380D6B; Tue, 20 Sep 2022 22:16:15 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 548C038062A
	for <lists+speakup@lfdr.de>; Tue, 20 Sep 2022 22:16:15 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3BE43380918; Tue, 20 Sep 2022 22:16:06 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E431E38062A
	for <speakup@linux-speakup.org>; Tue, 20 Sep 2022 22:16:05 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.56.81.246])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 929B71CEB;
	Tue, 20 Sep 2022 19:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1663726562; bh=wBwMnV7YohjU+ye3RzTTR+581jPKZrfwksz/zlBoN6U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sLaVLxWFB8N8esSvRDZZV2XxNjLkyeUI5s6rh8tmXp5WS02I36eUCuY4qMMrhdyH6
	 H4mVHWJXoz54YosBaFmOCm4e2guQ3f8xfmmtiuy7BFlbE2Svg2T2Q2AxAKkzpJCA07
	 dRFeebFDYnTsP6VNS5ebqpRprvKXw/+GFVqi3eG9RFNVIml5OG6r8EbfaTvDxwfc3m
	 6R/ERDhS0FeJbVBWVvijAjIhWrKUXavmUz/hqo0IYJo+iEp1VnTQWeGOO1Mu5xk22y
	 69QYxIg190WCOEQhwyNLJRCtwSNjdtMtfnNS1l2G8I04LPZzps+dRdT0G6sE/fY4cK
	 Ey7HuKhXf39jg==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 5DE5EC171; Mon, 19 Sep 2022 21:13:05 -0700 (MST)
Date: Mon, 19 Sep 2022 21:13:05 -0700
From: Gregory Nowak <greg@gregn.net>
To: Chime Hart <chime@hubert-humphrey.com>
Cc: speakup@linux-speakup.org
Subject: Re: Are Their BiPass KeyStrokes in Speakup?
Message-ID: <Yyk90Ychfb1SkCyM@gregn.net>
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
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <68c7b66a-d07e-1966-db37-d148eb221bed@hubert-humphrey.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Mon, Sep 19, 2022 at 02:36:45PM -0700, Chime Hart wrote:
> Hi All: I think I remember in Vocal-Eyes, we could hit a control+n to send
> commands directly to a synthesizer. Does Speakup have such a way?

Yes, synth_direct. Using bash, as root:

echo "hello" >/sys/accessibility/speakup/synth_direct

should make your dectalk say hello.

> Reason I
> ask, on the DecTalk discussion list, we've been discussing my long-standing
> Speakup related sudden changes in pitch, rate, and volume. And so this
> question came up about a bipass. To continue, here are Don's comments from
> earlier today
> The problem is that we can't talk to the DECtalk without going through
> SpeakUp.  To test the condition you pose, we could tell DECtalk to use
> some other voice.  Then, after the "drop" happens, see if it has reset
> the parameters of THAT voice... or, changed to the voice that SpeakUp
> *thought* was being used.

You could rmmod speakup_dectlk, and you should be able to send
whatever you want to the dectalk using echo to the serial port. Of
course, as soon as you modprobe speakup_dectlk, speakup would set the
dectalk parameters. So, your best option seems to be to communicate to
the dectalk through synth_direct.

> 
> We also don't know what the values are reverting to.  Or, what their
> various defaults might be (power up, nonvolatile memory, speakup settings,
> etc.)

As far as speakup settings, those should be in speakup_dectlk.c in the
speakup source.

> 
> For an original DECtalk, we could enable logging and just look at the
> characters that were being sent to the DECtalk by SpeakUp.  If there
> are no control sequences that try to alter these settings, then we
> would KNOW that it was something that was happening inside the DECtalk
> unit.

In order to set the parameters of the unit, speakup needs to send
various control characters to the unit, and does so.

> If, on the other hand, we see some commands being sent but they are
> incorrect, then we know the problem lies in SpeakUp.

This is again in the speakup source code. Speakup doesn't do anything
that isn't in its source code.

> I don't know how to divorce the serial interface from SpeakUp so that
> we can eavesdrop on it.  There are some ways to do this but I don't
> know how they will color the results.

I'm not sure it's possible to view input/output of a line discipline
in use, which is how speakup communicates with the synthesizer.

> The better solution would be if SpeakUp had a debug mode that caused
> all output to be copied to some log file that could be analyzed after
> a "drop" was noticed.  You could then manually examine the log and
> identify whether SpeakUp was causing a parameter change or not.

Speakup is in the kernel, so no writing to log files. It should be
possible to write input/output between speakup and the synthesizer to a buffer in memory
which could be queried by a user space tool.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

