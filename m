Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AF4C82A254
	for <lists+speakup@lfdr.de>; Sat, 25 May 2019 04:02:35 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0D9531C6B3C; Fri, 24 May 2019 22:02:33 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.b="PKSFbq6L";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 818021C6B3E;
	Fri, 24 May 2019 22:01:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id DC0D81C5A5F; Fri, 24 May 2019 22:01:37 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id A19801C4393
 for <speakup@linux-speakup.org>; Fri, 24 May 2019 22:01:36 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2001:470:d:6c5:5909:85d:8daf:31b7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id CCBFF1C0
 for <speakup@linux-speakup.org>; Fri, 24 May 2019 19:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1558749743; bh=qLwJInCOEvAGDNsZHUT9dKTWcJiXLQWFqex4J11INnE=;
 h=Date:From:To:Subject:From;
 b=PKSFbq6Ljxgl3HkW/iHcfPAlqw6K7OeEPvjNGfbC8wPpOY3oW9hvVnxJJGND5V2Oy
 EYUQu5YNR+E+L0OJ6XS+JtOFA95XVhwZYUMrLKkhVaiAJ5uI97ZD/U/8XSeuhtE0s4
 tLu/s7YsAsuEeWOzzlti+Tth2w3PwHq2TzDSnbUi2BxRLPUYGmsPLqCnVl/RxXjTuK
 DDZqQfS5ZZv3J44peGdUL+xu43gImMCGaGcBJULaVxco97dAe0ebW4IAfcP9RH0u5H
 hvVtb4G4kNFzWkBPw5c0SGC1me8gzar21ojwPmQGzJOEOhw2qvKFDFdYSNDdlBSiFK
 rL5H+UBqy5CcA==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1hUM06-00027X-8u
 for speakup@linux-speakup.org; Fri, 24 May 2019 19:01:34 -0700
Date: Fri, 24 May 2019 19:01:34 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: any gentoo users here
Message-ID: <20190525020133.GA7731@gregn.net>
MIME-Version: 1.0
Content-Disposition: inline
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.100.3 at vserver
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

Do we have any gentoo users here? If yes, can someone please tell me if the
minimal install CD image contains speakup in the kernel and possibly
espeakup/espeak/sound drivers? Thanks.

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
