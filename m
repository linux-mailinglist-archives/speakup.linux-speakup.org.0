Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8064428B774
	for <lists+speakup@lfdr.de>; Mon, 12 Oct 2020 15:44:03 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B0F1E380BDA; Mon, 12 Oct 2020 09:44:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1602510242;
	bh=df2qxBLgcv6B4d/9oR+9N57w7rQ8j6YUKVFCTf1EHEE=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=aw35UfnH+qIffpB0cLZJzDGSisPpo2KOnrBYyXEB3rFF+zQ/IKdDcDf920qZYX334
	 HqAsgOcYQrf4mue+HoG39x+uzcK7dlKRth0qODX6PUYyfN2yvEpYOHH+WtTvikNfGa
	 Qu4BnDVYFnF3oH6AZUvd1d6/s2/wAppku6K2Bm1w=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9FB97380BDF;
	Mon, 12 Oct 2020 09:44:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1602510241;
	bh=df2qxBLgcv6B4d/9oR+9N57w7rQ8j6YUKVFCTf1EHEE=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=T0sBcGgAXfSA+z5bbD6yTs2pexxNgT256oAVIPxeoPhGuF19Uv50Pqze0VSEyMJVv
	 nrXbHLbqdyaJPY01amWpuizgX0gjGxmzGjMi1Pxy8ENcaY2UzJB7kC7QSEf4oBJaz+
	 n6374vPFbuzSgdCpO+hEA/CvFfiaUiai7CCB2cc0=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 283C2380BB7; Mon, 12 Oct 2020 09:44:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1602510240;
 bh=+GuASD9AvN4UoahWH7ic7dgBSFZQXkIYE6u/GpQjHxs=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=Hdd66HGJMMyPU2RGhAO2Jv03eu5sf0dwn72NbxvfQi0gOot7L06a0LdND2OTQcs0v
 7y+qcEQigiRLIaEqya7ct9JZAhogFEbdMaR1al7hkdO9xT3kF60D4PNcQZxIErYRnH
 xdJUAJPYh/60FKQRRZRW6NWobkd9Xu1cegq6HMNA=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id F19DF380BB4
 for <speakup@linux-speakup.org>; Mon, 12 Oct 2020 09:43:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1602510240;
 bh=+GuASD9AvN4UoahWH7ic7dgBSFZQXkIYE6u/GpQjHxs=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=Hdd66HGJMMyPU2RGhAO2Jv03eu5sf0dwn72NbxvfQi0gOot7L06a0LdND2OTQcs0v
 7y+qcEQigiRLIaEqya7ct9JZAhogFEbdMaR1al7hkdO9xT3kF60D4PNcQZxIErYRnH
 xdJUAJPYh/60FKQRRZRW6NWobkd9Xu1cegq6HMNA=
Date: Mon, 12 Oct 2020 09:43:59 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: So, where'd the volume controls get to?
In-Reply-To: <20201012045350.GA3377@gregn.net>
Message-ID: <alpine.DEB.2.23.453.2010120941280.74954@befuddled.reisers.ca>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010193636.35lws35s7dyliyto@function>
 <20201012045350.GA3377@gregn.net>
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

Thanks Greg for taking on testing the patches and releasing your
results. Also thanks again to Samuel for getting a fix out so quickly.

   Kirk

On Sun, 11 Oct 2020, Gregory Nowak wrote:

> On Sat, Oct 10, 2020 at 09:36:36PM +0200, Samuel Thibault wrote:
>> Would you be able to try the attached patch?
>
> I can confirm that Samuel's patch fixes the issue so that speakup+1
> and speakup+2 controls volume again.
>
> Since I feel that volume control on the fly is fairly critical, I've
> decided to release my kernel build. The debian packages were built for
> a devuan Beowulf system, and should work on debian buster. This kernel
> should boot on most if not all x86_64 systems. There are modules for a
> variety of SATA controllers, and file systems. The debian packages
> aren't signed, and the kernel isn't signed either which your UEFI
> and/or boot loader might not like. If any of this makes you
> uncomfortable, wait for the fix to make it to where ever you get your
> kernel updates from, or build your own kernel with the patch (the www
> is your friend).
>
> For those who don't want to or can't install debian packages, the
> amd64_binaries directory has binaries for the kernel, modules, and
> headers. If installing this kernel breaks your system in any way, you
> get to keep all the pieces.
>
> You can find all of this at:
>
> <https://www.gregn.net/linux-5.8.14/>
>
> Greg
>
>
>
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
