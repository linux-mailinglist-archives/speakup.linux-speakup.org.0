Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 59B68155062
	for <lists+speakup@lfdr.de>; Fri,  7 Feb 2020 03:01:26 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 18F1B1C0E0A; Thu,  6 Feb 2020 21:01:23 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=G1/7QsI6;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F0CEA1C2CD4;
	Thu,  6 Feb 2020 21:00:19 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 845FB1C0DDF; Thu,  6 Feb 2020 21:00:11 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [IPv6:2607:f2f8:a260::2])
 by befuddled.reisers.ca (Postfix) with ESMTPS id ACFAE1C0DBA
 for <speakup@linux-speakup.org>; Thu,  6 Feb 2020 21:00:07 -0500 (EST)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:a690:641:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 78BFA1D24
 for <speakup@linux-speakup.org>; Thu,  6 Feb 2020 18:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1581040808; bh=/+Nf1E1Xpav6PY2OWakUkn2EcqMeZw5SONpOtBpBFCs=;
 h=Resent-From:Resent-Date:Resent-To:Date:From:To:Subject:From;
 b=G1/7QsI6Csae6jdZGvXPkeqGJOdI6d7BmRgFinKkE8rEwJL325wLilvIu4qmJtZyA
 JERu+3juALLMSBzqPgfMaAMqiQBLiBlq58KFfOxY5q1L9ancI65D631HQyBjQc0rik
 5+VIdrbpaTw9Tv/nfc7Lt6O5DJq3LHiAWKcA0PXS2aoxfEAncqbDxhYZ+5jBHnidHD
 3aOPsf2Ydi05R5HV1ZnyIwEwZVt/8Y8C6MuW/TQ66fxrQ/4ORN0W5SbHdXPySrdwvf
 FKVP0ljnzrrQS3wiWC/aAQC9f2jtdxlbIh4HvEAp2POba2IIClhAdSjHxF/NBONo9k
 QSk7ROA/KZI9w==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1izsw8-0002tn-6z
 for speakup@linux-speakup.org; Thu, 06 Feb 2020 19:00:04 -0700
Resent-From: Gregory Nowak <greg@gregn.net>
Resent-Date: Thu, 6 Feb 2020 19:00:04 -0700
Resent-Message-ID: <20200207020004.GA11107@gregn.net>
Resent-To: speakup@linux-speakup.org
Date: Thu, 6 Feb 2020 17:01:27 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: driving a serial synthesizer through speech-dispatcher
Message-ID: <20200207000127.GA6319@gregn.net>
MIME-Version: 1.0
Content-Disposition: inline
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

Hi all.

I'm wondering if it's possible to drive a serial synthesizer through
speech-dispatcher? My goal here is to use orca to output to a serial
synthesizer.

While speech-dispatcher itself has no facility a far as I can tell to
communicate through serial ports, something like cat could be used to
send a text of string to the serial port for the synthesizer to
speak. This is crude, and there is no way to interrupt speech until it
completes.

An even better approach is to use
/sys/accessibility/speakup/synth_direct for the speech output. This
would use speakup settings in use for the synthesizer. The problem
with this is the same as with the cat command; no way to interrupt
speech, at least until the todo items in /sys/accessibility/speakup
are resolved, and maybe not even then. Interrupting could probably be
done by sending the silence command for the synthesizer in question to
/sys/accessibility/speakup/synth_direct, to cause the synthesizer to
stop speaking, and flush its buffer. Again, simply invoking speakup's
interrupt command by sending something to
/sys/accessibility/speakup/filename would make this synthesizer
generic.

Has anyone here done what I'm thinking of? If yes, can you please
describe your approach?

Greg


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
