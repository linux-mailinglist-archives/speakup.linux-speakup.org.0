Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (unknown [IPv6:2001:470:1d:288:8e89:a5ff:fe59:6a4d])
	by mail.lfdr.de (Postfix) with ESMTP id 346FB1A2D89
	for <lists+speakup@lfdr.de>; Thu,  9 Apr 2020 04:09:59 +0200 (CEST)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 835E74280460; Wed,  8 Apr 2020 22:09:43 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.b="Ryxh7P5R";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id BD1314280457
	for <lists+speakup@lfdr.de>; Wed,  8 Apr 2020 22:09:42 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 761721C5619; Wed,  8 Apr 2020 22:09:42 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=Ryxh7P5R;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6A4171C579D;
	Wed,  8 Apr 2020 22:05:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 0235B1C579D; Wed,  8 Apr 2020 22:04:45 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 1377D1C0129
 for <speakup@linux-speakup.org>; Wed,  8 Apr 2020 22:04:24 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:836b:86b:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 624533D3A;
 Wed,  8 Apr 2020 19:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1586397953; bh=czpwF+xl+TjCSYmcE+CEZgPVzz6zCLQE7UjmHnhKoJk=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=Ryxh7P5RfRalaA/eS5sF3dUoAw9QIkxDRRUHx2iQdAQb5CfGJBIEuSjOiY26W4iF3
 bkNCgZm+H12BoJTRn3ypVGCNYzo0b3hrXlWDbzXtUuAhIBklVM8vpcCrc9438641f8
 71esP4acmtR/fIQeM9bitSy+QOG+HduSjbomcuzUtHDLM16KmJlK27iZcpCMR3QkAo
 tjOaL97Bhwyw3kcgxp3/0JKWBIPAYSS0JFWocd6KW0T0thC4l8YxOVJZZ/pGSpHCYy
 qtavGVjdag+VmAKzA4zgcvUgyKvj9vPJe79th02d0rieYu7lGhZq9D9TuXm3dPGtHV
 fULT3Msl8WbLw==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>)
 id 1jMMYF-0001aZ-8R; Wed, 08 Apr 2020 19:04:19 -0700
Date: Wed, 8 Apr 2020 19:04:19 -0700
From: Gregory Nowak <greg@gregn.net>
To: Glenn K0LNY <glennervin@cableone.net>, speakup@linux-speakup.org
Subject: Re: Installing eSpeakup
Message-ID: <20200409020419.GA5996@gregn.net>
References: <001401d60dc1$0b9d8490$7001a8c0@NUCPPYH>
 <20200408201524.GA3865@gregn.net>
 <000301d60e34$46414820$7001a8c0@NUCPPYH>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000301d60e34$46414820$7001a8c0@NUCPPYH>
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

Forwarding back on list.


On Thu, Apr 09, 2020 at 01:01:12AM -0500, Glenn K0LNY wrote:
> If pulseaudio is removed, what does espeakup use as a sound device?

It uses the alsa driver directly.

> I don't really understand the different parts.
> I believe speech-dispatcher is the go-between for a screenreader and a sound 
> module.

It can be, but doesn't have to be.

> But I don't know what they all use, espeakup and Orca.

The espeakup package uses alsa directly as far as I know, while orca
uses speech-dispatcher, which can use multiple audio backends, alsa
directly, and through pulseaudio among them. There is another package,
speechd-up which was written as a proof of concept, and it can replace
espeakup to join speakup's software synthesizer with speech-dispatcher.

Greg


> Glenn
> ----- Original Message ----- 
> From: "Gregory Nowak" <greg@gregn.net>
> To: "Glenn K0LNY" <GlennErvin@cableone.net>; "Speakup is a screen review 
> system for Linux." <speakup@linux-speakup.org>
> Sent: Wednesday, April 08, 2020 3:15 PM
> Subject: Re: Installing eSpeakup
> 
> 
> You'll likely  need to add speakup_soft to /etc/modules, and apt-get
> install espeakup. You may also have to work with, or purge pulseaudio.
> 
> Greg
> 
> 
> On Wed, Apr 08, 2020 at 11:16:21AM -0500, Glenn K0LNY wrote:
> > Hi,
> > I keep trying different distros on this netbook, an Asus 701 with little 
> > success.
> > I did get Ubuntu 11.04 working with Orca.
> > I want to try something newer, so I downloaded Ubuntu Server 14.10, and it 
> > will come without the GUI.
> > So if I can get it talking with eSpeakup, I will try to install Mate or 
> > Gnome.
> > But what are the proper steps to get espeakup going in the CLI after it 
> > boots up?
> > perhaps just apt-get install espeakup?
> > Or will I need to get something going first?
> > I have had no luck with Talking Arch or Vinux 4.1.
> > Thanks.
> >
> > Glenn
> >
> >
> > --------------------------------------------------------------------------------
> >
> >
> > -- 
> > Ubuntu-accessibility mailing list
> > Ubuntu-accessibility@lists.ubuntu.com
> > https://lists.ubuntu.com/mailman/listinfo/ubuntu-accessibility
> > _______________________________________________
> > Speakup mailing list
> > Speakup@linux-speakup.org
> > http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> >
> 
> -- 
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> skype: gregn1
> (authorization required, add me to your contacts list first)
> If we haven't been in touch before, e-mail me before adding me to your 
> contacts.
> 
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org 
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
