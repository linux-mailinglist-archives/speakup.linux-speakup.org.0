Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2C3AF2E1831
	for <lists+speakup@lfdr.de>; Wed, 23 Dec 2020 05:57:22 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A0207380F98; Tue, 22 Dec 2020 23:57:21 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=xPa0tJxH;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E51FB380F43;
	Tue, 22 Dec 2020 23:57:19 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id F385D380EB2; Tue, 22 Dec 2020 23:57:17 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B48F138096C
 for <speakup@linux-speakup.org>; Tue, 22 Dec 2020 23:57:17 -0500 (EST)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:4a37:aca3:a00:27ff:fe38:8df7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 18329BA2
 for <speakup@linux-speakup.org>; Tue, 22 Dec 2020 20:56:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1608699408; bh=46biI3kTdZnrtxmuNOzvE5Qh/mWwsqw6uVa5CwEf3HI=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=xPa0tJxH4YC9sJwa22K8/goIyeWMS7L/ojhkLMK90oDfmjjXN1gODhMGVjew7eWPQ
 jpQBzj3RlZAyrNvbOOocN1oUgb2ItO04U2Xsk9BUrhlluFoO4f9E+Sjzpm23viHrkN
 vjgQExB4xTtCVyGvVCeNnRI9D5PRPmJE1tmHF47brvA2FazhDNyUHfIxhbRmYrzxaR
 QOoIRnHYGj65GPTYDu0s77sMvPw+WzDBL9EI08oEeOZ57cPE9JXuSSX2GWluVa8MMl
 nza3QVvowbA4uRpmj1LK6Wf1VDY2X+v+CsYMPLk6I6YxMNkwSO4sL8cn4/3iXY8PE+
 0d9DiJvEXs7nw==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1krwCa-00039d-Nw
 for speakup@linux-speakup.org; Tue, 22 Dec 2020 21:56:44 -0700
Date: Tue, 22 Dec 2020 21:56:44 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Dual Boot Questions / VirtualBox
Message-ID: <20201223045644.GA11497@gregn.net>
References: <CA5BEE26-38AC-4030-A0AA-706B0AAE6378@icloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA5BEE26-38AC-4030-A0AA-706B0AAE6378@icloud.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.102.4 at vserver
X-Virus-Status: Clean
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

On Tue, Dec 22, 2020 at 09:01:58PM -0500, Reece O'Bryan wrote:
> Screen reading or orca wise, what potential issues am I looking out
for? I Understand that I would need to enter the password to decrypt
the hard drive without a screenreader. Is there any way to make the
boot loader speak?

Not that I'm aware of. Orca works well for me without major
issues. There are some sites where I need to resort to firefox and
NVDA, but orca meets most of my daily needs. The only other issue with
orca is not really with orca, and that is that it doesn't play nice
with espeakup. This is because speech-dispatcher is setup to use
pulseaudio by default, leaving speech-dispatcher and espeakup to fight
over controlling the sound hardware. The solution I use here is to
configure speech-dispatcher to use libao, and to dump
pulseaudio. There are those who choose to work with pulseaudio rather
than dumping it, and maybe those individuals will chime in here.

> If I were to just run a command line version of Linux what is the minimum I would need to make it actually talk and still be functional? 

As far as making it talk, all you would need are speakup, espeak-ng,
and espeakup. As far as making it functional, that depends on what you
want to do with it. I use mutt to read mail in the command line, and
either vi or emacs for editing text files. The lynx and elinks
browsers still work with a web site here and there, but relying on
them for daily web browsing isn't an option in my opinion. I'm not
aware of any text browsers out there that can do javascript, which
most sites seem to rely on these days.

Also, can you please wrap your lines? That would make it easier to
reply to you inline.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
