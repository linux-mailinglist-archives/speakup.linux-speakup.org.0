Return-Path: <speakup+bounces-760-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3A3756068A0
	for <lists+speakup@lfdr.de>; Thu, 20 Oct 2022 21:08:05 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=ULSNaUm7;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BDD03383FF8; Thu, 20 Oct 2022 15:08:04 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9DC72383FDB
	for <lists+speakup@lfdr.de>; Thu, 20 Oct 2022 15:08:04 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4DE7D383FDF; Thu, 20 Oct 2022 15:07:55 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E9375383FCC
	for <speakup@linux-speakup.org>; Thu, 20 Oct 2022 15:07:54 -0400 (EDT)
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4MtcYf6JrDzJMj;
	Thu, 20 Oct 2022 15:07:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1666292870; bh=A8EGEj/KrMOqcw4qZyFvPwBF1hqkm4cH5OuBhErnqkw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ULSNaUm7NUS0vXT3I3aK68+ZjvyxOOJoOkajOA6Paj47RTSv3YlL9OuBoPseHMkSQ
	 tergBrKgxHZU/1TfOudv0fcucabiDdaSQb+WfScZPBGYuJoWaEDz7E1VD6ogP2JXFI
	 8bIcQRdIXbBPZCI0yqltihePyCp/HX22P3aUBUMw=
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4MtcYf5p9DzfYm; Thu, 20 Oct 2022 15:07:50 -0400 (EDT)
Date: Thu, 20 Oct 2022 15:07:50 -0400
From: Rudy Vener <salt@panix.com>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: speakup@linux-speakup.org
Subject: Re: spelling words with military letter pronunciation
Message-ID: <Y1GchjnSy19miU5l@panix.com>
References: <20210105173502.GA17449@panix.com>
 <20221020181216.o5rpkuy5tgdcmgyo@begin>
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
In-Reply-To: <20221020181216.o5rpkuy5tgdcmgyo@begin>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

It would if I used a keyboard with a keypad, but on a small laptop
keyboard without a numerical keypad the SPK Word key combo is
SPK_Key +k, and when I hit it twice it spells out the word with the letter names, not
with military pronunciation.

I think the newly restored genmap program, which should be available in the next release of slint and other linux versions
will help me address this on my own. At least I hope so.

Rudy

On Thu, Oct 20, 2022 at 08:12:16PM +0200, Samuel Thibault wrote:
> Hello,
> 
> Rudy Vener, le mar. 05 janv. 2021 12:35:02 -0500, a ecrit:
> > A feature to tap the speak word key thrice to get military spelling 
> > would be a great boon to those of us who are deaf as well as blind.
> 
> As reported by Mushahid Hussain:
> 
> ???
> According to docs here
> https://github.com/linux-speakup/speakup/blob/37fa15cffbea52e30a35113d6c1c2a69916e9711/Documentation/admin-guide/spkguide.txt#L290
> key combination for military letter pronunciation is spk_key + 5.
> 
> I have tested spk_key + 5 on speakup_soft(and espeakup) and it pronounces the whole word in military letters no matter where the cursor is.
> ???
> 
> Does that not answer you need?
> 
> Samuel
> 

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt

