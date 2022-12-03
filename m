Return-Path: <speakup+bounces-873-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 568E8641928
	for <lists+speakup@lfdr.de>; Sat,  3 Dec 2022 22:08:20 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=KoKn3NF9;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 71BF8382A75; Sat,  3 Dec 2022 16:08:19 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 52FE4382A3D
	for <lists+speakup@lfdr.de>; Sat,  3 Dec 2022 16:08:19 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 79937382A3E; Sat,  3 Dec 2022 16:08:10 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 81DE9382A27
	for <speakup@linux-speakup.org>; Sat,  3 Dec 2022 16:08:09 -0500 (EST)
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 6EB01E69F0
	for <speakup@linux-speakup.org>; Sat,  3 Dec 2022 21:07:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1670098067; bh=Tz/s/qK6XVTSi7s/OD0yj6+pstTC9Swtjw9uUuDtNio=;
	h=Date:Subject:References:To:From:In-Reply-To:From;
	b=KoKn3NF9RXK0AiITG+b3wnAqzgy+aq9qeqs5ld6Bm/jlQbXN5L3eBDMvK9DzmODPy
	 RsYZHLIKa3bZUhZEc4UThzC2QXUiX3zD1E1LzTV6OAbgsny7cNIJTfowTXja1DHLdC
	 rFqft/aKL21zJw5Rvkzr/rK2kQkpf2d+Me9+VjL4SCNa/nUDXT+89kolgcMfEq9EGN
	 M34OcYlHHnX1zuergBjocBe4cCa+qs+MrhLV7sdmltXK1ZYufvM1efwKfG6gh3yy5x
	 G2y8U2UryFJtI82cvKz4l5Xaf8Y5OWIatWmm3xOuiBLcoOj8PebbVVHl8uD3jtr/np
	 XxGzwCtRUFpgQ==
Message-ID: <484a5cba-5a2f-dd5a-bc22-efd9da2bdef2@slint.fr>
Date: Sat, 3 Dec 2022 22:08:04 +0100
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
Subject: Fwd: change eSpeak Default Voice
Content-Language: en-US
References: <67b6ea3e-a4e6-47bf-10be-f6da03f1a33f@slint.fr>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <67b6ea3e-a4e6-47bf-10be-f6da03f1a33f@slint.fr>
X-Forwarded-Message-Id: <67b6ea3e-a4e6-47bf-10be-f6da03f1a33f@slint.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Message below sent privately by mistake, forwarded to the list.

Hello

Yes, you can set a different voice, as "man espeak-ng" or espeak-ng --help" will
tell you.

If espeakup is already started with another voice you will have to kill it and
restart it with another voice.

Being able to set which voice to use at startup and how to do that depends on
your distribution.

Cheers,
Didier

PS I am assuming that you uses espeakup, rather than speechd-up.

Le 03/12/2022 à 20:27, K0LNY_Glenn a écrit :
> Hi,
> Is there a conf file or something where I can change the default voice of 
> eSpeak?
> So if I did something like:
> espeak "this is a test"
> it would use the default voice of another eSpeak voice?
> I changed it in Orca, so I'm wondering if it can be changed at this level.
> Thanks.
> 
> Glenn

