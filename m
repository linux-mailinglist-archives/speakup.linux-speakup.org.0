Return-Path: <speakup+bounces-1444-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 98DD7BF130B
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 14:31:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1760963479;
	bh=Z/RPsupyfvtSVaaUCrI/OXOBacpp6pe6aSX19QT44RQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=jpwq3EELjwtt8xduGAogJbctK+O0eSUNCKwm55DRh91kNpW+ahXoRYdICDyV/C1Qt
	 mngt7AmqZGaHuXv+EY46VBfQ4gN8JxrZcaonAUGAt8L4vfHzYxP411Ng4IKx3e/86i
	 iGngqzVSc6T/UKjHHc9o5emXCcNV9xmQ44V5rh0A=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9379E382A43; Mon, 20 Oct 2025 08:31:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1760963479;
	bh=Z/RPsupyfvtSVaaUCrI/OXOBacpp6pe6aSX19QT44RQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=jpwq3EELjwtt8xduGAogJbctK+O0eSUNCKwm55DRh91kNpW+ahXoRYdICDyV/C1Qt
	 mngt7AmqZGaHuXv+EY46VBfQ4gN8JxrZcaonAUGAt8L4vfHzYxP411Ng4IKx3e/86i
	 iGngqzVSc6T/UKjHHc9o5emXCcNV9xmQ44V5rh0A=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 748A33829A3
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 08:31:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1760963472;
	bh=Z/RPsupyfvtSVaaUCrI/OXOBacpp6pe6aSX19QT44RQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=trcKZt3oN2ae75wA4mJCfIkV7PBW/TYplB5ezEsRypxtDzkjSFdv0u55V4CODJKah
	 2++7R5t5RtmZACAyU5YdEBKc2wpSRK9DbrefV/5+y4DaAM/LTtI4Aa4Ywoaq3reDe3
	 9Ob+okNlKSYfBbm9Hs/Jv4jeBpJjOxNYKAOFyGAY=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 21762382952; Mon, 20 Oct 2025 08:31:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1760963471;
	bh=Z/RPsupyfvtSVaaUCrI/OXOBacpp6pe6aSX19QT44RQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=kj9Q/iQ9HO949jQDwNwquxSOoTCl+hcR97xlemY63+NIUZKEwpMepDDTNmwWzV38I
	 j6P48j9m7uxlJj4Pf51/yd9VB7+MuC7xXmVz0Ug6EJOrjiYsgTpN6P0Mao6ndVroPe
	 Had3qcyJWhhZpq6fXnkEkuSFw3bgmMBuugl7+3L0=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 32C1638294B;
	Mon, 20 Oct 2025 08:31:11 -0400 (EDT)
Date: Mon, 20 Oct 2025 08:31:11 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: K0LNY ?? <glenn@ervin.email>
cc: speakup@linux-speakup.org
Subject: Re: Voxin With Espeakup
In-Reply-To: <0b4a01dc418a$c8105c80$01ffa8c0@nucwin10>
Message-ID: <925db357-1d21-2b65-7882-45d0a49911cf@reisers.ca>
References: <0b4a01dc418a$c8105c80$01ffa8c0@nucwin10>
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

Hi Glen: I believe you wished to know if voxin works with speakup
rather than espeakup. Espeakup is a connector between speakup and
espeak as you have mentioned. If you wish to use speakup with speech
dispatcher you need to install speechd-up. It used to be maintained by
Chris Brannon who is no longer with us so I don't know who is
maintaining it these days if any.

I am CC'ing this to the speakup list so others might see it and answer
your question if possible.

   Kirk


On Mon, 20 Oct 2025, K0LNY ?? wrote:

> Hi Kirk,
> I wonder if you can tell me if Voxin should work with espeakup.
> I have voxin installed on my Raspberry PI, and it talks with spd-say and with voxin-say.
> So that part is working.
> When I installed espeakup, it was using espeak, and after I installed speech-dispatcher and ran spd-conf to use voxin, then espeak no longer talks.
> It is still running, but I just cannot get it to use the voxin.
> I changed the default synth in /etc/default/espeakup, but that didn't fix it.
> If you could offer some guidance, it would be much appreciated.
> Thanks.
>
> Glenn

