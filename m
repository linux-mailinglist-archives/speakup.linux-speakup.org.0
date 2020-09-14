Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 554C9268B95
	for <lists+speakup@lfdr.de>; Mon, 14 Sep 2020 14:59:47 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7BD4F1C0777; Mon, 14 Sep 2020 08:59:46 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=default header.b=dgxK+aks;
	dkim=fail reason="key not found in DNS" header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=nBv0FV6u;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BF12B1C0857;
	Mon, 14 Sep 2020 08:59:03 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id B384B1C0707; Mon, 14 Sep 2020 08:58:59 -0400 (EDT)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 3EFFB1C0135
 for <speakup@linux-speakup.org>; Mon, 14 Sep 2020 08:58:53 -0400 (EDT)
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
 by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 08ECugcI067019
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
 for <speakup@linux-speakup.org>; Mon, 14 Sep 2020 12:56:42 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 08ECugcI067019
Authentication-Results: opera.rednote.net;
 dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: opera.rednote.net;
 spf=pass smtp.mailfrom=janina@rednote.net
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 08ECugcI067019
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rednote.net;
 s=default; t=1600088202;
 bh=3dCfFQMHArYM67H8WR9CTnDVl34CPE5Cq6G4/uQg/Xk=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=dgxK+aksxoKl0ikc5Lhqmkh9sxCmF9rDNmRBsHtD1i4Lummchm8/RC+kGbSRXv0Pu
 KBATEjV62Oahlkc7BQQrtyU/XZa9KQohV5uzcp3I01/ZOOLrsuO/KKBZjDiMGOurXS
 Q4aAzi62hZfYiNXNsZ7pEZoP60CX0J0tW3baRfLw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
 t=1600088202;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YvktodJWtmZemHQsB5gi2a8JePzUERMxY4H0zKokMIY=;
 b=nBv0FV6u9+RNBBchNhZNqJjw8EgfPVf4SGV6Fci9TUhGStshV8/WYFfIO4gGhJa2f22QOb
 drRKYOiHlchwpeEVYsaQ5tyVgqNzHk8UAwnY81lJba8LfZ7j33LgfjxNT9DrXbDY4qaskj
 Ga00Ar4gFdwS/hjLlWOUyxbzVUJOlfA=
Received: (from janina@localhost)
 by rednote.net (8.15.2/8.15.2/Submit) id 08ECughf067018
 for speakup@linux-speakup.org; Mon, 14 Sep 2020 08:56:42 -0400
Date: Mon, 14 Sep 2020 08:56:42 -0400
From: Janina Sajka <janina@rednote.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Speech stops responding on Talking Arch
Message-ID: <20200914125642.GA1735@rednote.net>
References: <4212af47-2452-fbcc-a376-1a48e5aa9d7c@mm.st>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4212af47-2452-fbcc-a376-1a48e5aa9d7c@mm.st>
X-Operating-System: Linux opera.rednote.net 5.8.6-101.fc31.x86_64
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hi,

Checking off the obvious ...

Have you checked your downloaded iso against the signature?

And, which Talking Arch? I'm aware of two from recent months, and then of
course the now fairly old original, so a total of 3.

The one I've used successfully is this one:

https://wiki.archlinux.org/index.php/TalkingArch

You mention "live image," which I would consider the above more an
installation environment, though shell should certainly work.

Sorry, this is probably not all that helpful. I've not seen the problem
you report.

Janina




Cleverson Casarin Uliana writes:
> Hi all, there is a bug I couldn't yet reproduce reliably on the Talking Arch
> live image. It apears to manifest when I type several characters quickly, or
> when I press speakup review commands when the screen is changing. The speech
> simply gets muted, and any command to try restarting espeakup via systemCTL,
> or even trying to make espeak speak something, doesn't work. Still, the
> shell responds to commands such as poweroff.
> 
> Does anyone know this problem? Is it possible to resume speech without
> turning off the system completely?
> 
> FYI, the Talking Arch image was generated last 09 september, and my machine
> is a HP 246G7 laptop with a Logitech USB keyboard attached.
> 
> Thanks,
> Cleverson
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
