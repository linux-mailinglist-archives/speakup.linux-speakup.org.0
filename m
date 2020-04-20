Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id E04121B060F
	for <lists+speakup@lfdr.de>; Mon, 20 Apr 2020 11:56:22 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2693A1C57CF; Mon, 20 Apr 2020 05:56:22 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=coolip.net header.i=@coolip.net header.a=rsa-sha256 header.s=E7505158-8BEF-11E7-8FDA-0CC2F7FFB772 header.b=XGtbLc1e;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 68C2F1C57F5;
	Mon, 20 Apr 2020 05:55:40 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A3EF21C0129; Mon, 20 Apr 2020 05:55:31 -0400 (EDT)
Received: from mailer.coolip.net (mailer.coolip.net [54.165.87.160])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 54BD11C0129
 for <speakup@linux-speakup.org>; Mon, 20 Apr 2020 05:55:28 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mailer.coolip.net (Postfix) with ESMTP id B5EFDE0150
 for <speakup@linux-speakup.org>; Mon, 20 Apr 2020 05:55:26 -0400 (EDT)
Received: from mailer.coolip.net ([127.0.0.1])
 by localhost (mailer.coolip.net [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id RLlnyywcPTCH for <speakup@linux-speakup.org>;
 Mon, 20 Apr 2020 05:55:25 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mailer.coolip.net (Postfix) with ESMTP id 3BDBAE2C5D
 for <speakup@linux-speakup.org>; Mon, 20 Apr 2020 05:55:25 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mailer.coolip.net 3BDBAE2C5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=coolip.net;
 s=E7505158-8BEF-11E7-8FDA-0CC2F7FFB772; t=1587376525;
 bh=bXXqLe+1yMWgFFdvTngvb3lKWpb9Vihpm0I7P0kIqR4=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=XGtbLc1efv4XPXuXCv3srz10RjsLTyWnjZbgs0M7Bts+67wzwDT98WO+BuZTVMyXC
 ug0HgWh14L2eYlAQYFZCkJ2vNngkDniTLfz1IZLEuPlViUhhkdgVArt14fSzEz1zEG
 VIKLNdzf/uNuQdOUhKknhO3fQXpIaNyI40qlUhMtGqC0ZkHiEK/1T3psVESt1w/HLq
 yXKvaJWapu+CCdJZb8RrrudXBqLwAR7ZCcYUNA1CVITYXQaNl92ltjWr8yVej0u3lj
 mBdkHXmXxT28XhavyZ56RnVjcA2c2dJRRn32pOZybg7xgZjAIyG6WVYXlf+3/FHlWl
 fADomNXWQcVgw==
X-Virus-Scanned: amavisd-new at mailer.coolip.net
Received: from mailer.coolip.net ([127.0.0.1])
 by localhost (mailer.coolip.net [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Pa0n5YUq0xuL for <speakup@linux-speakup.org>;
 Mon, 20 Apr 2020 05:55:25 -0400 (EDT)
Received: from io.coolip.net (cpe-75-186-70-119.cinci.res.rr.com
 [75.186.70.119])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kprescott@coolip.net)
 by mailer.coolip.net (Postfix) with ESMTPSA id 07048E0150
 for <speakup@linux-speakup.org>; Mon, 20 Apr 2020 05:55:24 -0400 (EDT)
Date: Mon, 20 Apr 2020 05:55:07 -0400 (EDT)
From: Kelly Prescott <kprescott@coolip.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
In-Reply-To: <20200419022742.GA4101@gregn.net>
Message-ID: <alpine.LNX.2.22.411.2004200552330.30644@io.coolip.net>
References: <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
 <20200415044239.GA6357@gregn.net>
 <Pine.LNX.4.64.2004150141390.8315@server2.shellworld.net>
 <20200416232813.t2zszb42qd2icfks@function> <20200417004033.GA5829@gregn.net>
 <20200417011211.yz4a7gch76ewp6j5@function>
 <Pine.LNX.4.64.2004171438170.15807@server2.shellworld.net>
 <20200417193714.enlesc2vad3phjls@function>
 <Pine.LNX.4.64.2004172029030.20019@server2.shellworld.net>
 <20200418011411.3z37lu4w54yszjt6@function>
 <20200419022742.GA4101@gregn.net>
User-Agent: Alpine 2.22 (LNX 411 2020-02-29)
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

I also wanted to publically thank Samuel, Oakash, and all the others that 
have worked on speakup to make it what it is.
I use it every day and I appreciate everyone who has made that possible.




On Sat, 18 Apr 2020, Gregory Nowak wrote:

> On Sat, Apr 18, 2020 at 03:14:11AM +0200, Samuel Thibault wrote:
>> Why am I working on speakup
>> then? Frankly, when I read messages like yours, I do wonder. I just
>> happened to go by and see that speakup needed help. If it's not welcome
>> I can just merely leave out speakup as it is. But I don't think that's
>> what you hoped for? Then like I said, avoid sending the kind of harsh
>> message you did, I don't see how they can help in any way.
>
> Thank you Samuel very much for what you've done for the speakup
> project over the years. It is do to your help and Oakash's that
> speakup is about to be moved from staging into mainline, and I believe
> it is in big part due to Samuel that speakup got into staging to start
> with. What you've done for the speakup project and debian accessibility
> so far is greatly
> appreciated by myself, and I hope by others too.
>
> Greg
>
>
> -- 
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> skype: gregn1
> (authorization required, add me to your contacts list first)
> If we haven't been in touch before, e-mail me before adding me to your contacts.
>
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
