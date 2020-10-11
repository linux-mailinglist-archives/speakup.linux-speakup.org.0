Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id E676C28A4E4
	for <lists+speakup@lfdr.de>; Sun, 11 Oct 2020 02:59:01 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 600B0380B2A; Sat, 10 Oct 2020 20:59:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1602377941;
	bh=ukKq2iGscxoUVAfS0yPT+tX2yz1J4kj8qzIpjg9isRg=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=RXgAcWXh37OnsWMfGQDya+mB24Eqdc2THMe8tHdQQDwPwoABVFEwQp4xh78u1XmlY
	 JctP/8yWhNQW1biPRTWHQ4IiPtNcXVoem7F0HWvhFfT9rb1JIooB/HZezXMeLH1bsf
	 9G3nDkd6JmAtAVitEvZM3GqSq6M2/XJ2CzBbW+KY=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 698AC380B34;
	Sat, 10 Oct 2020 20:58:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1602377938;
	bh=ukKq2iGscxoUVAfS0yPT+tX2yz1J4kj8qzIpjg9isRg=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=DNq+6bU3JJT3RJvd46YywI7/FAkQhDHBTk9WhqK8jJkwksZYHKBKyHLBe8OhWH2wx
	 n5BHP3V9NgvT3zYK2UBKN9ryHh1QxhOTYGDASTjpNh5NumO4T1VbauR1Dz/5CZQNAB
	 ON3u5n42oqVCosBfHvBUK6SpcZQZSYxrgJM8I4m0=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C60CB380B27; Sat, 10 Oct 2020 20:58:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1602377936;
 bh=bi7BVM7Up2q0NIN1goMZYxp6qMjdBrsZtqi5qcxF9ac=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=lOm8/MPcOQQ3+fC4lbTIxeJ1XAJXCDC7psifcgtZOxZb12H5bVD+1vqASRkMb/Xlz
 aebP7qSB04/Wv3Bmsyyd5YLl3tsRKg4z/KKGA1by/FlToAT8gu7lyjaXKR0XisAcrZ
 6ofIFyFYd2zvhsmuT2cMqyFp00LL78cTSqSttWSs=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B2E02380AC7
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 20:58:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1602377936;
 bh=bi7BVM7Up2q0NIN1goMZYxp6qMjdBrsZtqi5qcxF9ac=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=lOm8/MPcOQQ3+fC4lbTIxeJ1XAJXCDC7psifcgtZOxZb12H5bVD+1vqASRkMb/Xlz
 aebP7qSB04/Wv3Bmsyyd5YLl3tsRKg4z/KKGA1by/FlToAT8gu7lyjaXKR0XisAcrZ
 6ofIFyFYd2zvhsmuT2cMqyFp00LL78cTSqSttWSs=
Date: Sat, 10 Oct 2020 20:58:56 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Flushing issue (was: So, where'd the volume controls get to?)
In-Reply-To: <20201010235355.uqqvyyjqxupfw5qw@function>
Message-ID: <alpine.DEB.2.23.453.2010102053100.39482@befuddled.reisers.ca>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010194612.ut6md7liw4e47ky7@function>
 <alpine.DEB.2.23.453.2010101905240.36490@befuddled.reisers.ca>
 <20201010235355.uqqvyyjqxupfw5qw@function>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

On Sun, 11 Oct 2020, Samuel Thibault wrote:

> Ok but isn't it getting interrupted by the next key press also very
> fast?

It does interrupt quickly but there is previously spoken speech that
gets jammed against the new speech.

> Making the rate to 9 and running less on a long text, then keeping the
> down key pressed, I do get gibberish speech indeed, since it basically
> tries to speak the first words of each line very fast before the next
> key press switches to the next line. But what else would be expected?

You do want to hear it speak fast but new speech not old and new
scrunched together. I don't feel I'm doing a good job of describing
it.

>> the libespeak library as reported by ldd is:
>>
>> libespeak.so.1 => /usr/lib/x86_64-linux-gnu/libespeak.so.1 (0x00007f6298
>
> That is not precise enough, that has never changed since the espeak
> times. The last version of espeak-ng I'm aware of is 1.50.

Okay, the espeakup I'm using isn't using espeak-ng at all. It's using:

libespeak1:amd64                       1.48.04+dfsg-9

   Kirk
   _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
