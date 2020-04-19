Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 423B81AF649
	for <lists+speakup@lfdr.de>; Sun, 19 Apr 2020 04:28:38 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5CEE11C73D3; Sat, 18 Apr 2020 22:28:37 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=LQT0Ry5T;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E609E1C73C4;
	Sat, 18 Apr 2020 22:28:24 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 0FB021C57B4; Sat, 18 Apr 2020 22:28:23 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id F2FCC1C0B50
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 22:28:20 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:9c26:102e:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 1A29397D
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 19:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1587263406; bh=pvP+YZ8dr6Vz6yhaiOrZfuTYBbDGzYm4gWskSRWYqOE=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=LQT0Ry5Tz0Ez8HUPKnjshf4l3ZxHDCL6mqZK5C/u4GWfbizbZdRsBOmHPELiDKLmw
 8eXCysD1qulRo3fFTk0agtAj2YJgwCFviM58XLSFrmkDw8XNnaa7yrzB2uztQyA/Ku
 rCKBkkwmxNfCjw0oQgwRFbifcFF7Q+h+Ba87Lgj3XFkcrERpbKczgV1Gg8L2VTQ356
 YeMyviofUOj7dsNeJDrnUiZ5ECmqvKO4+EXBPoOGEeSr3ZnDXj1DBF0pwthJaCniZ8
 wdtQ/YUs5mmSuQ/cgvKJHy6Ho1TnUfw/rO1GyzRO0vfNfeCbjZK7wa3Eww5txyR6CY
 EGVZC23Rcdepw==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1jPzgM-00015G-Fh
 for speakup@linux-speakup.org; Sat, 18 Apr 2020 19:27:42 -0700
Date: Sat, 18 Apr 2020 19:27:42 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
Message-ID: <20200419022742.GA4101@gregn.net>
References: <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
 <20200415044239.GA6357@gregn.net>
 <Pine.LNX.4.64.2004150141390.8315@server2.shellworld.net>
 <20200416232813.t2zszb42qd2icfks@function>
 <20200417004033.GA5829@gregn.net>
 <20200417011211.yz4a7gch76ewp6j5@function>
 <Pine.LNX.4.64.2004171438170.15807@server2.shellworld.net>
 <20200417193714.enlesc2vad3phjls@function>
 <Pine.LNX.4.64.2004172029030.20019@server2.shellworld.net>
 <20200418011411.3z37lu4w54yszjt6@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200418011411.3z37lu4w54yszjt6@function>
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

On Sat, Apr 18, 2020 at 03:14:11AM +0200, Samuel Thibault wrote:
> Why am I working on speakup
> then? Frankly, when I read messages like yours, I do wonder. I just
> happened to go by and see that speakup needed help. If it's not welcome
> I can just merely leave out speakup as it is. But I don't think that's
> what you hoped for? Then like I said, avoid sending the kind of harsh
> message you did, I don't see how they can help in any way.

Thank you Samuel very much for what you've done for the speakup
project over the years. It is do to your help and Oakash's that
speakup is about to be moved from staging into mainline, and I believe
it is in big part due to Samuel that speakup got into staging to start
with. What you've done for the speakup project and debian accessibility
so far is greatly
appreciated by myself, and I hope by others too.

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
