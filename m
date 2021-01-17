Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C3E8A2F952E
	for <lists+speakup@lfdr.de>; Sun, 17 Jan 2021 21:41:30 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 48BA0380F24; Sun, 17 Jan 2021 15:41:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1610916090;
	bh=jTCYXr55Fu6gkBLbrgFX06VWHXAgAEBwaQa8GYNdupk=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=jEIzpBL7bssPQfOaxxv9nj5Yc9NzErxDEh2Bw57G/ibD3g1QAJFnyESRwKScwILk0
	 vf7hY6gZ7UJauWw/DDyQYA+hxYHZzwv3hPs36FcpjvD0CJMpl1mTgYA+W5yCeZ/WRq
	 TL5grBKaCBFOZNNXVGz/1AOPbWV04Cd0wGSDwSsU=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B6FF6380F21;
	Sun, 17 Jan 2021 15:41:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1610916087;
	bh=jTCYXr55Fu6gkBLbrgFX06VWHXAgAEBwaQa8GYNdupk=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=ebHlrM1wMwBl/YTsZ2kbEvPPTv1RkHllZBSRvekqX4gqRTrtTJeWpGVE9tMNU0jv1
	 in1rcju4O+yhxmfiYTvjG0o1RFRYDMdiIupXCBYDnBipEnvPVu1xLWJ4k7/SByXQyG
	 XfDLr6esaR25HaHqbj3zo5Mm5x7fU+roiA0CQk38=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A8C29380C00; Sun, 17 Jan 2021 15:41:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1610916086;
 bh=sLlIB2F9cgcTqXwTtU2zaT6ZGIwJVxFj2N1mf7NL/vs=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=uaM1JVFtXaLNuJYgF4lO3VeSusNZXO1UM5YTCsoH/1K0jNy94EdsALa4OrTq2QIf+
 Ps68S8F19qnqs0JABGxhuckKmXHKlIBie+y+eLkDHoS6K3mlqoCOI0mN4GSQdgSwIR
 JvagFNQY6tQMowKAG6o6/dmx8skcmdI0+HYUZins=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 7454E380BC0;
 Sun, 17 Jan 2021 15:41:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1610916086;
 bh=sLlIB2F9cgcTqXwTtU2zaT6ZGIwJVxFj2N1mf7NL/vs=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=uaM1JVFtXaLNuJYgF4lO3VeSusNZXO1UM5YTCsoH/1K0jNy94EdsALa4OrTq2QIf+
 Ps68S8F19qnqs0JABGxhuckKmXHKlIBie+y+eLkDHoS6K3mlqoCOI0mN4GSQdgSwIR
 JvagFNQY6tQMowKAG6o6/dmx8skcmdI0+HYUZins=
Date: Sun, 17 Jan 2021 15:41:26 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: covici@ccs.covici.com, 
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: The mailing list
In-Reply-To: <m3im7vs5vd.wl-covici@ccs.covici.com>
Message-ID: <alpine.DEB.2.23.453.2101171538310.109267@befuddled.reisers.ca>
References: <alpine.DEB.2.23.453.2101171338580.106951@befuddled.reisers.ca>
 <m3im7vs5vd.wl-covici@ccs.covici.com>
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

I'm thinking about it but mailman3 looks really clunky and it requires
a database like sqlite or mysql or something. I feel that's kind of
stupid for mail messages but I am looking at it. If it would just take
the old archives and integrate them into the new system then I'd
definitely do that but the last time I tried it didn't work.


On Sun, 17 Jan 2021, John Covici wrote:

> Why not go to mailman 3 -- it sounds like a bit of a pain, but doable.
>
> On Sun, 17 Jan 2021 13:45:21 -0500,
> Kirk Reiser wrote:
>>
>> Hi folks: I believe we are in for a few days of intermittent mailing
>> list reliability. Our current package mailman runs through python 2.7
>> but python2 has been depricated and the software has been removed
>> twice by my upgrading packages. I guess it's time to move the list to
>> some other package. It does not appear there is a smooth upgrade path
>> to mailman3 so I need to figure out what other system to move toward.
>>
>> Hopefully I won't break it to badly but at this stage I'm not quite
>> sure what to do with it but it's currently breaking my entire
>> dist-upgrade ability.
>>
>>   Kirk
>>
>> _______________________________________________
>> Speakup mailing list
>> Speakup@linux-speakup.org
>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>>
>
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
