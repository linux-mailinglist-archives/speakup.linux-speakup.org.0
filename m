Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 0A99915616D
	for <lists+speakup@lfdr.de>; Sat,  8 Feb 2020 00:03:56 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C585D1C2CD8; Fri,  7 Feb 2020 18:03:54 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=N/1KCuRe;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D91F81C2DEC;
	Fri,  7 Feb 2020 18:03:18 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A72FB1C2C6C; Fri,  7 Feb 2020 18:03:11 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id C372D1C00DC
 for <speakup@linux-speakup.org>; Fri,  7 Feb 2020 18:03:01 -0500 (EST)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:a690:641:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 6931E2020
 for <speakup@linux-speakup.org>; Fri,  7 Feb 2020 15:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1581116584; bh=jL4jo9h8Gp1naXhjh4rEkUinUcNbwua7LhQbhNH6hRM=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=N/1KCuReY+GKPszS84+iXttOEc8cHU8wOvmAkfTKOkxApc1YeZIKqU+UnZlPBsQM4
 CI3pCw+5eS5hckZ/yFi6eGAgYUIOL58DE/dejcD2SIRXZvoI7H6CjuHqPxZTNdMHX/
 1wkj+Tuehs22ku2EExIyGzt2W2HpzlrQjiZGosm3RkvtBDIP07KG9p//fdQgIQaqzh
 Fa12BLT5j3yZYZF1gfH1Yd0u2fUbr6QFzQ/5BKFN1ShhxlGBRGMN1Tp5jgdoxrdgB3
 0WpiXOPcPvzRNlezQkoXGmh/xwCSTnvE5ssjnateMfNCJouePfD8l7AFwBDAFj+oL9
 wGiwkpGC8Oj+A==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1j0CeI-0001xQ-Sp
 for speakup@linux-speakup.org; Fri, 07 Feb 2020 16:02:58 -0700
Date: Fri, 7 Feb 2020 16:02:58 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: driving a serial synthesizer through speech-dispatcher
Message-ID: <20200207230258.GB5375@gregn.net>
References: <20200207000127.GA6319@gregn.net>
 <20200207081024.o7e7hm7k7ddi7cj2@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207081024.o7e7hm7k7ddi7cj2@function>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.101.4 at vserver
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

I forgot to add one more thing. The idea of using speechd-up to let
both speakup and gnome-speech use speech-dispatcher is not a bad
one. However, speechd-up was written as a proof of concept, and
doesn't implement full functionality like espeakup does. I suppose I
could look at that code too, and polish it to the level of espeakup,
but I frankly don't feel like it. A different module to drive a
different synth would still be required if speakup didn't do the heavy
lifting, instead of writing just one module.

Greg


On Fri, Feb 07, 2020 at 09:10:24AM +0100, Samuel Thibault wrote:
> > An even better approach is to use
> > /sys/accessibility/speakup/synth_direct for the speech output. This
> > would use speakup settings in use for the synthesizer. The problem
> > with this is the same as with the cat command; no way to interrupt
> > speech,
> 
> Indeed. But there is another approach, which was made for this: using
> /dev/synth. For now that file only supports writing to it to get
> text emitted, but ioctls can be defined to drive it, such as setting
> pitch etc. in a portable way across synthesizers (speakup will handle
> these details), but also interrupting. That all happens in speakup's
> devsynth.c and can be a relatively easy task for kernel hacking
> beginners.
> 
> Samuel
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

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
