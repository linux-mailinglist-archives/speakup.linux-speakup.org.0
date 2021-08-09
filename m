Return-Path: <speakup+bounces-261-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2C0CF3E5027
	for <lists+speakup@lfdr.de>; Tue, 10 Aug 2021 01:53:53 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DE175381009; Mon,  9 Aug 2021 19:53:51 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=CFwj1cbG;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C6F02380FE9
	for <lists+speakup@lfdr.de>; Mon,  9 Aug 2021 19:53:51 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6D0C0380A39; Mon,  9 Aug 2021 19:53:49 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 22AF1380605
	for <speakup@linux-speakup.org>; Mon,  9 Aug 2021 19:53:49 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:7228:3a7a:a00:27ff:fe38:8df7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id DE1F82547;
	Mon,  9 Aug 2021 16:53:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1628553230; bh=OMYN45RDmyVfi2NPEsFNcJm1Qb1THgkxlhiVPfDaJcU=;
	h=Date:From:To:Cc:Subject:From;
	b=CFwj1cbGnF5gdFESZexeFo5k7SmWGp1/qPLcl6Ra3xRfQIWE9BmyMBmSyxBDGS+w2
	 IgWrbU1wiIQTNdFNr6eqLnQGjbgn48ir3odZg+Pisx9MoSbRUnb63htJdhIFT/wuVR
	 1Ue119OtlqvBAgn7xsJww+QkwvN8G2EDNEOtgiyG7z5iD81G9Dy7iq+QadARaUqp79
	 IbRh6UKMPfMaY0/GDAprVsr7UzjN4ujan9sgBaCE3XHQ1YkroIOiTlIdr38ShimDAI
	 Yg4jwG1BplIkUm6r0WyArjuSb8aPNi++7drhm7uArVQYfeLgd6acCxV108IEsCcZoi
	 2BPUobwEowd2g==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
	(envelope-from <greg@gregn.net>)
	id 1mDF5V-0001Fl-Rt; Mon, 09 Aug 2021 16:53:45 -0700
Date: Mon, 9 Aug 2021 16:53:45 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Cc: mark@hindley.org.uk
Subject: announcing devuan Chimaera beta install isos
Message-ID: <20210809235345.GA4405@gregn.net>
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
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.102.4 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello all.

I wanted to let folks know that beta install iso images are available
for devuan Chimaera, which is based on the up coming debian release
after buster.

We have a major change to announce in the release of Chimaera. I know
that others besides myself remove pulseaudio as one of the first tasks
that we do upon installing a debian or devuan system. Also, when
installing a graphical desktop in debian, and in past releases of
devuan, there is the problem that both the graphical desktop, and
speakup aren't accessible with software speech at the same time in the
installed system, because pulseaudio and speakup both fight for
control of the audio hardware.

Thanks to Mark, one of the devuan developers who did the heavy lifting
on this issue, we now have the ability to install devuan Chimaera
without pulseaudio in the installed system. This means that both
speakup and a graphical desktop are ready to go upon booting into the
installed system post install. I have verified that firefox still plays audio
without pulseaudio installed, and that speakup can be used while
firefox is playing audio in the graphical desktop. 

The option which controls whether or not to install pulseaudio
is item 10 in the list of software to install, called Speech
accessibility configuration. This option is chosen by default along
with the mate desktop, which seems to be the most accessible graphical
desktop. Those who want to return to the way things were in previous
releases, and the way things seem to be in the up coming debian
release can simply choose to not install Speech accessibility
configuration. Alternatively, installing pulseaudio in the installed
system will also revert the changes that Speech accessibility
configuration makes by purging the
devuan-speech-dispatcher-config-override and task-speech-accessibility
packages. For those who are not installing one of the graphical
desktops the Speech accessibility configuration option should also not
be chosen, since it isn't necessary in a text console only system,
and since choosing that option will also pull in packages which aren't
necessary in a text only system.

The devuan installer is started with speech synthesis the same way the
debian installer is started with that option, by pressing s, or s
followed by enter after booting. Using a serial speech synthesizer and
brlTTY are items I haven't gotten around to testing yet, but they
should also work as far as I know. For those who want to give things a
try, you can grab Chimaera netinst iso images from:

<https://sledjhamr.org/devuan-cd/devuan_chimaera/installer-iso/>

or:

<http://files.devuan.org/devuan_chimaera/installer-iso/>

I won't give direct links, since the netinst images are updated at
least once a week. If someone finds problems, please report back, and
Mark with myself will see what can be done. Thanks for reading.
Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

