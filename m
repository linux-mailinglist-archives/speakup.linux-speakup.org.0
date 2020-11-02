Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 45C832A250A
	for <lists+speakup@lfdr.de>; Mon,  2 Nov 2020 08:12:10 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D1DEB380F2F; Mon,  2 Nov 2020 02:12:09 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=zP5SXPzm;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 62B78380F2D;
	Mon,  2 Nov 2020 02:12:07 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 05A36380F14; Mon,  2 Nov 2020 02:12:06 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id DE690380F11
 for <speakup@linux-speakup.org>; Mon,  2 Nov 2020 02:12:05 -0500 (EST)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:4a3f:bfc0:bd56:cdc:3964:ccc4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id D3598A1B
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 23:12:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1604301124; bh=fHv5zkML56QEFnOmjow07z3t8NsQcIWJ0lX0kPylsj0=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=zP5SXPzmI1cYzovbqH3rHvLnNDEmsGwDgol0dVyKos7pnM3VyP/LXbAOyNAMrwXXu
 vJZSfu9FsbCTK72NxE7H48GdDmCFNYjUWS0hsaUrGcBXnPv7uWy1mVE6SltfHK1WCf
 0vbiYkUOaK3z8pj8zQAhOitw0w0cRHbF5zOnzoW8rmfqHCLum+r9uhJ/SuLdT48QoY
 Q1ZI0MnnbihRlB/nRzmJ7FVw0BG6BO+2dA+vhX9njmJMBcftXNsegVhty1qU08P5Ee
 C6Kn9tjc7cNfqqWrMyDpgKONV2yjLRpp7OEaeCY0LA1qftwbhC2acGVFgjSgZDvSkt
 IfAm1dOdKO7Fg==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1kZU0Z-0003lS-9n
 for speakup@linux-speakup.org; Mon, 02 Nov 2020 00:12:03 -0700
Date: Mon, 2 Nov 2020 00:12:03 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup crashes with kernel 5.4.69
Message-ID: <20201102071203.GC8027@gregn.net>
References: <m3o8l6sge6.wl-covici@ccs.covici.com>
 <20201101205909.zz2ihrr6zmucrfbq@function>
 <5123cc09-8314-7bb4-82dd-5511b53b3703@slint.fr>
 <20201101214000.u6al47enhggqputs@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201101214000.u6al47enhggqputs@function>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

On Sun, Nov 01, 2020 at 10:40:00PM +0100, Samuel Thibault wrote:
> Didier Spaier, le dim. 01 nov. 2020 22:28:46 +0100, a ecrit:
> > Le 01/11/2020 =E0 21:59, Samuel Thibault a =E9crit=A0:
> > > John Covici, le mar. 13 oct. 2020 04:02:09 -0400, a ecrit:
> > >> Hi.  When I just tried to boot with kernel 5.4.69, it did come up, b=
ut
> > >> soon crashed with a lot of kernel: basd schedule from idle thread.
> > > =

> > > Ok, I see the concern. Would you be able to try the attached patch?
> > =

> > Does this issue affect/can this patch be applied against/ 5.4.62/5.4.72?
> =

> Yes, not much has changed in the 5.4 series.
> =

> > I ask as Slint currently includes 5.4.62 but I was about to upgrade to =
5.5.72
> > (and no Slint user complained so far. Maybe only some uses cases or
> > hard synths are in concern?)
> =

> It's specific to the ltlk and spkout synths.

I'm using a ltlk on a machine running 5.4.70, and on another running
5.8.14 sometimes, and haven't run into this issue. Does this effect
only the 5.4.x series of kernels, or later ones through 5.9.x?
Is there something I can do to
force the problem to happen, so as to test the patch properly?

Greg


-- =

web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your cont=
acts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
