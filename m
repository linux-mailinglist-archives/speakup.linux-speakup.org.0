Return-Path: <speakup+bounces-232-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 313883C3BA8
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 13:01:56 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6A42D380FA6; Sun, 11 Jul 2021 07:01:55 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=opopanax.net header.i=@opopanax.net header.a=rsa-sha256 header.s=dkim header.b=tA5etgls;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4BDE3380EB2
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 07:01:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B55CE380EA8; Sun, 11 Jul 2021 07:01:49 -0400 (EDT)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A41C5380BE5
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 07:01:47 -0400 (EDT)
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4GN3qr5qBFz8tX9
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 11:01:44 +0000 (UTC)
Authentication-Results: mail.opopanax.net (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=opopanax.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=opopanax.net; h=
	user-agent:x-mailer:references:in-reply-to
	:content-transfer-encoding:content-type:mime-version:date
	:subject:to:from:message-id; s=dkim; t=1626001304; x=1628593305;
	 bh=g8D2oFOVehqGTDK0mwJJ+uKFxMaP6u/dLIEYPJ51pjo=; b=tA5etgls/LXh
	qezxZIJGB1JQnP1ELiJnC5plOP+SikkAceStnr4070edYc9uj89pOgp7kf4Jhcck
	siPBPwI6f11MIS3f0fR1jofs2kImz9PF/yScIg/9haW6b5jf9rz58jXDhOO6gBGx
	hS5v006tsunOpfeDKswtspBROrw994zP39BVeSUX6xW8KZ4yj7IYKRnKrKDYtYBo
	CBOk4WKnwkIpHKtlhq5dO4/8/v4Da+ZJA7CaotZKfl6sMP9CF/LLlJxve0xpqqLa
	7vsjX+3q00anF8XiPNKiVrr4eQWWnaHgRJZ5WZrom+aJ72nlL9Gt5dTvHGjA6OhD
	+fzen4rIuw==
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id cf0vVnKLsgZ8 for <speakup@linux-speakup.org>;
	Sun, 11 Jul 2021 11:01:44 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net [208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4GN3qq5Qfzz8tQW
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 11:01:43 +0000 (UTC)
Message-ID: <20210711.110142.703.2@[192.168.1.100]>
From: "Rob Hudson" <rob_hudson3182@opopanax.net>
To: speakup@linux-speakup.org
Subject: Re: Installing OS on rackmount server
Date: Sun, 11 Jul 2021 06:01:42 -0500
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <5ff69fe5-fb5b-5233-0c71-1165b9111eed@raspberryvi.org>
References: <20210711.104927.121.1@[192.168.1.100]>
	<5ff69fe5-fb5b-5233-0c71-1165b9111eed@raspberryvi.org>
X-Mailer: POP Peeper Pro (5.1.2.0)
User-Agent: POP Peeper Pro (5.1.2.0)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I was given to understand that a lot of bioses have trouble seeing USB =
hubs. But I can try that, good thought.
No sound on this puppy. So it's going to be braille or, once I get the =
installer going, ssh.
----- Original Message -----
From: Mike Ray <mike@raspberryvi.org>
To: speakup@linux-speakup.org
Date: Sun, 11 Jul 2021 11:54:56 +0100
Subject: Re: Installing OS on rackmount server

> 
> 
> Passive USB hub?
> 
> Does the rack server have sound? If so you could install Debian from the
> net install CD image written to a flash drive.
> 
> Or, even if the server does not have sound, you could insert a USB sound
> dongle. Again, by using a USB hub to expand the number of USB ports.
> 
> You could install something else as well, such as Ubuntu. But if it is a
> server only, there is no reason to install a desktop. The Debian net
> install allows you to install only the cli, and no GUI.
> 
> I would not try installing Linux on another machine and then moving it
> across, unless it's an identical machine. I assume lots of drivers will
> be selected during the install which would not be appropriate for the
> eventual host.
> 
> 
> 
> 
> On 11/07/2021 11:49, Rob Hudson wrote:
> > Tried this on another list, got no answer, so trying here. I've got a =
Cisco rackmount that needs an OS. It's only got 2 usb ports, so I can't =
hook up a keyboard, a braille display and a linux flash drive. I'm given =
to understand the CIMC interface is inaccessible, and I have no idea how =
to set up a PXE server. Is my only option for installing an OS to connect =
a hard drive to another computer, install linux on there and then put it =
in the server?
> > 
> 
> 
> -- 
> Michael A. Ray
> Analyst/Programmer
> Witley, Surrey, South-east UK
> 
> "Perfection is achieved, not when there is nothing more to add, but when
> there is nothing left to take away." -- A. de Saint-Exupery
> 
> 

