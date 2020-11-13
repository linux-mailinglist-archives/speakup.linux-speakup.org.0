Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 13C462B1C14
	for <lists+speakup@lfdr.de>; Fri, 13 Nov 2020 14:47:48 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 834E0380F1E; Fri, 13 Nov 2020 08:47:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1605275265;
	bh=V4yuvpiuatqkGjpHStOk+tEJ39gykfg1eirkzdDslUU=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=IO4JppdFlAuGA6tWpOcDooBLrDKG9TRgyg4/tExgyxzH1HFGtgGF5F77MNPcFTFw4
	 006TKqutbqNqvqaSqcv6ZeK9YRVIQemYZ+IaxcnNcy+E27OJXM0ySsPktLIvYFTP/t
	 Q2RqLMp4onQhEJbIoUmgp/d+anDJxJ7S7bknOQPY=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E8083380ED3;
	Fri, 13 Nov 2020 08:47:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1605275264;
	bh=V4yuvpiuatqkGjpHStOk+tEJ39gykfg1eirkzdDslUU=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=ug/UYd/7cKgiOi/UFRv9zmlSkIYy3lH8YldOsl5Q4lKUuY/4D0kMbpqbAkM6/ZU4z
	 jliPK2Fv1x9psKG0NAwAWKxsmr800SohHwIv/aGb753qwo0c+j76wVPrPbznsnyx5L
	 bY49uz9OPT/7SqYUJJoyP/PjwMG72/k0EYSfwf6k=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id B856A380B9F; Fri, 13 Nov 2020 08:47:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1605275263;
 bh=/lzlr3NllpZnH8qoKoWW4AP7KBTOVeOURcEoapQiC3g=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=P/zvX4FS9vKIGB7lD/YpH6cT5Q+rS69g4TBn/kjQuvbIq4sgwMB/Pb8XME5kPredX
 Q5x8Y/Bt1lSbF1RQ5ebBAwCElE4H5lLCopaEzEfpXiCjXyctw2j0i2U2pN6U2zuEYn
 shW+tW3PN5i7pyijjCJUd1S6q26dRdaRZnXaSa+g=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 9B055380962
 for <speakup@linux-speakup.org>; Fri, 13 Nov 2020 08:47:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1605275263;
 bh=/lzlr3NllpZnH8qoKoWW4AP7KBTOVeOURcEoapQiC3g=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=P/zvX4FS9vKIGB7lD/YpH6cT5Q+rS69g4TBn/kjQuvbIq4sgwMB/Pb8XME5kPredX
 Q5x8Y/Bt1lSbF1RQ5ebBAwCElE4H5lLCopaEzEfpXiCjXyctw2j0i2U2pN6U2zuEYn
 shW+tW3PN5i7pyijjCJUd1S6q26dRdaRZnXaSa+g=
Date: Fri, 13 Nov 2020 08:47:43 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Another speakup cut and paste bug and park
In-Reply-To: <20201109202033.d7e4c46662wdvj65@function>
Message-ID: <alpine.DEB.2.23.453.2011130844340.190051@befuddled.reisers.ca>
References: <alpine.DEB.2.23.453.2010312053480.568552@befuddled.reisers.ca>
 <20201109202033.d7e4c46662wdvj65@function>
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

Hey Samuel and folks: Well, I am reluctant to admit that I have not
been able to reproduce the bug since I reported it either. I have
given it a good shot but it's been working fine. When I encounter it
again I'll try to do a better job of nailing it's conditions and
causes down.

Meanwhile, sorry for the false alarm.

   Kirk

On Mon, 9 Nov 2020, Samuel Thibault wrote:

> Hello,
>
> Kirk Reiser, le sam. 31 oct. 2020 21:02:27 -0400, a ecrit:
>> If you have the park function and cut and paste it selects the wrong
>> text. In fact the text it pastes isn't even on the screen but the
>> "mark text" spoken and an address of some sort. This should be easily
>> reproduced.
>
> And yet I didn't figure out how to reproduce it. Would you have an exact
> reproduction scenario?
>
> Samuel
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
