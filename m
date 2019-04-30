Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 4BADDEFE2
	for <lists+speakup@lfdr.de>; Tue, 30 Apr 2019 07:21:40 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6B6611C43FA; Tue, 30 Apr 2019 01:21:38 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 940951C43DD;
	Tue, 30 Apr 2019 01:21:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id BA9871C4386; Tue, 30 Apr 2019 01:21:12 -0400 (EDT)
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180])
 by befuddled.reisers.ca (Postfix) with ESMTP id 65F981C42DC
 for <speakup@linux-speakup.org>; Tue, 30 Apr 2019 01:21:11 -0400 (EDT)
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
 by localhost (Email Security Appliance) with SMTP id 28A9229A3BD2_CC7DB42B
 for <speakup@linux-speakup.org>; Tue, 30 Apr 2019 05:21:06 +0000 (GMT)
Received: from willempc.meraka.csir.co.za (unknown [146.64.217.138])
 by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTP id
 793CC2998734_CC7DB41F
 for <speakup@linux-speakup.org>; Tue, 30 Apr 2019 05:21:05 +0000 (GMT)
Received: from [127.0.0.1] (helo=localhost)
 by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
 (envelope-from <wvdwalt@csir.co.za>) id 1hLLCT-0001qi-9n
 for speakup@linux-speakup.org; Tue, 30 Apr 2019 07:21:05 +0200
Date: Tue, 30 Apr 2019 07:21:05 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Speakup not working in Ubuntu 18.04
In-Reply-To: <alpine.DEB.2.21.1904291111550.13195@whatsup.nkparts.com>
Message-ID: <alpine.DEB.2.21.1.1904300714310.6606@willempc.meraka.csir.co.za>
References: <alpine.DEB.2.21.1904291111550.13195@whatsup.nkparts.com>
User-Agent: Alpine 2.21.1 (DEB 211 2017-05-04)
MIME-Version: 1.0
X-SASI-RCODE: 200
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hi Kelly,
After an upgrade, I had to specifically install the modules and 
modules-extra packages, but before doing that, the thing did not even see 
my sound card.
However, before doing that, the speakup modules were not found when doing 
modprobe.
I am currently running ubuntu 18.04 with speakup.
4.18.0-18-generic #19~18.04.1-Ubuntu SMP
HTH, Willem


On Mon, 29 Apr 2019, Kelly Prescott wrote:

> [The e-mail server of the sender could not be verified (SPF Record)]
>
> The  subject says it all.
> I have installed Ubuntu 18.04 and speakup will no longer work.
> I had 16.04 on this box and speakup with espeakup and soft-synth worked fine.
> I installed 18.04 and the modules insert with complaints about module 
> signing, but they are there
> Espeakup is running, but no speech.
> I can type espeak hello and it speaks hello
> I can boot my archlinux emergency rescue key and it talks just fine.
> I can play beeps and such through the speakers.
> This is a totally console setup.  I do not use X on this box at all.
> Is there a issue with speakup and 18.04?
> If so, is there a solution or should I just install something else.
> Any ideas would be appreciated.
> Thanks.
>
>
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
