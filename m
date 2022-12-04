Return-Path: <speakup+bounces-880-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BC288641C06
	for <lists+speakup@lfdr.de>; Sun,  4 Dec 2022 10:23:57 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=aGHD7gfo;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C8104382A66; Sun,  4 Dec 2022 04:23:56 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A9F2E382A1E
	for <lists+speakup@lfdr.de>; Sun,  4 Dec 2022 04:23:56 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C5953382A27; Sun,  4 Dec 2022 04:23:47 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 76B48380A3F
	for <speakup@linux-speakup.org>; Sun,  4 Dec 2022 04:23:47 -0500 (EST)
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id A3A94E6AAE
	for <speakup@linux-speakup.org>; Sun,  4 Dec 2022 09:23:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1670142205; bh=EfefeqywrYIfl3pjQQkInOngUwAXTzgtgsF7kJ65xCk=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=aGHD7gfo+ECW5IO4RKxPZhv7gfh9RgngpC8+RXc0kT64arEer1S18ZtwznDAvTtRr
	 p6nCFSZ/pDQCTlAFITIee7s+FSj93sBLHfvPhjYV3yCvLb1YUZGCb4xXGKO/Q+I5lH
	 bO3gGQiVUTznKv/w2wsjxHvOztv1K/7GieISB3UtVs8/+XVJCFi+tfsL8fJZDU8Jk/
	 24EXKTxTq729Kl1guzg+KH4QReA2zK70MGRztZJomxr8N1yw8jLmvDLeRS0Gr52cYX
	 Q7byBSs3vOVHqEo0m7ISIOf5odcs7AbK710K6NRZtIWVTcsXqH+B5MUdf50xZu2iP9
	 UDz2kVmkL7BfA==
Message-ID: <5ab5197f-f3c3-c7f1-b497-0e702525d2cd@slint.fr>
Date: Sun, 4 Dec 2022 10:23:42 +0100
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: change eSpeak Default Voice
Content-Language: en-US
To: speakup@linux-speakup.org
References: <013f01d9074d$551a6650$88ffa8c0@Win7VM>
 <Y4wZa/0WtgPE3nyH@gregn.net> <017701d90794$4d7619c0$88ffa8c0@Win7VM>
 <Y4wcSYOKzFn/yIeh@gregn.net> <018001d90797$3bf04b00$88ffa8c0@Win7VM>
 <Y4woAGJEUf430mTc@gregn.net> <018701d9079f$53126810$88ffa8c0@Win7VM>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <018701d9079f$53126810$88ffa8c0@Win7VM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

answer in line.

Le 04/12/2022 à 06:14, K0LNY_Glenn a écrit :
> Well Linux is not my main operating system, and I think it's a fair question 
> to an email  list.

It would have been a fair question if asked in the right list, BUT this one if
primarily about the speakup kernel driver, rather than software that make use of
it, like speakup or speechd-up.

Further you should have stated which distribution you are using and if you were
using espeakup or speechd-up, which would have allowed to give you an adapted
answer.

You can learn how to ask questions the smart way reading this:
http://www.catb.org/~esr/faqs/smart-questions.html

> That is the biggest problem with Linux users, they think they are above 
> helping people who aren't into that operating system as much as they are.

Is that how grateful you are for people who spend their time, of which they have
already not enough to do all they need to, to try to help you?

> In my opinion, the only question that shouldn't be asked about on a list 
> like this, is one that is repeatedly asked, as folks should save useful 
> information that comes in through these lists, like I do, for later looking 
> up the information already saved.

Again, only if the question is properly asked and in the right channel, see above.

> But there is so little traffic on these Linux lists, that I can only imagine 
> that people have given up asking for guidance.

> And the suggestion to a list member to google something, rather than 
> helping,  is ludicrous, because the information you get from Google 
> searches, is provided by lists like this, where people have asked the 
> question before, and therefore, if questions don't get answered on these 
> lists, then Google won't find answers for people searching on-line.

What? Nobody suggested you google anything, just to read the documentation
provided with your software, in this case at least using the "man" utility
installed in your system.

> I have gotten some help here, but I don't understand why people bother to 
> reply, or even be on a list if they don't want to help others.

This very unfair statement convince me that we were wrong wasting our time
trying to help you. I won't do this mistake again.

Good luck,
Didier

