Return-Path: <speakup+bounces-751-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 868225FFC13
	for <lists+speakup@lfdr.de>; Sat, 15 Oct 2022 23:47:54 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D2404384017; Sat, 15 Oct 2022 17:47:53 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BE0AA383FCE
	for <lists+speakup@lfdr.de>; Sat, 15 Oct 2022 17:47:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C12CF383FCC; Sat, 15 Oct 2022 17:47:48 -0400 (EDT)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9AB55383FC8
	for <speakup@linux-speakup.org>; Sat, 15 Oct 2022 17:47:48 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 8C6F72010E;
	Sat, 15 Oct 2022 23:47:46 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ghg0KodoBvXD; Sat, 15 Oct 2022 23:47:46 +0200 (CEST)
Received: from begin (lfbn-bor-1-376-208.w109-215.abo.wanadoo.fr [109.215.91.208])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 70D1B20109;
	Sat, 15 Oct 2022 23:47:46 +0200 (CEST)
Received: from samy by begin with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1ojp0U-001jdx-09;
	Sat, 15 Oct 2022 23:47:46 +0200
Date: Sat, 15 Oct 2022 23:47:45 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Jude DaShiell <jdashiel@panix.com>
Cc: Okash Khawaja <okash.khawaja@gmail.com>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
	Mushahid Hussain <mushi.shar@gmail.com>,
	Osama Muhammad <osmtendev@gmail.com>
Subject: Re: Reading charts
Message-ID: <20221015214745.zhwuuztmxcae54tn@begin>
References: <CAOtcWM2rq=DAqLH=CT9S_ZHM-eZaJHADxKjYvxWcHOADPA2dmw@mail.gmail.com>
 <20221015212713.jnf52npv7lhjdkuv@begin>
 <f9a92fa5-9842-e3ae-f8ea-a8ff8bdc531a@panix.com>
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
In-Reply-To: <f9a92fa5-9842-e3ae-f8ea-a8ff8bdc531a@panix.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Jude DaShiell, le sam. 15 oct. 2022 17:33:20 -0400, a ecrit:
> That's because no linux graph drawing program can draw in ascii or
> printable utf-8 characters for its line plots.

Yes, but it'd be complex for speakup to try to understand what's being
drawn, while drawing programs could as well just self-speak, that would
probably provide way better feedback. We had discussed a bit about it in
terms of teaching at the university. For instance the drawing program
could listen for mouse wheel events, and emit a sound that tells the
value. The user can use the mouse to move along the X axis, and listen
to the result (the Y axis). It seems to me it's be interesting to grap
the curve by listening to the result. That was just an idea thrown in
the air, but I guess there are possibilities there. Possibly there
have already been some research around such kind of ideas, I haven't
investigated.

Samuel

