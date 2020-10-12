Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E17F628BF1D
	for <lists+speakup@lfdr.de>; Mon, 12 Oct 2020 19:39:56 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 442AB380BC2; Mon, 12 Oct 2020 13:39:56 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1BD7B380BC4;
	Mon, 12 Oct 2020 13:39:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 66992380BB7; Mon, 12 Oct 2020 13:39:54 -0400 (EDT)
Received: from server2.shellworld.net (unknown [66.172.12.120])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 4D79D380BB4
 for <speakup@linux-speakup.org>; Mon, 12 Oct 2020 13:39:54 -0400 (EDT)
Received: by server2.shellworld.net (Postfix, from userid 1005)
 id 82B17540184; Mon, 12 Oct 2020 17:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by server2.shellworld.net (Postfix) with ESMTP id 802A354015C
 for <speakup@linux-speakup.org>; Mon, 12 Oct 2020 13:39:22 -0400 (EDT)
Date: Mon, 12 Oct 2020 13:39:22 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: So, where'd the volume controls get to?
In-Reply-To: <alpine.DEB.2.23.453.2010120941280.74954@befuddled.reisers.ca>
Message-ID: <Pine.LNX.4.64.2010121338340.8392@server2.shellworld.net>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010193636.35lws35s7dyliyto@function> <20201012045350.GA3377@gregn.net>
 <alpine.DEB.2.23.453.2010120941280.74954@befuddled.reisers.ca>
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

If volume is restored, where is inflection now?
granted I am not a speakup user, but one should have both, no?
Karen



On Mon, 12 Oct 2020, Kirk Reiser wrote:

> Thanks Greg for taking on testing the patches and releasing your
> results. Also thanks again to Samuel for getting a fix out so quickly.
>
>  Kirk
>
> On Sun, 11 Oct 2020, Gregory Nowak wrote:
>
>>  On Sat, Oct 10, 2020 at 09:36:36PM +0200, Samuel Thibault wrote:
>> >  Would you be able to try the attached patch?
>>
>>  I can confirm that Samuel's patch fixes the issue so that speakup+1
>>  and speakup+2 controls volume again.
>>
>>  Since I feel that volume control on the fly is fairly critical, I've
>>  decided to release my kernel build. The debian packages were built for
>>  a devuan Beowulf system, and should work on debian buster. This kernel
>>  should boot on most if not all x86_64 systems. There are modules for a
>>  variety of SATA controllers, and file systems. The debian packages
>>  aren't signed, and the kernel isn't signed either which your UEFI
>>  and/or boot loader might not like. If any of this makes you
>>  uncomfortable, wait for the fix to make it to where ever you get your
>>  kernel updates from, or build your own kernel with the patch (the www
>>  is your friend).
>>
>>  For those who don't want to or can't install debian packages, the
>>  amd64_binaries directory has binaries for the kernel, modules, and
>>  headers. If installing this kernel breaks your system in any way, you
>>  get to keep all the pieces.
>>
>>  You can find all of this at:
>>
>>  <https://www.gregn.net/linux-5.8.14/>
>>
>>  Greg
>> 
>> 
>> 
>> 
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
