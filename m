Return-Path: <speakup+bounces-1096-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 191B7880854
	for <lists+speakup@lfdr.de>; Wed, 20 Mar 2024 00:57:49 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=JY9SgRfz;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3F17038265E; Tue, 19 Mar 2024 19:57:48 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1DA3F382076
	for <lists+speakup@lfdr.de>; Tue, 19 Mar 2024 19:57:48 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A163F3820DE; Tue, 19 Mar 2024 19:57:40 -0400 (EDT)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 56B9A382076
	for <speakup@linux-speakup.org>; Tue, 19 Mar 2024 19:57:40 -0400 (EDT)
Received: from jpw.jasonjgw.net (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 368A4320F3
	for <speakup@linux-speakup.org>; Tue, 19 Mar 2024 23:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1710892625;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=KqVMiMB2YgqNenVRb9ijKTWgi2zM06PwpskrUch2t+w=;
	b=JY9SgRfzBKNQ476YYgZsPH7lwkvN1WQfYq/68zB//dHnce5pcwrXOzhLwgHULa5kfuqIxn
	W43OxOZwBOh/fnpWACuhR3UlGdeqgNTL2RzKTP3bV0Lp4ioo6OQVdifcDkSdyxJEl6XFr6
	R31ADjwQofMVNya9sQwnFMRo8wlavhsUrN/UpzfynKLokACYwfVOkVyLt+X8KjZXqMi4eR
	61q6zhFXKOMsPu+gySZ6js9w5IzNh76s3SMM9LIcZ3UR3n5f09vJ0Oa0iTJSf7mRwnBhSU
	nIY82R97gwtw2c9Ha8YyadtnzeNN9HteoHtu/SxBOrlNY54VTvWYe64MOEGrpQ==
Date: Tue, 19 Mar 2024 19:57:03 -0400
From: "Jason J.G. White" <jason@jasonjgw.net>
To: speakup@linux-speakup.org
Subject: Re: Trouble-shooting a Mute Speakup on a Raspberry Pi
Message-ID: <ZfomT6e6Z56br4eU@jpw.jasonjgw.net>
References: <E1rmffd-0009s5-0f@wb5agz>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <E1rmffd-0009s5-0f@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Martin McCormick <martin.m@suddenlink.net> wrote:

>Here are syslog lines from the attempt to start with the time
>stamps removed but everything else present:
>
>rpi1 systemd[1]: Starting espeakup.service - Software speech output for Speakup...
>rpi1 systemd[1]: espeakup.service: Control process exited, code=exited, status=2/INVALIDARGUMENT

Can you run Espeakup manually - that is, directly from the shell, outside of systemd?
You'll probably need to look up the command line arguments it needs. You 
could start with the command line that is in the systemd unit file.
If it fails to run, you should be able to capture any error message, 
enable any debugging options, use strace, if necessary, and so on to 
track down the issue.


