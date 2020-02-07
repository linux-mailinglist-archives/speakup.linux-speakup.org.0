Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 90743156164
	for <lists+speakup@lfdr.de>; Fri,  7 Feb 2020 23:57:57 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B09D41C2C76; Fri,  7 Feb 2020 17:57:56 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=a+xLPXz4;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 16ECB1C2C75;
	Fri,  7 Feb 2020 17:57:25 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 3D5021C0148; Fri,  7 Feb 2020 17:57:12 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 0154B1C0148
 for <speakup@linux-speakup.org>; Fri,  7 Feb 2020 17:57:05 -0500 (EST)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:a690:641:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 3CBFCF1A
 for <speakup@linux-speakup.org>; Fri,  7 Feb 2020 14:57:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1581116228; bh=/TQ+Djmx4arZSr1F55F4VwE1NF7u2Hs2VCUMyP0EK/I=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=a+xLPXz4Ji8xxMqCoWIbBG14y9GvuTQnAAO4yYF02g9NENyFQmaW3np/+VRstRujH
 fTAd5To2P5SufRtXFbrsYWVyr4uXLmKEEWHRDgiAvDismzfJvRR8uPjAVhUlL9vCml
 uDtQBHK9pRyTdUmFqmZzLJV4ozPrEEInVbz7HgjdJT209P29dW3mMSCQQI9+fOxlVM
 SLaE9aUbGpSgOpSdbk3M+fDE/zdZLAg5KuXOlkPGRqDLv1hPmEeahF9FsUfIpPVlYp
 qk9VfhhqZbhWvUW2Qq8Sbzd4WwNpmUoFB/DuSR/mkoQgLVv/wtJnd8pRUNum/Y5475
 BH/x6T7vpajuw==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1j0CYY-0001lB-RG
 for speakup@linux-speakup.org; Fri, 07 Feb 2020 15:57:02 -0700
Date: Fri, 7 Feb 2020 15:57:02 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: driving a serial synthesizer through speech-dispatcher
Message-ID: <20200207225702.GA5375@gregn.net>
References: <20200207000127.GA6319@gregn.net>
 <20200207081024.o7e7hm7k7ddi7cj2@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207081024.o7e7hm7k7ddi7cj2@function>
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

Thanks to everyone for all the input so far. I didn't realize that
some of the modules with the .conf files also have binaries as the
backend. I do indeed see that they're there in
/usr/lib/speech-dispatcher on my system. I'll have to look at the
speech-dispatcher code, and see how they do what they do.

I'm still in favor of letting speakup drive the serial synth. Thanks
to Samuel's comment below, I know what part of the speakup code to
look at, and the comment that it should be a fairly simple beginner kernel
hacking project is encouraging. I'll add this project to my to do list,
and will explore it once I have more time, hopefully sooner rather
than later. Thanks again.

Greg


On Fri, Feb 07, 2020 at 09:10:24AM +0100, Samuel Thibault wrote:
> Indeed. But there is another approach, which was made for this: using
> /dev/synth. For now that file only supports writing to it to get
> text emitted, but ioctls can be defined to drive it, such as setting
> pitch etc. in a portable way across synthesizers (speakup will handle
> these details), but also interrupting. That all happens in speakup's
> devsynth.c and can be a relatively easy task for kernel hacking
> beginners.
> 
> Samuel
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

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
