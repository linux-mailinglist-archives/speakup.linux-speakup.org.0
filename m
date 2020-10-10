Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 46EAA28A2AE
	for <lists+speakup@lfdr.de>; Sun, 11 Oct 2020 01:00:57 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 90813380BBF; Sat, 10 Oct 2020 19:00:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1602370856;
	bh=q62kU9UYaX0IOXL+b0FJ1YSoOWw8bDQL7LshmLu/rPY=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=A4U642GpUIsZKdkUTyr4S4GXdRVihgH3cDW2NeJxswH1TWsjFQ6v3qn6br8r6FAMo
	 hQJn+4swzXww6ZTF5wvZmFzFD0cf5KKDB8IiVQvvwGc6VZpXR6Xk6DaLScTXooKETC
	 T3+Q13+Y1SwipC/EiKQxcapbYGY/8Y9dC0VAH8eo=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2FEAD380B33;
	Sat, 10 Oct 2020 19:00:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1602370854;
	bh=q62kU9UYaX0IOXL+b0FJ1YSoOWw8bDQL7LshmLu/rPY=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=ZLGPVjDTEcYBn8Y50cDSyvPWAPV42RnwbD6hTiPdBFJkh2maMjNR0KigmvLMY1CO9
	 8pOnmpWK0L+yJnIC0S/rIuj6ajufLl/PGJ5HQ6JlYVVNHOpBCrfuqA9rpMxJQSeHe2
	 J1eqws+pZEW/hncb057N5QZfnEl9IRNUKLWR0y6g=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id BB187380B26; Sat, 10 Oct 2020 19:00:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1602370852;
 bh=HBW50fWlwM6BRAFqqaqqpOfQJOvQRj2ssWZoec5mOs8=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=O2EMtuFuGJZeoZX3rw6RheKPQghfWa95cbZ/DhBhRNPLTZRYzHdJJfJFFkbRBj+vE
 zxx3e4l3r/F8jtSlgQVeK1seDVwF9ESkVJ18lcFBU20lQxi+zpdwQw6pPiXAVuDjXA
 pbN0mH8LebSzvdIlOC8BUlpsEXiXnLUhaf8S1qGs=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id A97D638096B
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 19:00:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1602370852;
 bh=HBW50fWlwM6BRAFqqaqqpOfQJOvQRj2ssWZoec5mOs8=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=O2EMtuFuGJZeoZX3rw6RheKPQghfWa95cbZ/DhBhRNPLTZRYzHdJJfJFFkbRBj+vE
 zxx3e4l3r/F8jtSlgQVeK1seDVwF9ESkVJ18lcFBU20lQxi+zpdwQw6pPiXAVuDjXA
 pbN0mH8LebSzvdIlOC8BUlpsEXiXnLUhaf8S1qGs=
Date: Sat, 10 Oct 2020 19:00:52 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: So, where'd the volume controls get to?
In-Reply-To: <20201010193636.35lws35s7dyliyto@function>
Message-ID: <alpine.DEB.2.23.453.2010101857170.36490@befuddled.reisers.ca>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010193636.35lws35s7dyliyto@function>
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

Hi Samuel: I am embarrassed to admit that it's been so many years
since I compiled a kernel and speakup I don't even remember how to do
it. If someone would tell me the commands for building the modules
I'll git pull a kernel and try it. It might be faster for one of the
folks that still do it regularly to try it also. They can probably do
it in no time.

   Kirk

On Sat, 10 Oct 2020, Samuel Thibault wrote:

> Hello,
>
> Kirk Reiser, le sam. 10 oct. 2020 14:56:38 -0400, a ecrit:
>> So, if you didn't move the controls who did? Curious minds and all
>> that.
>
> It seems that it's the introduction of the inflection variable that
> changed the values of the var_id_t enum, and these happen to be used by
> the default speakupmap.h, thus shifting all meanings...
>
> Would you be able to try the attached patch?
>
> Samuel
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
