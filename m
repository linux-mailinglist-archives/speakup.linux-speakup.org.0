Return-Path: <speakup+bounces-463-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1970656D084
	for <lists+speakup@lfdr.de>; Sun, 10 Jul 2022 19:31:41 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=M3pzjWsv;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 459F7380B8A; Sun, 10 Jul 2022 13:31:40 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 26B34380B5F
	for <lists+speakup@lfdr.de>; Sun, 10 Jul 2022 13:31:40 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1A1C8380AA7; Sun, 10 Jul 2022 13:31:33 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D816C38091D
	for <speakup@linux-speakup.org>; Sun, 10 Jul 2022 13:31:32 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4LgvFb6XHGz3pjC;
	Sun, 10 Jul 2022 13:31:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1657474291; bh=iQ+x9aKdLd2/w7xCQ6F4ua1CjWYDcN3pGECthVyCDQA=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=M3pzjWsvYjcf/+D1CjNnN5bJignVvX3IzC0e7WjCvRaLxsS7mhmQVOQ4No5l+upMp
	 iOS7XTlxW/A1Wja3BDTsxuGrM1nWKCbzr0Gj1+JQm6s8iEiQYgFRZM6Ppk/jao8cQ7
	 LFKBFtMyQyKl3xzHvvTikPV9ExsGfAOKLTO+BOEU=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4LgvFb647wzcbc; Sun, 10 Jul 2022 13:31:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4LgvFb5pXNzcbC;
	Sun, 10 Jul 2022 13:31:31 -0400 (EDT)
Date: Sun, 10 Jul 2022 13:31:31 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: David <bearsfo@yahoo.com>, ubuntu-accessibility@lists.ubuntu.com, 
    speakup@linux-speakup.org
Subject: Re: getting speakup to work in ubuntu
In-Reply-To: <008101d89471$0ea72540$2bf56fc0$@yahoo.com>
Message-ID: <e662a51d-bb27-ea1d-1b58-3446a13d652f@panix.com>
References: <008101d89471$0ea72540$2bf56fc0$.ref@yahoo.com> <008101d89471$0ea72540$2bf56fc0$@yahoo.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

sysctl enable espeakup && sysctl start espeakup
may help.


On Sun, 10 Jul 2022, David wrote:

>
>
> Hi there - new to ubuntu, but not with linux or speakup
>
>
>
> With sighted help, I was able to install ubuntu server 22.04 LTS
>
>
>
> Question 1: is it possible to install with speech, without sighted help?
>
>
>
> After the machine booted up, I ran this and got no message [no news is good
> news?]
>
>
>
> # modprobe speakup_soft
>
>
>
> So I installed 'espeakup' which brought in a bunch of other packages:
>
>
>
> # apt-get install espeakup
>
>
>
> And I get no speech,rebooted and that did not change anything
>
>
>
> Question 2: did I missed something?
>
>
>
> Any comments/help/direction/instruction appreciated, thank you very much in
> advance
>
>
>
> --David
>
>
>
>

