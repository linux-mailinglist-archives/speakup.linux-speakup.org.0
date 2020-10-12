Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CFEFF28B826
	for <lists+speakup@lfdr.de>; Mon, 12 Oct 2020 15:50:07 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 65814380BB6; Mon, 12 Oct 2020 09:50:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1602510606;
	bh=1RLTftSqm5+WywYMKqbecov6Qe8OsbqOk2QTbWntVX0=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=CFqObcGZvQFr8XyWFpjyNmiK8L3ixzqZEn5ONFUUipJDT1wwqNoXUBnIKbXBC3xdQ
	 yoCQsknhhnHz8hilat7qT+o4y5M0i6/IVJNLTG/nDf0Sm+n1FzzckIECyGK/hjvls/
	 vnPGMTiAxUFc65m8N6EFH1jigb7Jk0oMcYtpuIlQ=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1FB14380BC7;
	Mon, 12 Oct 2020 09:50:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1602510603;
	bh=1RLTftSqm5+WywYMKqbecov6Qe8OsbqOk2QTbWntVX0=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=o3BOoenYGSPodxNLwU5/Bx2fdu+wH4tQklSn2GIxdWdb1HZnWzBP8jpXbbdH3hszb
	 UIdQX9ctPh0wNYl1t512aphm0excV+O5xZxuW78BCTybwJv1x/VfVfUjqA4WPbfapP
	 qHTOx36S56sNPYgUbexD5Bo/pf5kNWzcJ+vd2W30=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C6E30380BB6; Mon, 12 Oct 2020 09:50:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1602510602;
 bh=QNNXMXu9Lq0CpkTd+4bu4ithFc6k7NsnaEwyx+213LY=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=VsfzzGZoLplLxJhKqLjp3CSPoQRkxxtbafkGEry10nX0H1TkY2a0E9spaHnuwAymC
 5h2qt0j/cCkC+8TrOPzT9N7RGFHLFDMdJweMBYHodiFJ+A6k+CWhpNMwipUJ+lVgtG
 sihsWjxTOYG15k+CIxbotw/Nxd3g+suJtTAZr2xU=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id A03FF380BB2
 for <speakup@linux-speakup.org>; Mon, 12 Oct 2020 09:50:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1602510602;
 bh=QNNXMXu9Lq0CpkTd+4bu4ithFc6k7NsnaEwyx+213LY=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=VsfzzGZoLplLxJhKqLjp3CSPoQRkxxtbafkGEry10nX0H1TkY2a0E9spaHnuwAymC
 5h2qt0j/cCkC+8TrOPzT9N7RGFHLFDMdJweMBYHodiFJ+A6k+CWhpNMwipUJ+lVgtG
 sihsWjxTOYG15k+CIxbotw/Nxd3g+suJtTAZr2xU=
Date: Mon, 12 Oct 2020 09:50:02 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Flushing issue (was: So, where'd the volume controls get to?)
In-Reply-To: <20201011141744.pwte6hjbijqyb7my@function>
Message-ID: <alpine.DEB.2.23.453.2010120945410.74954@befuddled.reisers.ca>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010194612.ut6md7liw4e47ky7@function>
 <alpine.DEB.2.23.453.2010101905240.36490@befuddled.reisers.ca>
 <20201010235355.uqqvyyjqxupfw5qw@function>
 <alpine.DEB.2.23.453.2010102053100.39482@befuddled.reisers.ca>
 <20201011141744.pwte6hjbijqyb7my@function>
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

> Kirk Reiser, le sam. 10 oct. 2020 20:58:56 -0400, a ecrit:
>> Okay, the espeakup I'm using isn't using espeak-ng at all. It's using:
>>
>> libespeak1:amd64                       1.48.04+dfsg-9
>
> That's really old them. You'd want to use a more recent version, at
> least libespeak-ng1 1.49.0+dfsg-7

I won't upgrade from my old crusty but faithful version of espeakup
and espeak until what's available now is as usable. I do appreciate
you working on fixing it however and I hope this new set of patches
you've put together does in fact fix the problem.
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
