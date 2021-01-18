Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 490452F9857
	for <lists+speakup@lfdr.de>; Mon, 18 Jan 2021 04:44:35 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 85359380EEA; Sun, 17 Jan 2021 22:44:34 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=sSFXU1M2;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 183B7380F36;
	Sun, 17 Jan 2021 22:44:31 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id B9962380C00; Sun, 17 Jan 2021 22:44:29 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 1ED1D380BC0
 for <speakup@linux-speakup.org>; Sun, 17 Jan 2021 22:44:28 -0500 (EST)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:4a37:aca3:b02a:99d6:6186:579f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id D42D7A24
 for <speakup@linux-speakup.org>; Sun, 17 Jan 2021 19:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1610941446; bh=ab0pe4YCgj4ihYbIxyRBvD3fF8Rck6s2X4Ds58s1y8A=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=sSFXU1M28Yw1j4JSsVo39Wi9qF3UCX8gEBQ5iw6jWYU10EmChdyznif0Q3vMJ3EbQ
 6uXLsPnz62TEfqx+V0D6ZXNZAJP42z4kFiAt/XN3jujJ0DIZ89dlRf6l4DLRxY9b87
 OcGm5K2RAsB+4+FqAl2oW4g+Q/Yfbmg9G3Zh9Ubb3OfOHMFL6slgeiBfQNaznpOOB3
 yELbWH7Nfy3UFndZtIX5uzU0mcd9Ji4AWJls2l/6Y6mdzjSdkmldFRvdihD4cGYdwo
 soD+2718iR5LXGvxSQI/dLevHrcpu1lmzEtJf3+KohPpB+xCWdmmCDo1hEoe9ngNU2
 6s8wsXlfZ3KhQ==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1l1LSD-0003uh-0o
 for speakup@linux-speakup.org; Sun, 17 Jan 2021 20:43:45 -0700
Date: Sun, 17 Jan 2021 20:43:45 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Raspberry question
Message-ID: <20210118034344.GA14878@gregn.net>
References: <007401d6ed1c$bbc0cbd0$33426370$@blinksoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <007401d6ed1c$bbc0cbd0$33426370$@blinksoft.com>
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

Sounds like you're getting bit by pulseaudio. You have three options:

1. Hook up a USB sound card, and set espeakup to use that instead.

2. Replace espeakup with speechd-up. Note that speechd-up hasn't been
   developed in something like the last 10 years, and doesn't let you
   control as many things as espeakup does.

3. Dump pulseaudio, and setup speech-dispatcher to output using libao
   in speechd.conf. I think the raspbian desktop has a core dependency
   on pulseaudio. If I'm right, then this may not be an option.

Greg


On Sun, Jan 17, 2021 at 05:04:31PM -0500, kperry@blinksoft.com wrote:
>  
> 
> Well, it has been a long time since I have been on this list.   Over the
> years I have been using Orca, but I have been missing speakup.  I have used
> my raspberry PI's up to this time on ssh.  I was hoping that the new release
> in December of the rasbion which has access built in would just work out of
> the box.   I am able to get Orca going and Emacspeak, and even espeak at the
> command line.  
> 
>  
> 
> The problem is speakup seems to be working but does not work.    When I am
> at the tty terminal using the keyboard and with Xwin shut down.   I can make
> espeak say thins but I am not able to get speakup to work.  When I do PS I
> can see that both speak up and espeakup -V are running.  I have tried doing
> 
>  
> 
> Sudo Systemctl enable espeakup.service
> 
> Sudo Systemctl start espeakup.service
> 
>  
> 
> I have even tried without the .service on the previous lines.  So far
> nothing I have tried has got speakup talking. 
> 
>  
> 
> Does anyone know how to get speakup to talk on the new Rasbion build?  I
> would much rather be using speakup than Ora or emacspeak.
> 
>  
> 
> I have asked this on the Raspberry PI list already and no one has answered.
> 
> Ken
> 
>  
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
