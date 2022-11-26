Return-Path: <speakup+bounces-869-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 97BA363983A
	for <lists+speakup@lfdr.de>; Sat, 26 Nov 2022 21:56:38 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=XeKe03J7;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C927B382A49; Sat, 26 Nov 2022 15:56:36 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AAE03380927
	for <lists+speakup@lfdr.de>; Sat, 26 Nov 2022 15:56:36 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9B2103829FD; Sat, 26 Nov 2022 15:56:27 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id C2220380927
	for <speakup@linux-speakup.org>; Sat, 26 Nov 2022 15:56:26 -0500 (EST)
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 3ACDEE1E3E
	for <speakup@linux-speakup.org>; Sat, 26 Nov 2022 20:56:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1669492571; bh=sxlhSejU6ZD2LdFmbY7+TBQTuFWH0k3R7NYm/cNX7ko=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=XeKe03J7WSnKIF6/KTPunxoOfRdQYnWlvm+kWmy/o6sPvAy0f6U0MaCEgleWM+LJH
	 famhxwP/FbzV5UYx+/HD/4Rz9tze4EsQFSuL/gwLm/rxpwu5zmEQOX0bv8NsCEurxa
	 nsYRXRFKseH0wSZxzO1kMOsW1Tv+vxeqFKwVUaR48RESgSlxpshKBoXAYGLuCmTVjZ
	 JxGCacbHdz2scEikxhIbq+5TcnG9GwLmojNUBUVYwduKAacBibClm1nn7HuJhkY7Ab
	 RAG/OwJV/6YxAWldyF6+m+Rdr4aDqlJUAehvKH/K7Nw2HwtIHK6TGZpBOjqpEFOSBb
	 Zmv8EM4R61w8g==
Message-ID: <060e0d83-4d3b-e6e8-07bc-77a32a6e5bf9@slint.fr>
Date: Sat, 26 Nov 2022 21:56:11 +0000
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
 Thunderbird/102.5.0
Subject: Re: How to ship the speakup drivers
Content-Language: en-US
To: speakup@linux-speakup.org
References: <a940bccc.9cad.4a8a.9f9b.11fb01c7b080@samobile.net>
 <c7dd7efd-7f01-a827-97ba-7fa9356a3bcb@slint.fr>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <c7dd7efd-7f01-a827-97ba-7fa9356a3bcb@slint.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Le 07/11/2022 à 17:22, Didier Spaier a écrit :
> I am considering continuing to ship the drivers as modules, but loading the
> requested module early during installation as in the Debian installer. I will
> build an ISO with this change so you can test.

Done.

FWIW I have modified the code snippet like this:

unset SYNTH
if grep -q speakup.synth /proc/cmdline; then
	SYNTH=$(sed "s@.*speakup[-_]synth=\([[:alpha:]]\{1,\}\).*@\1@" /proc/cmdline)
	[ "$SYNTH" ] && [ ! "$SYNTH" = "soft" ] && modprobe speakup_"$SYNTH" && touch
/tmp/noespeakup
fi

Cheers,
Didier

