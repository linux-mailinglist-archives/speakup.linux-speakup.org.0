Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 6478D3A1F1
	for <lists+speakup@lfdr.de>; Sat,  8 Jun 2019 22:25:36 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9A9D31C5A3F; Sat,  8 Jun 2019 16:25:35 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=slint.fr header.i=@slint.fr header.b="mahsL+9r";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5C2551C6B46;
	Sat,  8 Jun 2019 16:24:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 6BB371C43BE; Sat,  8 Jun 2019 16:24:20 -0400 (EDT)
Received: from shirt.o2switch.cloud (shirt.o2switch.cloud [109.234.163.97])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 3B5731C43BE
 for <speakup@linux-speakup.org>; Sat,  8 Jun 2019 16:24:16 -0400 (EDT)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamScore: ss
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (cached,
 score=2.702, required 5, autolearn=disabled, DKIM_INVALID 0.10,
 DKIM_SIGNED 0.10, SPF_HELO_NONE 0.00, SPF_NONE 0.00,
 URIBL_BLOCKED 1.00, URIBL_SC_SWINOG 1.50)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
 Service Provider for details
X-MailPropre-MailScanner-ID: 158EE100735.A360D
X-MailPropre-MailScanner-Information: Please contact the ISP for more
 information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
 s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
 :Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zAoVOGV4eP+OnYwauxD2yViJCFepAEOuD6L0q75y9cE=; b=mahsL+9rTEZQ8QL3lgMWpzyG5t
 k5KxW7jR3Kn3VeIX0RZxVA2ikrUDqslm1mgtCgm3UrNdvctNSNZeCj9hGefIieIXK+FUKwX9+W3cL
 VsF3Zr1POgK/5QOYUnL2SDRujzT+MtoGPNeB2dD+GBVbA+STXha417SNFWfwEv/Q3klU=;
Subject: Re: no sound except speakup
To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>, Jude DaShiell <jdashiel@panix.com>,
 Kirk Reiser <kirk@reisers.ca>
References: <bb706092-7289-2093-e7d0-e1788722cc37@math.wisc.edu>
 <alpine.DEB.2.21.1906051019050.12923@befuddled.reisers.ca>
 <f072f5e3-caf0-aab8-4224-c1fc9f142ace@math.wisc.edu>
 <alpine.NEB.2.21.1906081417260.24883@panix1.panix.com>
From: Didier Spaier <didier@slint.fr>
Openpgp: preference=signencrypt
Message-ID: <25d7277c-331d-5df6-9a36-8f42952fce00@slint.fr>
Date: Sat, 8 Jun 2019 22:24:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.1906081417260.24883@panix1.panix.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - fox.o2switch.net
X-AntiAbuse: Original Domain - linux-speakup.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - slint.fr
X-Get-Message-Sender-Via: fox.o2switch.net: authenticated_id: didier@slint.fr
X-Authenticated-Sender: fox.o2switch.net: didier@slint.fr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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

Hello Jude,

I highly recommend reading PulseAudio under the hood from Victor Gaydov:
https://gavv.github.io/articles/pulseaudio-under-the-hood/

It is not in the "official" documentation but provides a very in depth
information while staying practical and understandable by the casual users
like me. I just hope that would exist a similar document about ALSA.

My position is that if properly configured it should not mess up anything.

I can't remember a complaint I would have received about PulseAudio
from Slint users - Including yourself <smile>. Maybe I forgot?

Best, Didier 

On 08/06/2019 20:23, Jude DaShiell wrote:
>>From what I've been reading on debian-user, and this is from sighted
> users using the g.u.i., pulseaudio at most has two good use cases and
> those are providing sound for a network, and being able to do many
> samples of multiple sound streams.  If you don't need to do any of
> those, you don't need pulseaudio.  It could be firefox is going to
> deprecate pulseaudio in future too.
> It's not as well documented as alsa either and its terminology imposes
> an additional learning curve on top of alsa too.
> My position on pulseaudio is if it gets installed, live with it until it
> messes up then remove and prevent future downloads.
> 
> On Sat, 8 Jun 2019, JOHN G HEIM wrote:
> 
>> Date: Sat, 8 Jun 2019 12:36:57
>> From: JOHN G HEIM <jheim@math.wisc.edu>
>> Reply-To: Speakup is a screen review system for Linux.
>>     <speakup@linux-speakup.org>
>> To: Kirk Reiser <kirk@reisers.ca>,
>>     Speakup is a screen review system for Linux. <speakup@linux-speakup.org>
>> Subject: Re: no sound except speakup
>>
>>
>> It was indeed pulseaudio. I killed the pulseaudio process and ran aplay
>> again but it still did not work. But I noticed that another pulseaudio
>> process had been started. So then I removed the pulseaudio package
>> entirely. Now it works. But then I ran startx and got no speech from
>> orca. But then I ran spd-conf and configured speech-dispatcher for alsa
>> and now I get speech in the GUI too. So this is all good. This is my
>> network server so I don't care about the GUI too much anyway. But it
>> looks like if I really need a GUI, I'll have it.
>>
>>
>> Thanks everybody. Linux rocks. Well, the linux support community,
>> specifically speakup and orca, rocks.
>>
>>
>> On 6/5/19 9:22 AM, Kirk Reiser wrote:
>>> Hey John: When I've had similar issues with sound it's because there
>>> is usually a pulse audio process running or trying to run. There are
>>> work arounds to be able to use pulse audio but I believe it includes
>>> running it as root or something. I don't use pulse audio so I'm not
>>> sure of the work around but others are using it.
>>>
>>> ? Kirk
>>>
>>> On Wed, 5 Jun 2019, John G Heim wrote:
>>>
>>>> I am running a debian buster machine in character mode. Speakup with
>>>> software speech works fine but I can't get any other sound. When I
>>>> use aplay to play a wav file, it prints the data indicating that it
>>>> is playing the file but there is no sound. The same with espeak and
>>>> spd-say at the command line. No error messages are displayed but
>>>> there is no sound. I would think it was a volume problem except I can
>>>> hear speakup. The sound card controls have volume settings, they are
>>>> not user settings, right?
>>>>
>>>>
>>
> 
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
