Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8D23C1AD4C1
	for <lists+speakup@lfdr.de>; Fri, 17 Apr 2020 05:15:54 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0072F1C73EF; Thu, 16 Apr 2020 23:15:53 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=gZtMCDid;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AE2671C73BF;
	Thu, 16 Apr 2020 23:15:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id E7D6F1C57AB; Thu, 16 Apr 2020 23:15:43 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B69B01C2DA4
 for <speakup@linux-speakup.org>; Thu, 16 Apr 2020 23:15:42 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:f23:1d1c:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 1C9802510
 for <speakup@linux-speakup.org>; Thu, 16 Apr 2020 20:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1587093445; bh=Ddc0Ktzts2HgzCDE1oFxOpUODMUagtkp+zHq5oYJr5g=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=gZtMCDidEjZE5u3oQQfvN5cWvuK43YymdoHfxdvm7+KuCaBh8LJm7B1/SV9XHqKCj
 VMpikWPOfKJiF1xomQAPGYKhe8QtjBamZZVfPia/lJkmvqcRzfWg5nLEs1B9PTSwt2
 vrVAC4wslLuAdHF1GnoPUQsIBye3H3bJPmJlDcyHCg1igrUIo4bDacHL30iJrjgAC7
 HGA9VjpucVX+dZI5WdkBeWlOr9SvLyzJhaqAdDwmVjD6fT/aVy5ybpZ5DT2V9O3AUG
 JI2rdUivqWo4hNxSSH4YmTDmyBZPZH3KWmxi0VdMa2eSl4nfTBg0cqbnzAmtqg04a4
 tEY5jNwrs9vcg==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1jPHTf-0001qs-EL
 for speakup@linux-speakup.org; Thu, 16 Apr 2020 20:15:39 -0700
Date: Thu, 16 Apr 2020 20:15:39 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
Message-ID: <20200417031539.GA6929@gregn.net>
References: <Pine.LNX.4.64.2004141805070.1871@server2.shellworld.net>
 <20200415034841.GA5932@gregn.net>
 <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
 <20200415044239.GA6357@gregn.net>
 <Pine.LNX.4.64.2004150141390.8315@server2.shellworld.net>
 <20200416232813.t2zszb42qd2icfks@function>
 <20200417004033.GA5829@gregn.net>
 <20200417011211.yz4a7gch76ewp6j5@function>
 <20200417012858.r5kipbsmnrevwymq@function>
 <Pine.LNX.4.64.2004161900080.4171@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.2004161900080.4171@server2.shellworld.net>
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

On Thu, Apr 16, 2020 at 07:04:18PM -0700, Chime Hart wrote:
> Also, to run
> these tests, how would I send commands directly to this unit? Thanks so much
> in advance

You'd send them the same you've been doing through
synth_direct. Samuel pretty much gave the syntax in his post to which
you replied. In your case, you'd probably use sudo as you have been
doing. Since you'd need to issue multiple echo commands, it's probably
easier to just become root outright, either through sudo, or by
logging in as root, or through su.

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
