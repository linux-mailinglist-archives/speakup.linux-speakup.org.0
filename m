Return-Path: <speakup+bounces-845-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CB1A761F97D
	for <lists+speakup@lfdr.de>; Mon,  7 Nov 2022 17:23:35 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=d/9qKYxA;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C382F38365A; Mon,  7 Nov 2022 11:23:28 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A56443835FB
	for <lists+speakup@lfdr.de>; Mon,  7 Nov 2022 11:23:28 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EB2C2383614; Mon,  7 Nov 2022 11:23:19 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 33713382C00
	for <speakup@linux-speakup.org>; Mon,  7 Nov 2022 11:23:19 -0500 (EST)
Received: from [192.168.0.11] (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 8E10121989;
	Mon,  7 Nov 2022 16:19:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1667834383; bh=szyiqHnyyfr2HG2+UnAiDigBnsfzgl9cNVb+VYYBh5o=;
	h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
	b=d/9qKYxA99euo7V2EXsb6yGAK3RVOqMPWvEyNdSQ9rxe53LHd3I/aqocqMRU2jLlE
	 V0B4L3VJqJQx0+FHyORCn7zaw+ic9Z93EhxyEJqcjU6CMIH/wJDlLVDPgBBVsYlX0f
	 msvUMN4yfxZ2YKTmAYLi/CIETR9YoRcnXBIJwFwx/Q21N+cBobRt4N2Adk8z+ZibdA
	 kaEpD1Eha0s7E0i4m3WNdJHZC7s8HcdxpxADRZfj4omWXryWeWd4j31RghRCa/fNgG
	 Bc6GHpJi7hIjsLp019P7lWcZQ+/6R6RxHBD/MJEEBuH3MoFiQVcepa+G3wQyXlF2Ov
	 2wnzwVt2+xouA==
Message-ID: <c7dd7efd-7f01-a827-97ba-7fa9356a3bcb@slint.fr>
Date: Mon, 7 Nov 2022 17:22:18 +0000
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
 Thunderbird/102.4.2
Subject: Re: How to ship the speakup drivers
To: tony seth <lp800@samobile.net>
References: <a940bccc.9cad.4a8a.9f9b.11fb01c7b080@samobile.net>
Content-Language: en-US
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <a940bccc.9cad.4a8a.9f9b.11fb01c7b080@samobile.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,

Tony, it looks like you forgot to CC the list...
Other than that, answer in line

Le 07/11/2022 à 00:02, tony seth a écrit :
> Heya there and good evening Didier and all:
> I agree with Samuel, packaging the speakup drivers into the initrd and not as
> modules, will very likely work. I think that as software speech became more
> popular, modularity just seemed a better idea for most since most people don't
> use hardware synths anymore.
> I'm probably one of the last hold-outs and in any event, I'm probably not the
> only one.
> I'm happy to test it if you go that way.
> Thanks muchee!
> Take care... Cheereo.

I am considering continuing to ship the drivers as modules, but loading the
requested module early during installation as in the Debian installer. I will
build an ISO with this change so you can test.

In an installed system, the user can include in the initrd (rebuilt upon each
kernel upgrade) the driver needed by his or her hard synthesizer.

Please test that (as root or using sudo):
1. Create a file named /etc/dracut.conf.d/hardsynth.conf including this single line:
force_drivers+="speakup_ltlk"
2. Then type:
dracut --force --zstd

After rebooting the module espeakup_ltlk should be loaded and your hard synth
speak. Please let us know if that works for you.

To know more:
man dracut
man dracut.conf
man dracut.cmdline

Cheers,
Didier

