Return-Path: <speakup+bounces-1503-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 86C7DD38991
	for <lists+speakup@lfdr.de>; Sat, 17 Jan 2026 00:01:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1768604483;
	bh=svJLNxygth6SFYMwB/IU5PaeWQf8k/prHDwUuKU7fEM=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=fiRPXMcr/RG2kjwAuwF4q5rSvEevV1zS81lVbSgVcJNDU/gQFV4RJo5OKwqcWzj/8
	 6vgnwu4jIbYXe7lOrj8LquIYawtUc78jrtqrcnoLTa08IaWrglRaRSusL1oIAnlxY4
	 aqe+qWJjbUnQXmFtfSs8CGfhmrh2EOHadJ6FxqBI=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1CBEF381921; Fri, 16 Jan 2026 18:01:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1768604483;
	bh=svJLNxygth6SFYMwB/IU5PaeWQf8k/prHDwUuKU7fEM=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=fiRPXMcr/RG2kjwAuwF4q5rSvEevV1zS81lVbSgVcJNDU/gQFV4RJo5OKwqcWzj/8
	 6vgnwu4jIbYXe7lOrj8LquIYawtUc78jrtqrcnoLTa08IaWrglRaRSusL1oIAnlxY4
	 aqe+qWJjbUnQXmFtfSs8CGfhmrh2EOHadJ6FxqBI=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F0B343817DC
	for <lists+speakup@lfdr.de>; Fri, 16 Jan 2026 18:01:22 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1768604477;
	bh=svJLNxygth6SFYMwB/IU5PaeWQf8k/prHDwUuKU7fEM=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=W+IrXddTjPWcyAX2tIjlIfhIugvqRq9oAUw0kaTZZY7i4s2fMAKFlliy7UsWlYvaC
	 YkD42kv6THhE9cPfIBPClblVEyFrWnTaXRswmRzKcdEzYyNM5u8mi+AC37lJQC6KsH
	 yFpKOjdy29nECHBAa4zqGq8fts1Xj42iaXo50aB8=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 27B9E3817F9; Fri, 16 Jan 2026 18:01:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1768604476;
	bh=svJLNxygth6SFYMwB/IU5PaeWQf8k/prHDwUuKU7fEM=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=TITfiCZZhIPD1GN1tnIshaO48iceRO7Mqy3zEU3yt0YE1/vkTLMQMU7BDchukv6Wa
	 bHpj+TamQZBNPMjhf9hFPmSoVC5LRi3rZswYqTJBqS+nozFLwaPV5UB4jYQcCD8ck7
	 E25eci6gY0GPIohUnE7lFHTrOb7gBl4PSiFJgmZI=
Received: from localhost (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B043738099D;
	Fri, 16 Jan 2026 18:01:16 -0500 (EST)
Date: Fri, 16 Jan 2026 18:01:16 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: Janina Sajka <janina@a11y.nyc>
cc: speakup@linux-speakup.org
Subject: Re: Espeakup & Espeak Upgrades Broke Latency
In-Reply-To: <aWpRKvcLNxlSLfbU@A11y.NYC>
Message-ID: <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca>
References: <aWpRKvcLNxlSLfbU@A11y.NYC>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Janina: Your question is very much a valid one. I was hoping
someone else would answer you and we might all benefit from a solid
answer.

I use espeakup with espeak-ng on at least four computers and my
experience is that on a few it instantly flushes when a control or
another key is typed The exact reaction it was designed to be. But
more often than not on some computers it is not instantaneous and when
moving back across the screen with the review keys it becomes mushy
because the text sounds like it is all running together.

The fact that I use debian on these boxes would somewhat seem to
indicate that the software should all be exactly the same but at las
it certainly doesn't seem so.

Sometimes I can restart espeakup and it starts behaving itself
properly but other times theres no difference.

Yes, it is very frustrating just like the jumbled speech towards the
bottom of the screen when you just allow the standard output to rattle
on.

I'm sorry I don't have a nice answer for you but I wished to let you
know you are not alone with your experiences.

   kirk



On Fri, 16 Jan 2026, Janina Sajka wrote:

> Hi All:
>
> For some years I've been on Espeakup 0.8, avoiding upgrades because
> upgrades failed to get speech working
> properly, either with Espeak or Espeak-ng. Meanwhile, Speakup was
> working brilliantly with the older Espeakup/Espeak version, so I had
> left welll enough alone.
>
> Until this last week. I decided to try again. To my surprise and delight
> I now have Espeak-NG and Espeakup fully updated. Almost everything is
> fine--except for Speakup's shut up commands! Not stopping speech
> sufficiently quickly is a very big deal, as we all know.
>
> I'm using a wired USB keyboard. Ctrl might shut speech up immediately,
> or it might take a second or so. Numpad enter is the same. Maybe it
> works as it should, but maybe it's very laggy. Likewise the various
> numpad screen review keys. Same story all around.
>
> My first instinct was to return everything to previous versions, because
> laser quick shutup is that important. Unfortunately, restoring the old
> didn't fix things. I have the same behavior, regardless whether I'm on
> Espeak or Espeak-NG, and regardless the version of Espeakup.
>
> So, what might possibly be the story here? Needless to say I want
> Speakup's brilliant responsiveness back. But what's broken? And how to
> fix?
>
> All suggestions most welcome and greatly appreciated!
>
> Best,
> Janina
>
>

