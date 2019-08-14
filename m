Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2E1428E127
	for <lists+speakup@lfdr.de>; Thu, 15 Aug 2019 01:16:21 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4CB3B1C4417; Wed, 14 Aug 2019 19:16:20 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.b="WTYF+ifR";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AC3F81C4439;
	Wed, 14 Aug 2019 19:16:05 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 258321C43D9; Wed, 14 Aug 2019 19:16:04 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id AA3D61C43D1
 for <speakup@linux-speakup.org>; Wed, 14 Aug 2019 19:16:02 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2001:470:d:6c5:49fc:dec5:cd58:ea9f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 58BDD54
 for <speakup@linux-speakup.org>; Wed, 14 Aug 2019 16:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1565824727; bh=YXIvxva5Tn1CJtiTm1Je+ZsY8ZvD0XCc7+f2CauOROM=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=WTYF+ifRFwqjFyfSlH1NCCBIjIs5v4kQH/CdxmEk2TuJbzgsI4di+gW3Rtu4lgkZf
 584OoNFgu/ORxN1iUolq3NJeFHxuyYtL3XujFGoWIdZpB2nrSF3ps2ozbH5WzOlCT4
 6glZXYQVO7doX9+zu83W8vkzEAlsDHAd4pmdRgZZrm4vvPS0FKYkOHop5J6BPvY0Ni
 Vs7Pp6eCj+kQrgYjO9f4HVqxPx37zsAdSFNZ55i7nXmIkOcfRWrOEHVTeXB160cZkx
 hQEMqEG7N024s0SuKNVnLFBbDS02dAiaD8sfphDTQKLknoe+gdzhJYSN+N0PBOxzl7
 3Qxc+rZTv6qVg==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1hy2Ut-0001Rm-Ui
 for speakup@linux-speakup.org; Wed, 14 Aug 2019 16:16:03 -0700
Date: Wed, 14 Aug 2019 16:16:03 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: Re: Linux Open Source Presentation
Message-ID: <20190814231603.GA5329@gregn.net>
References: <20190721180431.7ce1f716@narunkot>
 <20190724070600.6gbugq7y6xztosd2@function>
 <CAOtcWM2K-ch9yJaL5C+-ZGPn4hu=ntGDT926_pPsr9Hz74zijA@mail.gmail.com>
 <20190813080826.5gemx4vok2e6zcg3@function>
 <CAOtcWM0OPjtcY=rnSSn2us7kWPG7MDe=Jfh+WAVSGLjibQGUxw@mail.gmail.com>
 <20190814083104.fh7a6t4kosxpzoe3@function>
 <CAOtcWM2n8kMxROwuXrf0YzCf8zsnDSy9VbWRBQJsg3kvyqO4vQ@mail.gmail.com>
 <20190814215134.dl5pywebjghezslx@function>
 <Pine.LNX.4.64.1908141832440.26398@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.1908141832440.26398@server2.shellworld.net>
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

The web site for the conference seems to state the presentation will
be recorded.

Greg


On Wed, Aug 14, 2019 at 06:33:58PM -0400, Karen Lewellen wrote:
> Will this presentation be recorded or preserved in some way?  Would like to
> share   it with some general Linux users groups.
> Karen


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
