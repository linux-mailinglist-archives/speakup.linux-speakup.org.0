Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 22CF81D3F1B
	for <lists+speakup@lfdr.de>; Thu, 14 May 2020 22:42:24 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 140DA1C0BE0; Thu, 14 May 2020 16:42:22 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=Fqfkwg+P;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D1D7E1C0C6B;
	Thu, 14 May 2020 16:41:06 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 62FF81C0B2C; Thu, 14 May 2020 16:41:03 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 8E5261C0AFE
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 16:41:00 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:4e87:236f:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id AD6ADDB5
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 13:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1589489002; bh=dIbLF5Lq6AwyzyvLlsnuqq3wJtgq0inItPIaFeu7oEc=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=Fqfkwg+PktvGAOx6Xh76IFa756XG6PkZTe+hcqfXM1FFrTjJqp8s9ocSbKOKIejtY
 +0jmrzRsf1X1vRMLi0pUE4Nn/IamHXZqpTViS6ZCLcjDVyZ9skR/aFVeE1DJOnRZ1i
 d4BFKG5JG/unG9iCFbLuqhx1bEjSKh5gN3/pizBZVjow8Qura0rcXKhguWzo+O0Olb
 +TAdzkVGnAJGo4f5brstUPTLDrdj5jOQXaHW0wXVTNB3NsLBt0rQFnkGRjPrIZQtx6
 aLj0u9cmpxybz6cn6dJLJHBca1dA2+IMC1zz7lIdFUrptAybKBX3jCGlJrRGf8XQk5
 SSWQUdqygr1UA==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1jZKf4-0001kH-5d
 for speakup@linux-speakup.org; Thu, 14 May 2020 13:40:58 -0700
Date: Thu, 14 May 2020 13:40:58 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: calling all dectalk users
Message-ID: <20200514204058.GA6486@gregn.net>
References: <20200514022100.GA6582@gregn.net>
 <Pine.LNX.4.64.2005141023131.14733@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.2005141023131.14733@server2.shellworld.net>
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

You can also start with a dectalk by default in debian and most if not
all derivatives. At www.debian.org, follow the get debian
link. Probably the smallest image with speakup is the netinst iso
image. Grab that, and burn it to a CD, or write it out to a USB drive
using dd. More info on this process is in debian's documentation
section.

Then boot your PC from either CD, or your uSB disk, depending on which
you created above. Once you hear a beep from your PC speaker, press
tab, space, and type speakup.synth=dectlk and press enter.

This assumes your dectalk is connected to your first serial port. You
should then hear your dectalk asking you to select a language for the
installation.

Since you probably don't plan to install debian, (though you are
welcome to of course) press alt+right arrow, followed by enter.

You should now be at a command prompt, and able to echo commands to
/sys/accessibility/speakup/synth_direct, and see what your dectalk
sounds like. Hope that helps.

Greg


On Thu, May 14, 2020 at 10:24:37AM -0400, Karen Lewellen wrote:
> Well, I have a dectalk, but cannot install Linux or speakup  because the
>  Dectalk is not a default voice option.
> Just sharing in case you hear from no one else.


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
