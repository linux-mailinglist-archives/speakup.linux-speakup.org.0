Return-Path: <speakup+bounces-1267-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 65975AA9E71
	for <lists+speakup@lfdr.de>; Mon,  5 May 2025 23:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1746482076;
	bh=BRG0tvVND69IUWuU7sGAbO8+EQ5Ypmib8+l7a01V8os=;
	h=Date:From:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=NdCZ7vQdpknb7HcFvqP9UxsmiyZ+ZkkYsr7VNGooQE8FFT7PFMeHoUSVBcDmof8Eq
	 jrJekCgfz1ahqKy50xXCD/n683azUTUtIQQp5TSyQjHNkHenR+4R2Tn4TnCdU0VH1p
	 PKH7CxmeDdIox1taxw+dZeksI9c7q5VkC3YStH6o=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 550E63825E3; Mon, 05 May 2025 17:54:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1746482076;
	bh=BRG0tvVND69IUWuU7sGAbO8+EQ5Ypmib8+l7a01V8os=;
	h=Date:From:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=NdCZ7vQdpknb7HcFvqP9UxsmiyZ+ZkkYsr7VNGooQE8FFT7PFMeHoUSVBcDmof8Eq
	 jrJekCgfz1ahqKy50xXCD/n683azUTUtIQQp5TSyQjHNkHenR+4R2Tn4TnCdU0VH1p
	 PKH7CxmeDdIox1taxw+dZeksI9c7q5VkC3YStH6o=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3708038216D
	for <lists+speakup@lfdr.de>; Mon, 05 May 2025 17:54:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1746482069;
	bh=BRG0tvVND69IUWuU7sGAbO8+EQ5Ypmib8+l7a01V8os=;
	h=Date:From:cc:Subject:In-Reply-To:References:From;
	b=XCK6P++YDW6HjwkuNGdd1nAKBA5czXB0ukxl4He5qCg5tEKTpgEN4RvaOa5hq0Htq
	 choaM6WXnxUiKYPcDnf0TgnoHYZv5tZHvGt2xZeVQKkpWT/FHG0G7uMTzuQtOayLh2
	 OIHeSOwllfrDnwNadsSpsQQvT23a56nx3bbCxZEg=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5D8A938216D; Mon, 05 May 2025 17:54:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1746482069;
	bh=BRG0tvVND69IUWuU7sGAbO8+EQ5Ypmib8+l7a01V8os=;
	h=Date:From:cc:Subject:In-Reply-To:References:From;
	b=XCK6P++YDW6HjwkuNGdd1nAKBA5czXB0ukxl4He5qCg5tEKTpgEN4RvaOa5hq0Htq
	 choaM6WXnxUiKYPcDnf0TgnoHYZv5tZHvGt2xZeVQKkpWT/FHG0G7uMTzuQtOayLh2
	 OIHeSOwllfrDnwNadsSpsQQvT23a56nx3bbCxZEg=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3E659382042
	for <speakup@linux-speakup.org>; Mon, 05 May 2025 17:54:29 -0400 (EDT)
Date: Mon, 5 May 2025 17:54:29 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Load speakup module as kernel parameter?
In-Reply-To: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu>
Message-ID: <68990aef-3b8a-fdaa-4b2f-98b9f79c39ca@reisers.ca>
References: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu>
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

Okay, I'm showing my age but I still use the /etc/modules file to load modules including speakup. You should be able to add a line like:

speakup_ltlk

That should load the main speakup module and the LiteTalk module.

   Kirk

On Mon, 5 May 2025, John G. Heim wrote:

> Anybody know if it is still possible to load a speakup module as a kernel 
> parameter? The reason i want to do this is that I've been playing around with 
> GRML, the Linux distro designed to be booted from a USB stick, and I want to 
> tell it to load a speakup module during boot. If I could do that, then I 
> could make a custom GRML image that would come up talking via my hardware 
> synth.
>
>
>
>

