Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id BFF7028A12D
	for <lists+speakup@lfdr.de>; Sat, 10 Oct 2020 20:56:41 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4D031380B9F; Sat, 10 Oct 2020 14:56:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1602356201;
	bh=VdfZ07+oCCG2hE7tsVlLWfclnFPcYH2sE+Rigzzy/UY=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=JbvcKxgsTEWPMfji6dATI7utwzXlI/skPELJtlUBJyRWRyf7EOuufFtsDsdKiVec4
	 67hUsFUyUyS2gDT6WJSYBi5PyTABpTDpBEnKf8tDr+vNvNW3o75jvDd/LE6arlH8IV
	 xt60f8HX/PJ3L9ekIvzmZsXsfJFUqC4mY2+C0Kj4=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8B4AA380B3D;
	Sat, 10 Oct 2020 14:56:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1602356200;
	bh=VdfZ07+oCCG2hE7tsVlLWfclnFPcYH2sE+Rigzzy/UY=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=LdSyJyc7u4wV179QDXEEreC64ZPYB0BR6aROXqPnn0S9NDyXWPWkJeuGe6vrk7wQt
	 6cgPfLVzlplMjYQd5N3nvTd61JDEt29WKBnea406AR2wSXbxvrq+PiZ8jFbIAbrbrZ
	 DZkKbgi5iPqOnJmX8sRh0HR4IZd5iEn+YCLTsYCE=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id BD9C0380B2E; Sat, 10 Oct 2020 14:56:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1602356198;
 bh=Q8OGdu5LAKaP2U7i966t08tQYQu1eTg7mTAfI1N5gBs=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=EBrYmMboKz2yLBftR27A5s+zDNtkpgTSaFRLuCN6X6y3+G6HzFeOAFKuA1h3qggH8
 9Wha8FJTSvN9OktSSR0mYMAHK1+4X/pYifJmAkmAidn9g6aMdwA5+Ikre72GzisVXB
 T8Av5AZG10yiUlZXeBqJ2rRdekg8ZtHbgNm2mT5o=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id AA65A380B2B
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 14:56:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1602356198;
 bh=Q8OGdu5LAKaP2U7i966t08tQYQu1eTg7mTAfI1N5gBs=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=EBrYmMboKz2yLBftR27A5s+zDNtkpgTSaFRLuCN6X6y3+G6HzFeOAFKuA1h3qggH8
 9Wha8FJTSvN9OktSSR0mYMAHK1+4X/pYifJmAkmAidn9g6aMdwA5+Ikre72GzisVXB
 T8Av5AZG10yiUlZXeBqJ2rRdekg8ZtHbgNm2mT5o=
Date: Sat, 10 Oct 2020 14:56:38 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: So, where'd the volume controls get to?
In-Reply-To: <20201010151312.fbz27eyoua2574tw@function>
Message-ID: <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
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

Well, I doubt if it matters exactly what hardware I'm running speakup
on but the two machines I've upgraded are both amd64 machines.

The volume controls have always been on speakup- one and two but now
they report inflection instead. Like I said I've not found the volume
controls moved any place else.

The espeakup problems are as I've pointed out many times before. The
voice doesn't flush quickly enough to be able to move up and down with
either the review keys or arrow keys so it generates a jumbling of
voices which is completely unusable when moving quickly. I'm not
exactly sure how to describe it but the problem shows up on all
machines I've tested with espeakup since espeak-ng. It is very easy to
produce just review up and down quickly with espeakup. I don't know
how speech-dispatcher works when using speechd-up and the espeak
voice. Someone with that would have to speak to that.

So, if you didn't move the controls who did? Curious minds and all
that.

   Kirk


On Sat, 10 Oct 2020, Samuel Thibault wrote:

> Hello,
>
> Kirk Reiser, le ven. 09 oct. 2020 11:19:01 -0400, a ecrit:
>> Hello Samuel et al: The latest version of speakup appears to have
>> replaced the volume controls with inflection controls.
>
> ?? I'm not aware of this. Inflection was added in the /sys parameters,
> but only to be configured manual by echoing there. What hardware are you
> using?
>
>> IMO espeakup is still entirely brain dead so a lot of us still have to
>> use very old versions from back before espeak-en to get decent
>> performence. It's just an observation.
>
> "Performance"? What do you mean?
>
> Again, I'm not an actual user of speakup, so people have to explain what
> they mean in details otherwise I won't be able to grasp what problem
> there actually is.
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
