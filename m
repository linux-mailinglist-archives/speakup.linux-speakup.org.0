Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 64BEC1AB391
	for <lists+speakup@lfdr.de>; Thu, 16 Apr 2020 00:00:50 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1CF311C73C8; Wed, 15 Apr 2020 18:00:49 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=OyWzhL1y;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A69701C5801;
	Wed, 15 Apr 2020 17:59:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id BE2E81C578B; Wed, 15 Apr 2020 17:59:41 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 6244E1C0148
 for <speakup@linux-speakup.org>; Wed, 15 Apr 2020 17:59:38 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:f23:1d1c:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 169793D3A
 for <speakup@linux-speakup.org>; Wed, 15 Apr 2020 15:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1586988079; bh=1JDfr3ToB4WcmF+1jz15oAbzynifjWyjiqyRp71s0Xs=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=OyWzhL1y8xeHC7xh+W0Lj6f7wtdWNUq8D5/YedVK43J4ektUctAn/PNJIN9j+tgOW
 9FnsU0fLg6Kn6OxTEK1ATW384T+iOwFe5GUuRGZpmpdPjomV38aevw0eGwp9HAWgD5
 7FOY6j6b9nVESJZQB1ewKYQ5Z99736KamMR/l1+Ozmvrvxic7f0kBZDFYpZ4kQLomz
 LCegdf8I1UUkseOQfNyu9A2+XF/KjpReWLrRAq5MibnWwld8/4tlIiZrmfKxf6qRze
 9gRkBeLS3QXstIXfvZezG57Ug1IvXuv0oRv/oaKidi1G9uBYAU+Ag8t2OVoRT3/8FV
 bq2ITYNW7jJ/w==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1jOq4F-00014Y-6W
 for speakup@linux-speakup.org; Wed, 15 Apr 2020 14:59:35 -0700
Date: Wed, 15 Apr 2020 14:59:35 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
Message-ID: <20200415215935.GA3758@gregn.net>
References: <Pine.LNX.4.64.2004141805070.1871@server2.shellworld.net>
 <20200415034841.GA5932@gregn.net>
 <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
 <20200415044239.GA6357@gregn.net>
 <Pine.LNX.4.64.2004150141390.8315@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.2004150141390.8315@server2.shellworld.net>
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

On Wed, Apr 15, 2020 at 01:57:52AM -0700, Chime Hart wrote:
> Thanks Greg. Running sudo speakupconf save  didn't ruin my settings,
> however, once I ran it with load, the pitch still went to 122 and my
> inflection setting was knocked out. By the way that is a command sent to the
> dectalk, has little or nothing to do with Speakup.

Right, which is most likely why you're having the issues you mentioned.

> And lastly, we modified the charactors file, so when I type the number 9  it
> would say niner. And other similar changes, but running that load command
> knocks that out-and-resets to the defalts. By running my "rd" alias, it
> coppies the charactors file back in to use. Thanks for your guidance.

The speakupconf save should also copy the characters file. If you want
to be really sure that your custom characters file is the one that
gets loaded by speakupconf load, you can delete the one in
/etc/speakup/i18n/characters, and copy your own by hand into
/etc/speakup/i18n.

I would also strongly recommend opening an issue about the problems
you're experiencing at:

<https://github.com/bytefire/speakup/issues>

so that it is documented, and has a bigger chance of being looked
into. If that's something you're unable to do, I can open it for you,
and point to this discussion.

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
