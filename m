Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 58ADA28A524
	for <lists+speakup@lfdr.de>; Sun, 11 Oct 2020 05:22:06 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E400F380BB2; Sat, 10 Oct 2020 23:22:05 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=fdwDHwHm;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C1BFF380B31;
	Sat, 10 Oct 2020 23:22:03 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id E515F380B26; Sat, 10 Oct 2020 23:22:01 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B0D0538096B
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 23:22:01 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:4a3f:1b72:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 09B7514F
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 20:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1602386521; bh=/pt7EbiizeNYGz5nRHlDZja6q1GhdDwB5TpuU65XiV0=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=fdwDHwHmkxueD5ut+UhXJNPsToqf+5b6taXMLZyBVY2Xj1OucyHjZoDUI8tMEvM9q
 w4ugl06JfQfdyc2KmCbhxjo8w2ZnrGXKdqFlSWS/xwJjIyrcFgJUryElZh/lvx3gtu
 tPMZD22Ta0J3svRRkrxFfgreUyk1N5gfObkScsBMlYo3SsS93ZNynoPEmvi9gQKmje
 /3uppDljdYMpHMVnl/8yG4BD8rGxGM150Iya6bKbrdFKjkwCBaVyBji1MYCTdG/hwC
 wkz5RFPPuTW7bmO0jGXoZ5Vxrpc8ENdMgFcHMUonb90/nFwwbELPOlhWTfwHtRrXft
 B50KuXYAfaq8g==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1kRRvj-0001GM-2H
 for speakup@linux-speakup.org; Sat, 10 Oct 2020 20:21:51 -0700
Date: Sat, 10 Oct 2020 20:21:51 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: settings for blind people using android
Message-ID: <20201011032150.GA4584@gregn.net>
References: <E1kQ0tf-0003mJ-Ng@curtis3.ka0vba.org>
 <00df01d69f16$2e5297f0$8af7c7d0$@yandex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00df01d69f16$2e5297f0$8af7c7d0$@yandex.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.102.4 at vserver
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

You can also discuss android and anything else at:

<https://groups.google.com/group/anatad>

This group is unmoderated and sometimes gets ... lively so it may not
be for everyone. Your original message seems to be a statement more
than a question. If you actually were asking a question, rephrasing it
might help.

Greg


On Sat, Oct 10, 2020 at 06:01:06PM +0300, Nikita wrote:
> Hi Curtis,
> In my opinion you need to subscribe to the androidaccessibility mailing
> list.
> Here is the subscription address - androidaccessibility+subscribe@groups.io
> This is the Android blind users mailing list.
> Also see
> https://support.google.com/accessibility/android/answer/6283677?hl=en
> Best regards, Nikita.
> 
> -----Original Message-----
> From: Speakup <speakup-bounces@linux-speakup.org> On Behalf Of D. Curtis
> Willoughby
> Sent: Wednesday, October 07, 2020 7:18 AM
> To: ka0vba@dimcom.net; speakup@linux-speakup.org
> Cc: -@curtis3.ka0vba.ampr.org
> Subject: settings for blind people using android
> 
> dear speakup users.
> 
> I have just completed the following rules for setting up an iphone
> It is not really my work, but that of Curtis Chong.
> 
> I am in a facility that has lots of android users  as well as
>  iphone users.   Many of them know nothing of blindness, save that
> they have it.  I know nothing of android, save that it exists.
> I have a friend who knoes a lot about android, and a little
> 
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> 
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> 

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
