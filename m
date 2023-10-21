Return-Path: <speakup+bounces-1028-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9F8967D1AB4
	for <lists+speakup@lfdr.de>; Sat, 21 Oct 2023 06:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1697861406;
	bh=RUPMfxUIjLaX4ftt2RD34tGe/IAjnJQE51NMlq81tXQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=IEDXRDhe84X+f4PCIsuAPGNZHV0gDRJhO0d/0+rxpgzZIieShGY2INMUg/Wg2KoOA
	 aYH0jv0/gB7HiZKQKDJ33SOv3ayXhP2Mpj2wM2LscUn0jH6/9D56ugNrtfo2Cg6Yyz
	 O3WsmkMDMXNeTkNkOlZnCN3HmMMp02BrQaTt83hA=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CCF5E38269B; Sat, 21 Oct 2023 00:10:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1697861406;
	bh=RUPMfxUIjLaX4ftt2RD34tGe/IAjnJQE51NMlq81tXQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=IEDXRDhe84X+f4PCIsuAPGNZHV0gDRJhO0d/0+rxpgzZIieShGY2INMUg/Wg2KoOA
	 aYH0jv0/gB7HiZKQKDJ33SOv3ayXhP2Mpj2wM2LscUn0jH6/9D56ugNrtfo2Cg6Yyz
	 O3WsmkMDMXNeTkNkOlZnCN3HmMMp02BrQaTt83hA=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A9EE13821B2
	for <lists+speakup@lfdr.de>; Sat, 21 Oct 2023 00:10:06 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1697861399;
	bh=RUPMfxUIjLaX4ftt2RD34tGe/IAjnJQE51NMlq81tXQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=VLvSAya/Sv+Ilae4kAk6P+u3WrTeeKB+W1m+q1NZB80xL+SbuSFgE4iYVpM6yJt7o
	 aeCQGLCDKs8CNciNHnqAjFHiDdUf/6+zgO4YKDewuQJcnLhAHARSgLBKvKcamfR+l1
	 ypx2Th7odv/pN+AU6JkZi+Bpy3d/p25yLEQnBbDU=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 31EA23821B2; Sat, 21 Oct 2023 00:09:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1697861398;
	bh=RUPMfxUIjLaX4ftt2RD34tGe/IAjnJQE51NMlq81tXQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=rLLAWtn/SxIZio4dBnuJZHTXRpLeBSebjXp9qdNaMxtnj7i0/ZOftVWNv7OLvhh3j
	 4ZzWmaNHaChDt2MYE4JVhqsIPPSyDm/nLJpmbwMX+a2XQeMyjnTzz5nMb5r42SeQpn
	 M3LtTDhZJRFD414zgb/JhM5x0UX1ilEIZbQ3MeX8=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5CC63380BA8;
	Sat, 21 Oct 2023 00:09:58 -0400 (EDT)
Date: Sat, 21 Oct 2023 00:09:58 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Jookia <contact@jookia.org>
cc: Didier Spaier <didier@slint.fr>, speakup@linux-speakup.org
Subject: Re: Announcing pod-kast with a k
In-Reply-To: <ZK-YSWJQLIBTcJgu@titan>
Message-ID: <86fdef3b-126b-2846-8775-045c952da6fb@reisers.ca>
References: <271c596a-9783-71c4-950f-2d2264c3e956@hubert-humphrey.com> <m31qhczy5s.wl-covici@ccs.covici.com> <b0e002e0-265c-109e-66a9-3e346efccb17@slint.fr> <ZK-YSWJQLIBTcJgu@titan>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-544124961-1697861398=:837831"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-544124961-1697861398=:837831
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Transfer-Encoding: 8BIT

Hey zookia and Larry: I am quite impressed with the potential of this
package. It definitely has some quirks and doesn't behave as I sort of
expected but it is a really nice start. I've been looking around for
something very easy my wife can use for listening to podcasts with and
this could be the solution. It's nicest feature is having the search
mechanism built in because almost all other podcast fetchers I've
found expects a person to just add an rss feed already found someplace
else.

Thank you for doing this project.

   Kirk

On Thu, 13 Jul 2023, Jookia wrote:

> Here is the source code:
>
> https://github.com/mlytle4218/pod-kast-rust
>
> On Thu, Jul 13, 2023 at 07:55:12AM +0200, Didier Spaier wrote:
>> I second what John said.
>>
>> Moreover I would try only a new software if/when the source is publicly
>> available and I can build/compile it myself.
>>
>> Cheers,
>> Didier
>>
>> Le 12/07/2023 à 22:13, John Covici a écrit :
>>> Since I use gentoo, a .deb would not do me much good.  Can I compile
>>> your app somehow?  Also, how do I search for a particular podcast in
>>> your client and do you have a facility where I can use a username and
>>> password if the feed requires it?
>>>
>>> Thanks, sounds interesting.
>>>
>>> On Wed, 12 Jul 2023 13:57:32 -0400,
>>> Chime Hart wrote:
>>>>
>>>> Hi All: I have been waiting a long time to offer a newer much
>>>> more intuative podcast client for those of us who like
>>>> menus-and-simplicity. I am and will be announcing here-and-in the
>>>> Blinux list, but since this works especially well in Speakup,
>>>> this list will enjoy it first.
>>>> DESCRIPTION
>>>>        Welcome to Pod-kast 0.8.0 written by Marc Lytle and
>>>> conceived by myself, Chime Hart.
>>>>
>>>>        Over  many  years almost all podcast clients seemed to be
>>>> lacking an interface which made sense, as well as features I was
>>>> hoping for.  The only one I understood was hpodder, but it is no
>>>> longer available.  In Pod-kast, since I
>>>>        am totally blind and listen with Speakup, a Linux
>>>> screen-reader, we took great care to make all functions really
>>>> obvious by having numbered menus and yes having the word "number"
>>>> before each digit removing any ambiguity.
>>>> Back again live, while you may be able to grab from a github
>>>> page, which seems really messy in L Y N X an easier option would
>>>> be a direct url from my web-site, but not linked from my site.
>>>> https://hubert-humphrey.com/pod-kast_0.8.0_amd64.deb
>>>> This is beta software-and-there still may be inconsistancies in
>>>> the man-page. Rather than clutterup the list, if you have
>>>> opperational issues, please write myself directly, or write an
>>>> author Marc at an address listed in the man-page. I `sincerely
>>>> hope all of you enjoy-and-find alot of success with this new
>>>> client, which I named with an alternative spelling, as there are
>>>> several podcast clients with the regular spelling.
>>>> Thanks so much in advance
>>>> Chime
>>>>
>>>
>>
>
--8323329-544124961-1697861398=:837831--

