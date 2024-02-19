Return-Path: <speakup+bounces-1081-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5FC6D859B05
	for <lists+speakup@lfdr.de>; Mon, 19 Feb 2024 04:35:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1708313734;
	bh=+9SwMP0LJ7dPnRXBDAT1Chax76urgKf5IAJy6mcf6M8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=mWDXwUIL52atjr3EUPxK11PciBFaORBLbzTF+zBymo7yuhqXtVyLyEJlJGGfY0GZt
	 6WCJL769rae3fsgrpqoweuuQnPyxEM3qOs0AwHOOA4nYOVP6Kop+TaIo6XzbhzSl/o
	 3Qc79NP80o99/ktmlp6UiECOXfcCBdd+R6mHKA9I=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 67E5B382121; Sun, 18 Feb 2024 22:35:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1708313734;
	bh=+9SwMP0LJ7dPnRXBDAT1Chax76urgKf5IAJy6mcf6M8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=mWDXwUIL52atjr3EUPxK11PciBFaORBLbzTF+zBymo7yuhqXtVyLyEJlJGGfY0GZt
	 6WCJL769rae3fsgrpqoweuuQnPyxEM3qOs0AwHOOA4nYOVP6Kop+TaIo6XzbhzSl/o
	 3Qc79NP80o99/ktmlp6UiECOXfcCBdd+R6mHKA9I=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 45D173820AE
	for <lists+speakup@lfdr.de>; Sun, 18 Feb 2024 22:35:34 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1708313726;
	bh=+9SwMP0LJ7dPnRXBDAT1Chax76urgKf5IAJy6mcf6M8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=PSseQNHSaUUs2D+lGW9r4aKh2bQsVX/7ZPm9VQ+eglOo5fQPFnX2gThyjAE+bMPlx
	 Hqkj65raJPpatJjHqRkoJeBuXwoeNROrBz+Zt8kS8pUZVg7pyDgXIcPqMP2pZg7N9X
	 UXJXWxf+beeLiN+XpXIVrNm/vBTyYE+zZDrI+sE4=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A460D3820F2; Sun, 18 Feb 2024 22:35:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1708313726;
	bh=+9SwMP0LJ7dPnRXBDAT1Chax76urgKf5IAJy6mcf6M8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=PSseQNHSaUUs2D+lGW9r4aKh2bQsVX/7ZPm9VQ+eglOo5fQPFnX2gThyjAE+bMPlx
	 Hqkj65raJPpatJjHqRkoJeBuXwoeNROrBz+Zt8kS8pUZVg7pyDgXIcPqMP2pZg7N9X
	 UXJXWxf+beeLiN+XpXIVrNm/vBTyYE+zZDrI+sE4=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 80BF93820A1;
	Sun, 18 Feb 2024 22:35:26 -0500 (EST)
Date: Sun, 18 Feb 2024 22:35:26 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: Karen Lewellen <klewellen@shellworld.net>
cc: speakup@linux-speakup.org
Subject: Re: Domain expiration
In-Reply-To: <Pine.LNX.4.64.2402181537270.775092@users.shellworld.net>
Message-ID: <4a5a865f-dbf8-a13a-3aa0-118a854ad022@reisers.ca>
References: <76018e2b-1c58-9a09-2e24-bc2c91697d88@reisers.ca> <Pine.LNX.4.64.2402181537270.775092@users.shellworld.net>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Karen: The registrar I have linux-speakup.org with is
internic.com. They gave me some bull shit about because it was a .org
domain they had to charge $46 a year plus tax etc. My other registrar
told me they wanted $25 for a single year but discounts for multi-year
contracts. It would probably be significantly cheaper if I were to
take it out for ten years or so.

Internic has always been much more expensive than other registrars but
when I started with them over twenty years ago there were very few
domain name providers around at all.

   Kirk

On Sun, 18 Feb 2024, Karen Lewellen wrote:

> Hi there,
> Just wondering, how much were they going to charge you?
> All of my domain, save the one here in Canada are with gkg.net
> www.gkg.net.
> I spend on average $12 a year,  with the amazing ability to update with them 
> on the phone.
> Even my Canadian domain with bare medal
> www.baremedal.ca  I hope lol, is little more than $14.
> why is yours so expensive?
> just wondering,
> Kare
>
>
>
> On Sun, 18 Feb 2024, Kirk Reiser wrote:
>
>> Hello everybody: I have decided after poking around with my domain
>> registrar that I'm going to allow the domain linux-speakup.org to
>> expire. My current registrar wants to much money yearly to continue
>> with them and transferring the domain to my other registrar is more
>> work than I wish to put in. I am almost 72 years old and so
>> registering for any length of time really isn't worth it to me.
>> 
>> I will keep this list going as speakup@reisers.ca and Chris Brannon
>> will continue to archive the list. I will also put a link on the
>> reisers.ca webpage to point to the old sites directory so at least for
>> quite a while that will also remain.
>> 
>> I will make the switch over on March 1st although it'd be more amusing
>> to do it on the day of the command March 4th! I'll send out a note
>> once the switch is complete and hopefully you won't have to do
>> anything except move from speakup@linux-speakup.org to
>> speakup@reisers.ca when posting a message.
>>
>>  Kirk
>> 
>> 
>> 
>

