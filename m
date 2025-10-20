Return-Path: <speakup+bounces-1446-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D4012BF234B
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 17:49:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1760975381;
	bh=qBkZgOo7oiniMdYO+j8eAoYkKtYyQzgdoLyqQ8EPX7k=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=RN4uLBSVswa7vzrAG/RwiwCggAxGWdlWsVIkeVK3kRtAW9PeEbq2gOo+RQbmrOBrw
	 1kqj/JFEZLXpBVTiEvOnvnITQjHGVcSc1fj5h+4AYGBr4aum8bu5v7zd/W7Hp26sZe
	 fdsyDMUpvLCxRAT0SMRb3YRJCOuZ8tBBK/T8Uhpc=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E86CC382A42; Mon, 20 Oct 2025 11:49:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1760975381;
	bh=qBkZgOo7oiniMdYO+j8eAoYkKtYyQzgdoLyqQ8EPX7k=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=RN4uLBSVswa7vzrAG/RwiwCggAxGWdlWsVIkeVK3kRtAW9PeEbq2gOo+RQbmrOBrw
	 1kqj/JFEZLXpBVTiEvOnvnITQjHGVcSc1fj5h+4AYGBr4aum8bu5v7zd/W7Hp26sZe
	 fdsyDMUpvLCxRAT0SMRb3YRJCOuZ8tBBK/T8Uhpc=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C79483829A1
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 11:49:41 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1760975374;
	bh=qBkZgOo7oiniMdYO+j8eAoYkKtYyQzgdoLyqQ8EPX7k=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=MBt+h1UH6zXqSa8JtWOqi6H0L0TlpOhjZx3hXka4MEsnzSWNwnOyEc5JrDlVma0k4
	 EWL7eQASGqCCejy9amj51VyXi2c68LSpnrhsoDgRFOKpCgi4sbnUUOsXnmLtBWDVWX
	 gGOZghmCEjqFPNmERoYqtIztiqmzcAFvMLSbpcUY=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 797E93829A1; Mon, 20 Oct 2025 11:49:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1760975373;
	bh=qBkZgOo7oiniMdYO+j8eAoYkKtYyQzgdoLyqQ8EPX7k=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=jlMG0cXFu1fEgOg/rxHZGYSB53HMdQtNI2XwplRePObHrJ04oviaPuWcuCngq1H8m
	 8eqAj5qGRIL+Keguog/xCOujz1ebKzLM+cJd8zNJkxHI/nykTltYm/CTqRqVutwbAy
	 LA2M14PvGIoB0TpM3vaN6r7O628py5f505qKHrck=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 16A00382966;
	Mon, 20 Oct 2025 11:49:33 -0400 (EDT)
Date: Mon, 20 Oct 2025 11:49:33 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: K0LNY ?? <glenn@ervin.email>
cc: speakup@linux-speakup.org
Subject: Re: Voxin With Espeakup
In-Reply-To: <0b5701dc41ca$5edf3d40$01ffa8c0@nucwin10>
Message-ID: <ca477f4f-952d-93c0-fc67-56a7c24f8f24@reisers.ca>
References: <0b4a01dc418a$c8105c80$01ffa8c0@nucwin10> <925db357-1d21-2b65-7882-45d0a49911cf@reisers.ca> <0b5701dc41ca$5edf3d40$01ffa8c0@nucwin10>
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

Hello again Glen: I don't know what python-speech is but I don't think
it has anything to do with speech-dispatcher or speakup. As to whether
you need to uninstall espeakup, it depends on what you've installed
last speechd-up or espeakup. They are both connectors from speakup but
they connect to different synth packages. I believe they both are
set-up to be the default connector so probably the last one will be
the considered default. If speech-dispatcher is installed and
configured you should be able to run speechd-up by hand to make sure
that everything is working. Then you can look into whether speechd-up
is set-up to be the default connector used.

   Kirk

On Mon, 20 Oct 2025, K0LNY ?? wrote:

> Hi Kirk,
> Thanks for getting back.
> I did install speechd-up after I installed speech-dispatcher, and
> python3-speechd .
> Do I need to uninstall espeakup?
> I've tried installing
> speakup
> but there seems to be no package by that name.
> Thanks.
>
> Glenn
> ----- Original Message -----
> From: "Kirk Reiser" <kirk@reisers.ca>
> To: "K0LNY ??" <glenn@ervin.email>
> Cc: <speakup@linux-speakup.org>
> Sent: Monday, October 20, 2025 7:31 AM
> Subject: Re: Voxin With Espeakup
>
>
> Hi Glen: I believe you wished to know if voxin works with speakup
> rather than espeakup. Espeakup is a connector between speakup and
> espeak as you have mentioned. If you wish to use speakup with speech
> dispatcher you need to install speechd-up. It used to be maintained by
> Chris Brannon who is no longer with us so I don't know who is
> maintaining it these days if any.
>
> I am CC'ing this to the speakup list so others might see it and answer
> your question if possible.
>
>   Kirk
>
>
> On Mon, 20 Oct 2025, K0LNY ?? wrote:
>
>> Hi Kirk,
>> I wonder if you can tell me if Voxin should work with espeakup.
>> I have voxin installed on my Raspberry PI, and it talks with spd-say and
>> with voxin-say.
>> So that part is working.
>> When I installed espeakup, it was using espeak, and after I installed
>> speech-dispatcher and ran spd-conf to use voxin, then espeak no longer
>> talks.
>> It is still running, but I just cannot get it to use the voxin.
>> I changed the default synth in /etc/default/espeakup, but that didn't fix
>> it.
>> If you could offer some guidance, it would be much appreciated.
>> Thanks.
>>
>> Glenn
>
>

