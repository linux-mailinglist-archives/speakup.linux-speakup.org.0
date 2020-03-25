Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 7EF66192036
	for <lists+speakup@lfdr.de>; Wed, 25 Mar 2020 05:45:09 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id BAF6C42804B7; Wed, 25 Mar 2020 00:45:02 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.b="dFdfRhOU";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 708F0428049E
	for <lists+speakup@lfdr.de>; Wed, 25 Mar 2020 00:44:48 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 630591C57D7; Wed, 25 Mar 2020 00:44:48 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=dFdfRhOU;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 28ACC1C73BA;
	Wed, 25 Mar 2020 00:44:00 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 83A061C2DE7; Wed, 25 Mar 2020 00:43:58 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 146F11C0D87
 for <speakup@linux-speakup.org>; Wed, 25 Mar 2020 00:43:54 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:a686:c07f:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 6D53F228E;
 Tue, 24 Mar 2020 21:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1585111503; bh=gMeqwoc4paVxBkI+G//p1Huw+mDZZdaeGhSBnH0Udrs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dFdfRhOUOMTv+/o3h1R7GRrBX89C1sq4Dksm1v4UUC0vhRwqjA6xzktyaUDGlfeSI
 tmYI4UnxG1+/WkienTvzC/JqVIiFokSqy5uukQ5XAZJkCmN2lle73tdfNN8R3qnrec
 OdqubMY9DJ48LKH/09uE1XyumvbSinRr2Xx1nOgbCSS+xWXms3Snzs8n0HgzWlhCKI
 RUcz1bH3DTcB3MTjgWx9UUjzhSys1aHS9x6Dw598kSj2MGnBJWNv+NEbXAvgNRMP+z
 eqrwLiTWg+8K7E+D6bKYkn2ZrwMVpKSp7pc/30xZp16Dr7vSjm8IazdXg/Aq3ZxW3W
 rUrbK0gd+mWqw==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>)
 id 1jGxtP-0001sL-5U; Tue, 24 Mar 2020 21:43:51 -0700
Date: Tue, 24 Mar 2020 21:43:51 -0700
From: Gregory Nowak <greg@gregn.net>
To: Glenn K0LNY <glennervin@cableone.net>
Subject: Re: [raspberry-vi] A bit off topic, Speakup and Debian
 Stretch-Buster (fwd)
Message-ID: <20200325044351.GA7063@gregn.net>
References: <Pine.LNX.4.64.2003211738470.31197@server2.shellworld.net>
 <20200322210257.zqxh5jp7fo64hp36@function>
 <030f01d601fb$4cb137f0$7001a8c0@NUCPPYH>
 <20200324231401.GA4098@gregn.net>
 <076901d6023d$f1ae4940$7001a8c0@NUCPPYH>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <076901d6023d$f1ae4940$7001a8c0@NUCPPYH>
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
Cc: speakup@linux-speakup.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

I'm directing this back on list.


On Tue, Mar 24, 2020 at 07:40:11PM -0500, Glenn K0LNY wrote:
> I got it working, the only thing I need to do to get it fully functional is
> to make the WIFI work.
> I think what fixed the no speech was to use raspi-config to tell it to use
> option 1, which is not the HDMI.
> I also installed mate-desktop, but so far it hasn't booted to it.
> BTW, does anyone know how to change the speakup speech parameters?
> Like speed and such.

That's documented in the speakup user guide on
http://www.linux-speakup.org

Greg


> Thanks.
> 
> Glenn
> ----- Original Message ----- From: "Gregory Nowak" <greg@gregn.net>
> To: "Glenn K0LNY" <GlennErvin@cableone.net>; "Speakup is a screen review
> system for Linux." <speakup@linux-speakup.org>
> Sent: Tuesday, March 24, 2020 6:14 PM
> Subject: Re: [raspberry-vi] A bit off topic, Speakup and Debian
> Stretch-Buster (fwd)
> 
> 
> >On Tue, Mar 24, 2020 at 11:40:56AM -0500, Glenn K0LNY wrote:
> >>I have a Raspberry PI Model B, version 2, and I'm trying to get eSpeak
> >>and
> >>speakup going.
> >>I installed the version:
> >>2020-02-13-raspbian-buster.img
> >>and I can SSH into it, and I was getting audio out with:
> >>speaker-test -c 2
> >>but if I tried espeak "hello"
> >>I didn't get anything until I installed pulseaudio.
> >>Now the espeak works, but still no speakup on boot-up.
> >>I installed speakup and that did not work, although it seemed to install
> >>okay.
> >
> >I assume you mean espeakup, not speakup. I haven't used speakup on a
> >rpi since raspbian/devuan jessie. However, I do recall back then that
> >espeakup didn't work properly through the on board sound chip, and
> >Michael Ray I believe posted work arounds for that. I don't know if
> >the situation has changed since. I don't think espeakup and pulseaudio
> >will play any nicer on the rpi than they do on the PC. My solution
> >back then was to install speechd-up, and get output from speakup that way.
> >
> >>I installed Orca with:
> >>apt-get install gnome-orca
> >>and that seemed to install okay, but it did not help speakup.
> >
> >First, I don't see how installing orca is supposed to help speakup,
> >since they're separate screen readers using different interfaces to
> >provide speech output. Second, last time I checked, raspbian was using
> >their own slimed down desktop environment not using gtk, so that
> >wouldn't work with orca. I don't know if that has changed since
> >either. If it hasn't, your best bet is probably to install raspbian
> >light, and then manually install mate or xfce. It will be slow almost
> >to the point of not being very useful in my opinion, but it should
> >work. I think gnome is too bloated for the rpi, but I could be wrong
> >there.
> >
> >>I had done a general Debian update before doing all the above.
> >>The only way eSpeak works with strings of text is via SSH, not the
> >>plugged
> >>in keyboard.
> >
> >Is the rpi recognizing the keyboard when you plug it in? Are you sure
> >you successfully logged in on a text console before attempting to run
> >espeak from the keyboard?
> >
> >>I would like to get a desktop going, but this RPI may not have the RAM
> >>for
> >>it.
> >
> >I tried mate on a rpi 3 back when I was using devuan jessie. It worked
> >as proof of concept, but browsing with firefox brought the unit to its
> >knees on most sites. A rpi2 might not have the RAM for a full GUI like
> >mate, but I could be wrong there too.
> >
> >Greg
> >
> >
> >-- 
> >web site: http://www.gregn.net
> >gpg public key: http://www.gregn.net/pubkey.asc
> >skype: gregn1
> >(authorization required, add me to your contacts list first)
> >If we haven't been in touch before, e-mail me before adding me to your
> >contacts.
> >
> >--
> >Free domains: http://www.eu.org/ or mail dns-manager@EU.org
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
