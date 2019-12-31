Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id C3AC512D984
	for <lists+speakup@lfdr.de>; Tue, 31 Dec 2019 15:48:12 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B7B001C46BB; Tue, 31 Dec 2019 09:48:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1577803691;
	bh=+KHckrmkedLbpRXICxcWtnaqdgZUnWcbrMeSXmhKGso=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=SYir9pVsp6e6qSOtmyR8VSMxlXAGbfAHMg0Jn86tpVgxc0IzB/3QJSaKGGrEKECTY
	 x7jGdxwsKlKsEAawA96gddjWZPt5cgBs8ZKqAjzW+Xvqw5lMh6BKjyG9j3wBqhXG30
	 6TUroD6W0+xeZ+fFK3q88sD851YPgSM98FHiy3/o=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 10FF31C46B8;
	Tue, 31 Dec 2019 09:46:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1577803618;
	bh=+KHckrmkedLbpRXICxcWtnaqdgZUnWcbrMeSXmhKGso=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=saK7vGm02mZFIYXaSsmRg0jOklYQ6hdvGwvJpSLDRBrOaz6VAjfNXIlcv03/qNKtf
	 r+ga/Nj5wsDw83NV11FsIP6Gpf4IR/+E952w9TU6KicHLt+FerlaAGVcKItqn4rC35
	 6xic06ZB8B6hegCwa8DsIUSPd7P6xH24EAxVH350=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 9D9501C46B5; Tue, 31 Dec 2019 09:46:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1577803595;
 bh=XHJ6++TmecYNHL1R47y4Q31IhcbXnCMA/QLtOKNCKpg=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=Dyr0ocwik9ZmyYEmwn2GonEAITJMbPfwwto/rx1XOjjqcNIgZWIbr24nho5JVpNfj
 owtQP0Devfo56hVuKO4qKbJj1l9Q3p75vpkVc60Q+iC72IHaaD1VDZMjnZoHHo689A
 owNZYldTZ7Lv5z9kn/8vlJZnaDeD6OtBI+z3xDHU=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 9937B1C26C8
 for <speakup@linux-speakup.org>; Tue, 31 Dec 2019 09:46:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1577803589;
 bh=XHJ6++TmecYNHL1R47y4Q31IhcbXnCMA/QLtOKNCKpg=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=iTo56Gig8SsjXuQUudo2f+if4+bs1e/iEfJkECt0zkq2pDS8KdUEPbLeQ80353Qs8
 525GhRVs7qByucmyYQZ5RYL568bcGZeQTP3wwNrTKcBZal1jfv9LOUzUrbZJcLPrnA
 aGUzT1H/tGj8gemdv6j7Trvqho2YfCTXokatGOW4=
Date: Tue, 31 Dec 2019 09:46:29 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup locking box on latest linux 5.3.15-1
In-Reply-To: <20191231114129.GA1937@rednote.net>
Message-ID: <alpine.DEB.2.21.1912310943070.9526@befuddled.reisers.ca>
References: <alpine.DEB.2.21.1912222137490.31217@befuddled.reisers.ca>
 <20191231114129.GA1937@rednote.net>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
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

Yes Janina: On my boxes the machine is locked up solid as in not able
to even ssh or ping the machine.

I have had to revert back to a 5.2.x series kernel to by-pass the
problem. I tried three different 5.3.x kernels extensively before
reverting.

   Kirk

On Tue, 31 Dec 2019, Janina Sajka wrote:

> Kirk:
>
> I think I'm also seeing this on my Arch system.
>
> The behavior is speech dies, and there seems no way to get it back short
> of a reboot.
>
> Best,
>
> Janina
>
> Kirk Reiser writes:
>> Hello folks: It appears the bug that visited speakup back in late
>> August is back and active. In kernel version 5.3.15-1 built on
>> 2019-12-07. It can very easily be reproduced by hitting the next-word
>> or previous-word functions quickly in series. In fact it is veryd
>> ifficult to not trigger the bug. This is in debian sid BTW. My
>> machines are amd64 based so I'm not sure if it's active on Intel
>> processors.
>>
>>   Kirk
>>
>>
>>
>>
>> _______________________________________________
>> Speakup mailing list
>> Speakup@linux-speakup.org
>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
