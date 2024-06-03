Return-Path: <speakup+bounces-1143-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D48CE8D803D
	for <lists+speakup@lfdr.de>; Mon,  3 Jun 2024 12:48:05 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=uPSYm/Yt;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 612733828F9; Mon,  3 Jun 2024 06:48:01 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4027D38270B
	for <lists+speakup@lfdr.de>; Mon,  3 Jun 2024 06:48:01 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 01BA33826FB; Mon,  3 Jun 2024 06:47:53 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 801BB38265C
	for <speakup@linux-speakup.org>; Mon,  3 Jun 2024 06:47:53 -0400 (EDT)
Received: from rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id AE2E1FA033;
	Mon,  3 Jun 2024 06:47:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1717411640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XSYnqYBqkY+j+FJd7Dq48VkcuOSYqzzFa4ZHDlqHZxI=;
	b=uPSYm/YtKrep3xPT9PFZL+3lAfzpQxZJrMg3G1kQVC/itbLUCplT5nYRunvZ0XGO3YfmJB
	zzcJ7VUi5HX1493ouXiiyUhhBaUHKZgGzA/NxzYjLQeKGOT3PQTy7bEGpwo+xLyserrQzl
	ygHE2gB5PGl/uhE+xPbpz4J2RVadOhk=
DMARC-Filter: OpenDMARC Filter v1.4.2 mail.rednote.net AE2E1FA033
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by rednote.net (8.18.1/8.16.1/Submit) id 453AlKT1106630;
	Mon, 3 Jun 2024 06:47:20 -0400
Date: Mon, 3 Jun 2024 06:47:20 -0400
From: Janina Sajka <janina@rednote.net>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: "Jason J.G. White" <jason@jasonjgw.net>, speakup@linux-speakup.org
Subject: Re: slightly ot: email options revisited?
Message-ID: <Zl2fOHhQ0k2RSj0W@rednote.net>
References: <Pine.LNX.4.64.2406012324170.2555914@users.shellworld.net>
 <6a4d694c-2afb-4a0e-8305-7071cb76cd02@jasonjgw.net>
 <Pine.LNX.4.64.2406021456140.2566090@users.shellworld.net>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Pine.LNX.4.64.2406021456140.2566090@users.shellworld.net>
X-Operating-System: Linux opera.rednote.net 6.8.11-300.fc40.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

The standards Jason mentioned have been in place for years. To my mind
that would not be excused by personal emergency.

As someone who loves command line shell functionality, I can well
appreciate it's attraction for others. I do believe there are still
options for people who choose to subscribe to a shell service rather than
administer their own servers. Were that me I believe I would first consider Panix.com. As I recall Panix operates on Linux where shell world operates on BSD. That wouldn't block implementing the mail standards Jason mentions, but may prove more helpful to individuals when using the CLI.

Good luck, Karen! Let us know how this goes, please. I'd be interested
on how you land over this.

Janina

Karen Lewellen writes:
> As shared, I do not know what is preventing Luke from  making these changes.
> My last understanding is that his mother is ill.
> 
> 
> 
> On Sun, 2 Jun 2024, Jason J.G. White wrote:
> 
> > 
> > On 1/6/24 23:37, Karen Lewellen wrote:
> > >  seasoning my question this time is the  fact that in March, most major
> > >  email pockets, Apple, Google, Yahoo, all started requiring email addresses
> > >  to  carry an   identifying code that matches the actual host, you
> > >  @you.com has a code insuring that the email is coming from a place called
> > >  you.com
> > >  Goal is to keep spam from using hosts as a cover.
> > 
> > You need to use a server that properly supports the DKIM, SPF and DMARC
> > standards, otherwise, recipients are more likely to classify your
> > messages as spam. This is reality. To handle mailing list posts, the ARC
> > standard should also be implemented.
> > 
> > Since I run my own mail server, it is compatible with everything,
> > including Mutt, Alpine and other client-side software that Speakup users
> > are likely to want. Commercial providers are increasingly complicating
> > the authentication process, for legitimate reasons, hence anyone working
> > from the Linux console will find it increasingly hard to connect, though
> > not impossible.
> > 
> > 
> > 
> > 


-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/


