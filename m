Return-Path: <speakup+bounces-327-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DF92744CE32
	for <lists+speakup@lfdr.de>; Thu, 11 Nov 2021 01:21:03 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=GAuwBnt6;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E61BF38114C; Wed, 10 Nov 2021 19:21:02 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D3775381130
	for <lists+speakup@lfdr.de>; Wed, 10 Nov 2021 19:21:02 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B647938113C; Wed, 10 Nov 2021 19:20:56 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 905BD381130
	for <speakup@linux-speakup.org>; Wed, 10 Nov 2021 19:20:56 -0500 (EST)
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id B237BA3A19;
	Wed, 10 Nov 2021 23:20:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1636582810; bh=pbVRzhxrOt1fkqgAN1r0NLduvqiPcUYSG7cDliJfES8=;
	h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
	b=GAuwBnt63KxzFlXkd1KBQIKf9eyWCrK8WqYF1BN0f5LnLTMwedeAb2tPBhT3efxi3
	 x8/iR82ltUO7olqmslOhvyLZiLIcPIXObm1LBUAU/V+Fqlu2KsCYCRywPeDLMHfQRV
	 FHE9FAA51iSis00SLe/TmXd+hJZmDWbChVKaJkpCl/MjXlIXH7e2woTLuN9kvBxGYh
	 1biijwAEeebfjCDyQfvSzsxs9XOnRrtn3F8vcC7oTg+cmd+Oxf4yiLRFuAF0rkpSfk
	 5n1WFn6n9zB21Z44/fcJO65XMwxWDKruoFhCw5d0EbcjVO310lKhWLhFUqD7y4O4x6
	 Tuf8UzU81TZUg==
Message-ID: <ee412f1d-acce-e5e8-675c-b0e308f69347@slint.fr>
Date: Thu, 11 Nov 2021 01:20:44 +0100
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Console screen reader for FreeBSD/GhostBSD?
Content-Language: en-US
To: speakup@linux-speakup.org
References: <20211110233342.1372516-1-colin.i.king@gmail.com>
 <20211110233509.rt5ioflkym4a6tya@begin>
Cc: Kirk Reiser <kirk@reisers.ca>, Chris Brannon <chris@the-brannons.com>,
 Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Christian Hempfling <chrys@linux-a11y.org>,
 Storm Dragon <storm_dragon@linux-a11y.org>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <20211110233509.rt5ioflkym4a6tya@begin>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,

I'd like to help make FreeBSD/GHostBSD more accessible with speech on the
console (in graphical environments speech-dispatcher and orca are already
available). AFAIK currently only yasr is shipped (limited and old). tdsr and
fenrir could probably be packaged. Other ideas, including how to handle hard
synthesizers?

Cheers,
Didier

