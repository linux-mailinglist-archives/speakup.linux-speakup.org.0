Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D78B51D2514
	for <lists+speakup@lfdr.de>; Thu, 14 May 2020 04:21:30 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 357841C07F2; Wed, 13 May 2020 22:21:29 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=g1wBZ9H6;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 54C4C1C0B32;
	Wed, 13 May 2020 22:21:07 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 204E61C07EF; Wed, 13 May 2020 22:21:05 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 5035E1C0129
 for <speakup@linux-speakup.org>; Wed, 13 May 2020 22:21:03 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:4e87:236f:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 4AFBB12AC
 for <speakup@linux-speakup.org>; Wed, 13 May 2020 19:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1589423004; bh=nBi8nJsl+E4+9MG3E7Oa5bxqkKCvRxQXoWpTfKeB6Nw=;
 h=Date:From:To:Subject:From;
 b=g1wBZ9H65q1Ud5eozwRNVy/lPX/en5AsR5xAcavtoNNfsOIb03dulQotAsYJRpKTg
 xg1+irZt943hH7bQMxS+j2Gqn8/+wSBklQDyJ7NynDdF050G8JzmHdyi2t/6eyjblH
 Sx7ZhL4ahNANwnglMrg1cmORSBkRGhtlGmsPGbYicpkLooyL2Prmmz4RCIITs1VpQW
 vfWHlY8VniKq0ce1feOcjsc7/afQzb5+YisS9jSgq8d9gHSzJDyh4xygPC3+o/mmYE
 HuSFU4fWm8OB4MUzZikl3gbNjTuYLSbIPzC4fRQwPR1jncUNlJJfaGwvbmsUe8bJ30
 ZmIdGKjejEBSg==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1jZ3Ua-0001ie-Ei
 for speakup@linux-speakup.org; Wed, 13 May 2020 19:21:00 -0700
Date: Wed, 13 May 2020 19:21:00 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: calling all dectalk users
Message-ID: <20200514022100.GA6582@gregn.net>
MIME-Version: 1.0
Content-Disposition: inline
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

Hi all.

Just wanted to follow up. Can someone with a dectalk and who is
comfortable writing and reading
/sys/accessibility/speakup/synth_direct try the tests Samuel asked
for, and report back with the results:

<http://linux-speakup.org/pipermail/speakup/2020-April/062235.html>

I don't have a dectalk myself. If nobody here reports back, there is
one person who isn't on this list as far as I know, but has a dectalk
that I can ask if he could report back.

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
