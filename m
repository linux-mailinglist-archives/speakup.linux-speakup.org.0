Return-Path: <speakup+bounces-1242-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 168EBA2F309
	for <lists+speakup@lfdr.de>; Mon, 10 Feb 2025 17:19:33 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=ic9Yn1U7;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F03D8382235; Mon, 10 Feb 2025 11:19:20 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D0DD738190A
	for <lists+speakup@lfdr.de>; Mon, 10 Feb 2025 11:19:20 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E72C3381909; Mon, 10 Feb 2025 11:19:13 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1887C3818C9
	for <speakup@linux-speakup.org>; Mon, 10 Feb 2025 11:19:13 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Ys8sQ0Tlqz4ssf
	for <speakup@linux-speakup.org>; Mon, 10 Feb 2025 11:19:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1739204346; bh=HmB4haQZZHgz9A8APhvCYPF5ziQh+Jhcll/U5I3RsDM=;
	h=Date:From:To:Subject;
	b=ic9Yn1U7TxqkCVr/vldP9n3JlQ8gVfBozyVPC6KX6iNvG7RGSxS4x94PAxqMXAyBM
	 /4BaP/hAvHxsGnu6pD8GnPO+dE1DnxVLTiMQRWQX2gmNeXgb4k6E4COAaciFouZ4qw
	 bTJIqJLnngAtc41CG+E5lhzQYiyBCuADG1mjM7JE=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Ys8sP6rnrzcbd; Mon, 10 Feb 2025 11:19:05 -0500 (EST)
Date: Mon, 10 Feb 2025 11:19:05 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: [sidaq.lotay07@gmail.com: Re: Does chromevox has any math content
 (mathml/mathjax/etc) support?]
Message-ID: <Z6om-Z5q7SIwTxp3@panix.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

----- Forwarded message from Sidaqvir Singh Lotay <sidaq.lotay07@gmail.com> 
-----

Date: Sun, 9 Feb 2025 14:14:35 -0800 (PST)
From: Sidaqvir Singh Lotay <sidaq.lotay07@gmail.com>
To: ChromeVox Discuss <chromevox-discuss@googlegroups.com>
Subject: Re: Does chromevox has any math content (mathml/mathjax/etc) support?

Okay so I don't now if google issued this update because of my post but if 
we didn't have this previously and I was just doing things wrong we have 
quite decent mathml/mathjax support now, it's honestly quite impressive if 
this is an actual update. I can almost do all my webworks on my dynabook 
chromeos flex now. Almost. Some bug with webwork and espeak pronouncing 
letter by letter apparently for problems like peacewise function,
f(x) = \begin{cases}
               19         & \text{ if } x \lt -8 \\
             -x+ 11 & \text{ if } -8 \le x \lt 8 \\
                6     & \text{ if } x =8 \\
               11       & \text{ if } x \gt 8.
            \end{cases}
And bug with the text app just announcing the first line of the f(x) and 
nothing after until the empty "end of text" announcement. Nice work if 
you've actually done it, Google.
On Monday, February 3, 2025 at 10:29:50???a.m. UTC-5 Sidaqvir Singh Lotay 
wrote:

> Really. Should I understand then that there are no stem students with 
> chromebooks?
>
> On Wednesday, January 8, 2025 at 12:28:02???a.m. UTC-5 Sidaqvir Singh Lotay 
> wrote:
>
>> Hi,
>> As much as I have problems with VO at least on the mac math content 
>> although not perfect is supported out of the box. I haven't managed to get 
>> chromevox read something meaningful out of webwork or mathml for example, 
>> and since it's used a lot by students and chromevox is otherwise impressive 
>> on the web I'd like to ask the community if google has anything planned for 
>> that soon hopefully?
>>
>

-- 
You received this message because you are subscribed to the Google Groups "ChromeVox Discuss" group.
To unsubscribe from this group and stop receiving emails from it, send an email to chromevox-discuss+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/chromevox-discuss/4214a997-ee9e-44a7-b989-2971b610bae5n%40googlegroups.com.


----- End forwarded message -----

