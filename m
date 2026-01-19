Return-Path: <speakup+bounces-1519-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7A9CFD3BB85
	for <lists+speakup@lfdr.de>; Tue, 20 Jan 2026 00:09:39 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=T8QCHvvG;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 501E7381918; Mon, 19 Jan 2026 18:09:37 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2F344381843
	for <lists+speakup@lfdr.de>; Mon, 19 Jan 2026 18:09:37 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 517BF38183D; Mon, 19 Jan 2026 18:09:31 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 609DE38181E
	for <speakup@linux-speakup.org>; Mon, 19 Jan 2026 18:09:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1768864160; bh=+E5CqtOL7i1ITYUy/8xtivLHanXhcxtE2a3Ax9ki5hw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T8QCHvvGj/szpw3DOlA6lmpk1iTguCBKvlWLYaacAK232QID52/TeKjftjhL/hLyT
	 k/Mei3uSZFVE7x+XJIYzAZBEZ6aluvAEe9FtI+IMvMwYlgqUrA7fLZtJhcTVg+j6Ub
	 MDsK4pJqeXvc0TpAoz/1hUx/BlP3dfMCGdyDDYqKmcMnTAG+YhsGFfEqzJ0eGd3Ef+
	 jeiVc5waGs0WZNRI5DG6z4ZQvML4GUdknkTiwhnwXnoXRtJ4UU6d36EMA74br3kVLf
	 xa5iTRalJQTljL7Qu3z5oicnWf5s7f8WLKlC4nDGRVru9LQKlibV6/V0oVfFHH41Wb
	 Q4urMxETtSecQ==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb91:4f8d:c97b:e994:219b:8cfc:93eb])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 2C326276B;
	Mon, 19 Jan 2026 15:09:20 -0800 (PST)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 6A768C082; Mon, 19 Jan 2026 16:09:19 -0700 (MST)
Date: Mon, 19 Jan 2026 16:09:19 -0700
From: Gregory Nowak <greg@gregn.net>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Emulating a LiteTalk, full_time problem
Message-ID: <aW65n-zrysEL1_nq@gregn.net>
References: <bbd7c5a2-ee29-48a9-b1d2-3d33e2fb8497@math.wisc.edu>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bbd7c5a2-ee29-48a9-b1d2-3d33e2fb8497@math.wisc.edu>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.4.3 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

The index marker is covered in the doubletalk programmer's manual,
which I don't have access to. Also, while I understand the basics, I
haven't come across a detailed explanation of exactly how indexing
works. Since you're not seeing speakup send the index marker, and
speakup has a delay at the end of output, this makes me think that it
is up to the synthesizer to send the index marker to tell the screen
reader that it has finished speaking what it has been sent to
speak. The screen reader would then send more text.

So, instead of looking for 0X45, try sending it, and see what happens.

Greg


On Mon, Jan 19, 2026 at 03:52:13PM -0600, John G. Heim wrote:
> My project to make a hardware synth out of a Raspberry Pi is going quite
> well except for one thing, speakup is implementing a full_time delay between
> sending chuncks of text.
> 
> I discovered this by changing the value in the file
> /sys/accessibility/speakup/ltlk/full_time on the host side.The default value
> is 40000. If I change it to 0, my fake LiteTalk works almost perfectly.
> 
> So what I need to do is to understand what I have to do to get speakup to
> not wait. I  don't want to change the value on the speakup side, I want to
> get my emulator to work well enough so the value does not matter.
> 
> I  also know that speakup is not sending indexing commands. I put a
> debugging trigger in  my code to say when it gets the indexing command,
> 0x45. That  code is never triggered. So I am thinking I have to make speakup
> think I can take indexing commands.
> 
> If I can solve this problem, and I don't care how much work it is, I think 
> we will really have something. I bought a audio "HAT" for my Raspberry Pi.
> That fixed the keyecho problem. It keeps up with my typing and I am a really
> fast typer. I also have it so it recognizes the Pi when you power up and
> loads speakup. You can use different languages, different software speech 
> engines, etc.
> 
> 
> 
> 
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

