Return-Path: <speakup+bounces-1133-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9B3328BD65F
	for <lists+speakup@lfdr.de>; Mon,  6 May 2024 22:41:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1715028079;
	bh=NSv/afLxfoqb5K9dbkbrZB8f4kdqtgeV6ZE7e02ZqC0=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=tSqcsxa7SN/8wslcfcuCMCb6U1Oisk9b82uv6hmMk6jVwX7wX4bu+bNJ/g5CdzMGM
	 L7vzq2rg6jGMUJo160ZfWF/nykg9rTvy9uArRQLJX8/KQXOXygFqyAVEpYZ7DSDzpg
	 MF/KwAhQyZWS7Mp3PDMOsaYDrtppDCJ93FJ/3BLg=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9D92FC80B8B; Mon, 06 May 2024 16:41:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1715028079;
	bh=NSv/afLxfoqb5K9dbkbrZB8f4kdqtgeV6ZE7e02ZqC0=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=tSqcsxa7SN/8wslcfcuCMCb6U1Oisk9b82uv6hmMk6jVwX7wX4bu+bNJ/g5CdzMGM
	 L7vzq2rg6jGMUJo160ZfWF/nykg9rTvy9uArRQLJX8/KQXOXygFqyAVEpYZ7DSDzpg
	 MF/KwAhQyZWS7Mp3PDMOsaYDrtppDCJ93FJ/3BLg=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7CFEEC80B8B
	for <lists+speakup@lfdr.de>; Mon, 06 May 2024 16:41:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1715028071;
	bh=NSv/afLxfoqb5K9dbkbrZB8f4kdqtgeV6ZE7e02ZqC0=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=ph8UpXe2e+k4Bpe6b+65dfN/feBKoQNEfhbpFFXB4CMp2xBvnxF7yHreNPrCJr8my
	 fj/66tHSa6jAgbNBSV8CZj1BtuWozc9yjUPpdw6oWA8uGnZIKJt6YsxDDirKFOg6l4
	 sJvfFKtbW1TUP+vNwV3HFBakfgq2hTYAXFG5OdnA=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 56B13C80BA9; Mon, 06 May 2024 16:41:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1715028070;
	bh=NSv/afLxfoqb5K9dbkbrZB8f4kdqtgeV6ZE7e02ZqC0=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=b/HUpgG1anFHY9ucXvw9TaTONl2OSvldPwn1n3PoJE73QE0pPoX11pSfbd81XPrNf
	 0g+IKBug45eDJx3vDhGxtaH6aKpYw9LxiUiKE6vDr8614M2vhzF3iuNU0/MaB7pw9X
	 ztjgELrlo0pQCBIjMmpGE9U9kqPVAIrf3IaJQIaQ=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id CBEA1C80B8B;
	Mon, 06 May 2024 16:41:10 -0400 (EDT)
Date: Mon, 6 May 2024 16:41:10 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Janina Sajka <janina@rednote.net>
cc: Chime Hart <chime@hubert-humphrey.com>, speakup@linux-speakup.org
Subject: Re: Can We `Please Enjoy Single Digit Numbering in Speakup?
In-Reply-To: <ZjjwWbRcbtXWhaWc@rednote.net>
Message-ID: <42ef7a22-09b9-4395-dcf8-980514f10fb5@reisers.ca>
References: <af4eb9cb-7a49-f290-7fbe-d77cb5e39982@hubert-humphrey.com> <ZjjPiNYlatNpb7tK@rednote.net> <4411ea8e-2679-e510-4c40-3662964802af@hubert-humphrey.com> <ZjjwWbRcbtXWhaWc@rednote.net>
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

I realize it may be a bit quick for some folks but you can have
speakup say numbers individually by doing a double say word on the
offending number. I don't remember exactly but there may even be a
character delay time in the /sys/accessibility/speakup tree, yes,
say_control and say_word_ctl.

   Kirk

On Mon, 6 May 2024, Janina Sajka wrote:

> Sure, Chime. Clever hacks like John's could go into the screen reader, I
> suppose. I was simply pointing out the correct place for the fix is to
> give the TTS the ability to say digits and not numbers.
>
> The logic is fairly simple:
>
> Look at every string of characters, i.e. from white space to the next
> white space.
>
> If there are digits in that string add a space after each char in what
> you send to the TTS engine.
>
> That would get you ham radio call signs in addition to phone numbers,
> zip codes, and teleconference meeting IDs.
>
> It would, of course, read prices as digits, too. You'd hear three nin
> dot five two and not thirty nine decimal fifty two, or if the engine
> knows about dollar signs thirty nine dollars and fifty two cents.
>
> I could easily live with prices as digits to have more accessible phone
> numbers, zip codes, and teleconference IDs myself! :)
>
> Best,
> Janina
>
> Chime Hart writes:
>> Thank you Janina-and-John for your analysis. Janina, would you also think an
>> acception dictionary would also be purely dependant on each TTS? I think
>> Speakup-and-YASR are an only Linux screen-readers without such a dictionary.
>> Not sure if Storm reads this list, but I think Fenrir has a way of changing
>> pronunciations?I asked Storm about single digits-and-he rigged up something,
>> I think useing John's method, but it only works with Allison, not the
>> DecTalk software. And Janina, recently in addition to phone
>> numbers-and-zip-codes, we have Zoom ID numbers. I suppose as I think Kirk
>> created Speakup, he would be an authority on why these 2 features were never
>> implemented.
>> I would think since we can easily ajust caractors, we could also enjoy these
>> other options.
>> Chime
>
>

