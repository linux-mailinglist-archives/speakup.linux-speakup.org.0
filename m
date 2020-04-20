Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 306141AFFBA
	for <lists+speakup@lfdr.de>; Mon, 20 Apr 2020 04:15:00 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6190B1C7406; Sun, 19 Apr 2020 22:14:59 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=vHhteTQQ;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B5EEB1C73C5;
	Sun, 19 Apr 2020 22:14:56 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 3229A1C2C6F; Sun, 19 Apr 2020 22:14:54 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 8F5C11C0129
 for <speakup@linux-speakup.org>; Sun, 19 Apr 2020 22:14:52 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:9c26:102e:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 695932634
 for <speakup@linux-speakup.org>; Sun, 19 Apr 2020 19:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1587348999; bh=Smg0fqIuuv4TrH0ilR4SYeWDQmn9fy69g86aSUfNKB0=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=vHhteTQQv+13kV4lI5OBQy597l0UA9gS5juzCE8wRTa2NTj0vYe/g4zE3gHzjRVYn
 8hEkMo100w4Hpjj5Jrb4RYcOWXB+DuKyaLhLBDG4sUPx4rUBk7cVVZcUFmhIoF46mf
 KmHHkkyUZfOrzne1eoYAZo98LxvaatZl1M80JHZzFCrqF1AaSThSZjRuAJtSHVL80P
 TYK/0UMIGRuuwnUadjjiD5aMK0YdtS05E0QIJiB7G5+yVo1Qk4f4AjhkhSaW+eFQZ4
 fo4FkbQ+Wjc3SME7EdjIlPS4qxA8mkmHODqA+6CMNd0j132mWctsqi/avTj5b/HlHX
 c2b9eHWDgxSlw==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1jQLxF-0001fu-Iu
 for speakup@linux-speakup.org; Sun, 19 Apr 2020 19:14:37 -0700
Date: Sun, 19 Apr 2020 19:14:37 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
Message-ID: <20200420021437.GA6343@gregn.net>
References: <20200417011211.yz4a7gch76ewp6j5@function>
 <Pine.LNX.4.64.2004171438170.15807@server2.shellworld.net>
 <20200417193714.enlesc2vad3phjls@function>
 <Pine.LNX.4.64.2004172029030.20019@server2.shellworld.net>
 <20200418011411.3z37lu4w54yszjt6@function>
 <20200419022742.GA4101@gregn.net>
 <20200419033024.GA2777@qlf.suddenlink.net>
 <Pine.LNX.4.64.2004191959390.18776@server2.shellworld.net>
 <20200420002058.dzdm3nvydxtjkvw2@function>
 <Pine.LNX.4.64.2004191729530.19150@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.2004191729530.19150@server2.shellworld.net>
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

On Sun, Apr 19, 2020 at 06:10:16PM -0700, Chime Hart wrote:
> On another point, I probably mentioned an inflection option while asking for
> guidance. However, for 16years or more since I've been useing Speakup, I
> have constantly mentioned trouble with these DecTalk drivers, but since I am
> not a programmer I know nothing about writing code.

Yes, I do recall seeing you mention dectalk problems for a number of
years now. Without looking back at the list archives, and going from
memory, you seem to always state that your issues were due to speakup not
having support for a dectalk connected through USB. As far as I
recall, this is the first time you mentioned your dectalk and speakup
have an issue with inflection, which is why I tried to help this time
around.

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
