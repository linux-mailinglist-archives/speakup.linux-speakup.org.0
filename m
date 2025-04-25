Return-Path: <speakup+bounces-1248-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 96AB7A9D628
	for <lists+speakup@lfdr.de>; Sat, 26 Apr 2025 01:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1745623224;
	bh=lRq3qn7tHw7DUl6gXQqllRgN2ERJ8hqfxd/7bmJgQys=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=U7KD8HtsQlCeoDliTFEWgPb2DzUbqAXbmK1dLIibMGxqnbupBkhLV9/cgLw1OJWrZ
	 8zrZItlWScWtKZDh9YzmlVhZPbDZagBjmE1riWtuqeGednlUPLoKvigcBlwcld86dZ
	 ERzmTocr1BRWKMULsQ0ukVFpQc1zQdwg2lFkdfXU=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D2C15382923; Fri, 25 Apr 2025 19:20:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1745623224;
	bh=lRq3qn7tHw7DUl6gXQqllRgN2ERJ8hqfxd/7bmJgQys=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=U7KD8HtsQlCeoDliTFEWgPb2DzUbqAXbmK1dLIibMGxqnbupBkhLV9/cgLw1OJWrZ
	 8zrZItlWScWtKZDh9YzmlVhZPbDZagBjmE1riWtuqeGednlUPLoKvigcBlwcld86dZ
	 ERzmTocr1BRWKMULsQ0ukVFpQc1zQdwg2lFkdfXU=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B341438208E
	for <lists+speakup@lfdr.de>; Fri, 25 Apr 2025 19:20:24 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1745623217;
	bh=lRq3qn7tHw7DUl6gXQqllRgN2ERJ8hqfxd/7bmJgQys=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=qMMda3zua+twvBJPJGSAeCM7ae/fziGdVPArtKa8B7GUD83g3ubi58BCxCN5n/jXR
	 soHaeqtkcFwrX2VNKNp4BfiCUYx/hVavxj1jNx6NfWl1LhMXXpjz+0APzaW27RGV4W
	 p73ZXEJA0NaiJAW4ZzcK+tbndIAiDExDLwcgBXis=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C53CD3820F4; Fri, 25 Apr 2025 19:20:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1745623217;
	bh=lRq3qn7tHw7DUl6gXQqllRgN2ERJ8hqfxd/7bmJgQys=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=qMMda3zua+twvBJPJGSAeCM7ae/fziGdVPArtKa8B7GUD83g3ubi58BCxCN5n/jXR
	 soHaeqtkcFwrX2VNKNp4BfiCUYx/hVavxj1jNx6NfWl1LhMXXpjz+0APzaW27RGV4W
	 p73ZXEJA0NaiJAW4ZzcK+tbndIAiDExDLwcgBXis=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A326F380B06
	for <speakup@linux-speakup.org>; Fri, 25 Apr 2025 19:20:17 -0400 (EDT)
Date: Fri, 25 Apr 2025 19:20:17 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: Re: I break everything!
In-Reply-To: <9677270c-1283-4624-8246-804e41ff3287@math.wisc.edu>
Message-ID: <ca8ce1b0-dbd1-5fa7-8887-53522e29e8d4@reisers.ca>
References: <3b7d9a99-8314-77f0-62ce-e6ca3e6ee1e4@reisers.ca> <9677270c-1283-4624-8246-804e41ff3287@math.wisc.edu>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1452615637-1745623217=:81889"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1452615637-1745623217=:81889
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

Haha, thanks for the vote of confidence but that was a long time
ago. I'm always grateful for everyone that stepped up and continue to
make speakup a reliable part of the kernel even to this day.

I'm very happy that these messages came through. It redeems the many
hours of work I put into rebuilding the system. I am definitely no
longer enamoured with debian as a distro however. I would recommend
void linux for their ability to keep things simple and accessible in
the future.

Thank you all!

   me

On Fri, 25 Apr 2025, John G. Heim wrote:

> Well, you don't break everything. You are the reason Linux accessibility was 
> not broken for a couple of decades.
>
>
>
> On 4/25/25 1:53 PM, Kirk Reiser wrote:
>> So, I did a apt full-upgrade the other day and everything blew up. I
>> have everything mostly pieced back together except mastodon.el and I'm
>> getting weird cron notifications about this list and thus, this is a,
>> wonder if it'll work, post.
>> 
>>   me
>> 
>> 
>
--8323329-1452615637-1745623217=:81889--

