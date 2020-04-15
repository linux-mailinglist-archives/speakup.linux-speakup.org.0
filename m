Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 6F6E01A9204
	for <lists+speakup@lfdr.de>; Wed, 15 Apr 2020 06:43:24 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B23721C73C3; Wed, 15 Apr 2020 00:43:23 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=rnElWxwz;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 087901C73C4;
	Wed, 15 Apr 2020 00:42:49 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C14E51C2C7B; Wed, 15 Apr 2020 00:42:46 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [IPv6:2607:f2f8:a260::2])
 by befuddled.reisers.ca (Postfix) with ESMTPS id C8C9D1C2C7B
 for <speakup@linux-speakup.org>; Wed, 15 Apr 2020 00:42:41 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:f23:1d1c:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id C47813883
 for <speakup@linux-speakup.org>; Tue, 14 Apr 2020 21:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1586925861; bh=42BY0l6iZmdTi2mJoqR5sbxxdp4U90elLV61LjWV7Y0=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=rnElWxwzf1102O/iQwDRkZn3GFBFHNdxfORmGhgHWeH4EGnABfyFsc6yWbVcYVlsM
 EknMXCfVH0QYtxSILs+fkA9ODhG7P+y0XL61h1n9VY2EUPiPFMFVCHD4itb6JfFE/S
 Mlzr4TukHFGCuk5XckjYh4Q7pbmHXXoE4lMcuzAmVo/VpHo81EchvGQf4WPLBE8rmN
 ENntb2djl/nT7Rd+sPqfUZ0zQ/OIjuzghq8MeErMlnTkH97T5kXxz76F6P8mi/TxZv
 djeHSNRM1Hlx40DJQ7UQu0vIzcan57bcysHm+PBWOxXTI6kzh53iUtz1w1JTsATBpK
 D8/1Fs99EM3mw==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1jOZsl-0001h6-2G
 for speakup@linux-speakup.org; Tue, 14 Apr 2020 21:42:39 -0700
Date: Tue, 14 Apr 2020 21:42:39 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
Message-ID: <20200415044239.GA6357@gregn.net>
References: <Pine.LNX.4.64.2004141805070.1871@server2.shellworld.net>
 <20200415034841.GA5932@gregn.net>
 <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
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

OK, sounds like you might not be taking full advantage of what the
speakupconf tool can do. Let's start with your pitch. Set it to 113
which seems to be what you would like it to be at. Then run:

speakupconf save

as root. Now, when you run speakupconf load, your pitch should be at
113.

Keep in mind that when you set speech parameters through synth_direct,
they aren't guaranteed to be in effect, since speakup can reset your
dectalk to speakup's values. I don't know what your inflection setting
corresponds to in speakup, but I'm guessing it would be either freq, or
tone. I doubt the values speakup takes for those settings go up to
250, but you can maybe figure that out by looking at the
speakup_dectlk.c driver like you did for the rate, or you can set them
with:

echo 5 >/sys/accessibility/speakup/dectlk/freq

and

echo 5 >/sys/accessibility/speakup/tone

where 5 should be replaced with the number you want. Try experimenting
with those to see how high they go for you. You can read them back
with:

cat /sys/accessibility/speakup/dectlk/freq

and

cat /sys/accessibility/speakup/tone

If one of those gets your inflection to where you want, then just run:

speakup save

and your problems will hopefully go away. If this doesn't bring your
inflection to where you want, then someone would have to figure out
which speakup parameter corresponds to inflection, and see if the
driver can be modified to set inflection to the value you need from
speakup itself. I believe that Oakash has a dectalk to work with, and
he is familiar with speakup's code. If that's correct, then maybe this
is something Oakash would be able to look into, and fix.

Greg


On Tue, Apr 14, 2020 at 09:04:02PM -0700, Chime Hart wrote:
> Thanks Greg: Next time these values drop, I will try that. Most times I
> don't run that alias, usually just hit insert+1 which brings volume back to
> 85, but I also do that for each of these settings which get knocked down.
> Just tried your load command, which knocked out my extra inflection, and
> moved the pitch from 113 to 122. To enjoy more inflection, I must type
> sudo echo "[:dv pr 250]" >> /sys/accessibility/speakup/synth_direct
> Thats in an alias which calls a script.
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
