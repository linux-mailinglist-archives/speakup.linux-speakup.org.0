Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 81BC31A91AB
	for <lists+speakup@lfdr.de>; Wed, 15 Apr 2020 05:50:37 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C84461C5801; Tue, 14 Apr 2020 23:50:36 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=ccjyXNKy;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5FC371C73BD;
	Tue, 14 Apr 2020 23:49:18 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7C4891C578F; Tue, 14 Apr 2020 23:49:08 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [IPv6:2607:f2f8:a260::2])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 6F0821C0B50
 for <speakup@linux-speakup.org>; Tue, 14 Apr 2020 23:48:46 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:f23:1d1c:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id CD4FE3883
 for <speakup@linux-speakup.org>; Tue, 14 Apr 2020 20:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1586922623; bh=g/Rh52x9A1iVAIOSZ14W4Arco1K1v7+Qiz0wXuSmtLc=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=ccjyXNKy5DRaNWTWiIlKWUjPMYlDBPLPRGuQzf/9QlzNmUNV8SJSCaxnNLFyEaSZI
 EFCIVxuoAoRlEk/TBnaLTdcalwKbBF7tGntqvF9gelA2vU0wUw4JfJh+OcQLo/EI6z
 vTSWmBtFwOfeUG5T30omUr8hlPGWcyn4EZyikUhrZ9PeLm6gfFysYGQknwSQd//WI8
 dLUbmpmsaMc2bQ1S50PJuy/DtEdB4ebMvicDT7xz7be8fO807XalNL69xVQa8jkull
 qDa8Rr/0JLaDL+NLLQBpe3D1kJCcvbD4G6Wm1ecEcPcGTApyXQ4Ho9azokNeyUvxHs
 FTygdhQTl67UQ==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1jOZ2X-0001Yn-6x
 for speakup@linux-speakup.org; Tue, 14 Apr 2020 20:48:41 -0700
Date: Tue, 14 Apr 2020 20:48:41 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
Message-ID: <20200415034841.GA5932@gregn.net>
References: <Pine.LNX.4.64.2004141805070.1871@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.2004141805070.1871@server2.shellworld.net>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.102.2 at vserver
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

Have you tried running

speakupconf load

as root to bring your dectalk back to normal? I think that would be
simpler than unloading and reloading the module again. Do you set your
speech defaults through speakup, or somehow on the dectalk itself? If
you don't set your speech defaults through speakup, then what is
almost certainly happening is that speakup is reinitializing the
dectalk with its own settings. Even if you are setting your speech
parameters through speakup and this is still happening, you could
still run speakupconf load in a cron job every few minutes, and that
would keep bringing your dectalk back to normal without your
intervention, and without losing speakup by unloading and reloading the
module.

BTW, I think most speakup users are not programmers.

Greg


On Tue, Apr 14, 2020 at 06:39:40PM -0700, Chime Hart wrote:
> For maybe 16years since I purchased a DecTalk U S B, many of you know I
> experience frustrations many times a day as the pitch, volume, and rate drop
> suddenly. Well, a couple of months ago, 1 of my Linux experts had an e-mail
> exchange with Kirk, who mentioned something about defalt settings. Well, I
> looked in a copy of speakup_dectlk.c, was able to see where the rate says
> 180, meanwhile we set it at 229. Or the volume which I think says 60 when we
> set at 86. Those are just 2 examples. Only by jussling those insert
> functions to alter volume or pitch will put them back after a sudden drop.
> Some time ago we created an alias to reload this dectalk when it gets hozed.
> /usr/bin/sudo /sbin/modprobe  -r speakup_dectlk; /usr/bin/sudo
> /sbin/modprobe speakup_dectlk; sudo cp /usr/local/bin/characters
> /sys/accessibility/speakup/i18n/
> However, even altering some of those values, I would also need to know what
> replacement to send dectalk so it might `always respect my changes.
> I guess David in Canada was the last person who modified these drivers. I
> will be quite honest, each time I see Okash post, I become hopeful. But now
> with some amunision from Kirk, I hope among the movers-and-shakers,
> maybesome sort of fix or even better a real U S B driver can be created.
> I realize, I am only a user-and-not a programmer, but if I were to guess,
> most Speakup users are programmers. Anyway, thanks in advance, whatever any
> of you can do. I had even considered sending Kirk an audio file
> demonstrating these issues, but I haven't yet patched out of an ear-phone
> jack to a recorder.
> Chime
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> 

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
