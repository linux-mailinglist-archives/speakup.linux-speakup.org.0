Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (unknown [IPv6:2001:470:1d:288:8e89:a5ff:fe59:6a4d])
	by mail.lfdr.de (Postfix) with ESMTP id 5DA361A2A37
	for <lists+speakup@lfdr.de>; Wed,  8 Apr 2020 22:18:30 +0200 (CEST)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 70A574280463; Wed,  8 Apr 2020 16:18:13 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.b="nQrLwgsg";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 715014280488
	for <lists+speakup@lfdr.de>; Wed,  8 Apr 2020 16:17:47 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 65BCA1C5619; Wed,  8 Apr 2020 16:17:47 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=nQrLwgsg;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 74CE91C57F4;
	Wed,  8 Apr 2020 16:16:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 36D531C57BA; Wed,  8 Apr 2020 16:15:39 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id E3C141C5619
 for <speakup@linux-speakup.org>; Wed,  8 Apr 2020 16:15:29 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:836b:86b:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 4F8211507;
 Wed,  8 Apr 2020 13:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1586377018; bh=hSqBBO/va8FlfeccMoAN1kepnmlJzDB+jeiH36tR10I=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=nQrLwgsgMh2NQOyVe086duyFRyZi6wK/GfVQE9O52c8QUkVjycnMZauHMQiDWwDYz
 V+fKbzbmXYXsUgTf2lQg+EQWTlbTrmqZoO78ZcTGBt+n1Xh1OcOXsw07mwwLsAkVX2
 HU5etCxjjq0uobnHXztybJLQ09DDw41qFTZf/O7k2AZtUM5YtL44SjVkFt3JnNTHTb
 aqfGhJ08W7lePHo9sCqriFBDuTAKp98RVsDTfvh/cpbBrSbYA07jBABS5g/7r/8HZ3
 ADs+SiEoca/NDRXZrduoY8/uRACriLuS2Zw8W7e8/V688aQ4fl8Wd0fg+PgNlDfG98
 S3iL+cOdBUovg==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>)
 id 1jMH6a-00015i-RM; Wed, 08 Apr 2020 13:15:24 -0700
Date: Wed, 8 Apr 2020 13:15:24 -0700
From: Gregory Nowak <greg@gregn.net>
To: Glenn K0LNY <GlennErvin@cableone.net>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Installing eSpeakup
Message-ID: <20200408201524.GA3865@gregn.net>
References: <001401d60dc1$0b9d8490$7001a8c0@NUCPPYH>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <001401d60dc1$0b9d8490$7001a8c0@NUCPPYH>
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

You'll likely  need to add speakup_soft to /etc/modules, and apt-get
install espeakup. You may also have to work with, or purge pulseaudio.

Greg


On Wed, Apr 08, 2020 at 11:16:21AM -0500, Glenn K0LNY wrote:
> Hi,
> I keep trying different distros on this netbook, an Asus 701 with little success.
> I did get Ubuntu 11.04 working with Orca.
> I want to try something newer, so I downloaded Ubuntu Server 14.10, and it will come without the GUI.
> So if I can get it talking with eSpeakup, I will try to install Mate or Gnome.
> But what are the proper steps to get espeakup going in the CLI after it boots up?
> perhaps just apt-get install espeakup?
> Or will I need to get something going first?
> I have had no luck with Talking Arch or Vinux 4.1.
> Thanks.
> 
> Glenn
> 
> 
> --------------------------------------------------------------------------------
> 
> 
> -- 
> Ubuntu-accessibility mailing list
> Ubuntu-accessibility@lists.ubuntu.com
> https://lists.ubuntu.com/mailman/listinfo/ubuntu-accessibility
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
