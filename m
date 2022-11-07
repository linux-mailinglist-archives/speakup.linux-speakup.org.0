Return-Path: <speakup+bounces-846-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C94A66203CD
	for <lists+speakup@lfdr.de>; Tue,  8 Nov 2022 00:32:55 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=mijKanfG;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A7FF0383624; Mon,  7 Nov 2022 18:32:54 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 88153382C44
	for <lists+speakup@lfdr.de>; Mon,  7 Nov 2022 18:32:54 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D31CB3831D7; Mon,  7 Nov 2022 18:32:45 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AA49438041F
	for <speakup@linux-speakup.org>; Mon,  7 Nov 2022 18:32:45 -0500 (EST)
Received: from vbox.gregn.net (unknown [172.56.81.116])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 5C5DB3D8;
	Mon,  7 Nov 2022 15:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1667863934; bh=flxWA7vAZ1jpfg3WUgdCe52fiH9whbicgnloaTDJIzE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mijKanfG65HjKo+eAhuve7d3RenGsrfY2mJyqCvHa3gibTLIIej8MxOXKrIt99MZI
	 EvATagnIVR7ZUdkHw9uRe4eb6Tlcp28amtLsXwNUl6gLuI41olkNrxCEyNClXX14HP
	 xczcQqha7/VabZwzpVyyRsg0JBsmrEFJ0h9uA591hN/Jp8rSYVZs9pfpBV/EnP/kYR
	 cOvYpPKx0kLOZf6NfrpHn63PoFmEm7WZDtI3gz7S/Ok4kBwS04HgmSNPDsUU9ZkCPc
	 NqlOC3ueTy45+hsg/Mn8WREmg35IFuKdROwdyt2CN/Tls+I8KDSiK6D2LdeC99VSze
	 4o2APqoi/GHJg==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 0F205C300; Mon,  7 Nov 2022 16:32:13 -0700 (MST)
Date: Mon, 7 Nov 2022 16:32:13 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Voxin/ibmtts with eSpeakup
Message-ID: <Y2mVfR5AnGTOs9Sm@gregn.net>
References: <072a01d8ef2a$7e7bd820$80ffa8c0@Win7VM>
 <08a901d8efbc$33020490$80ffa8c0@Win7VM>
 <Y2RSm7hG8WHdiygs@gregn.net>
 <0b4101d8f063$69069fe0$80ffa8c0@Win7VM>
 <Y2XF6wmcbFCsq5l/@gregn.net>
 <0bc501d8f0bd$c222dee0$80ffa8c0@Win7VM>
 <Y2XV2QOPjryMKRJv@gregn.net>
 <0c3801d8f145$e2eb2b90$80ffa8c0@Win7VM>
 <Y2h53YPr311PDObk@gregn.net>
 <0d4001d8f25b$b873c450$80ffa8c0@Win7VM>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0d4001d8f25b$b873c450$80ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

In your speech-dispatcher.log, I see this:

[Sun Nov  6 21:34:35 2022 : 781132] speechd:  Initializing output
module voxin
+with binary /usr/lib/speech-dispatcher-modules/sd_voxin and
configuration
+/home/lenny/.config/speech-dispatcher/modules/voxin.conf
[Sun Nov  6 21:34:35 2022 : 781180] speechd:   Output module is
logging to file
+/run/user/1000/speech-dispatcher/log//voxin.log
[Sun Nov  6 21:34:35 2022 : 782083] speechd:  Module voxin loaded.
[Sun Nov  6 21:34:35 2022 : 783321] speechd: Exec of module
+"/usr/lib/speech-dispatcher-modules/sd_voxin" with config
+"/home/lenny/.config/speech-dispatcher/modules/voxin.conf" failed
with error 2:+No such file or directory
[Sun Nov  6 21:34:35 2022 : 784208] speechd: ERROR: Bad syntax from
output
+module voxin 1

It looks like you're running speech-dispatcher with per user
configuration instead of system wide. That's something I haven't done,
and don't have experience with. My best suggestion is to copy your
system wide voxin.conf into lenny's configuration directory:

mkdir -p /home/lenny/.config/speech-dispatcher/modules
cp /etc/speech-dispatcher/modules/voxin.conf
/home/lenny/.config/speech-dispatcher/modules/
chown lenny.lenny
/home/lenny/.config/speech-dispatcher/modules/voxin.conf

Reboot, and see if you get speech. If you don't, you should now at
least have a voxin.log file which should help pin down other problems.

Greg


On Sun, Nov 06, 2022 at 09:47:54PM -0600, K0LNY_Glenn wrote:
> Here are two files from 1000/speech-dispatcher/log
> The voxin log is empty.
> 


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

