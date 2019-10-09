Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 27EF3D1AF2
	for <lists+speakup@lfdr.de>; Wed,  9 Oct 2019 23:30:06 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7C6371C448E; Wed,  9 Oct 2019 17:30:05 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7A7BB1C4664;
	Wed,  9 Oct 2019 17:29:21 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 3CA911C444D; Wed,  9 Oct 2019 17:29:18 -0400 (EDT)
Received: from omta04.suddenlink.net (omta04.suddenlink.net [208.180.40.74])
 by befuddled.reisers.ca (Postfix) with ESMTP id D80451C43BD
 for <speakup@linux-speakup.org>; Wed,  9 Oct 2019 17:29:13 -0400 (EDT)
Received: from wb5agz ([47.217.105.76]) by dalofep04.suddenlink.net
 (InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
 id <20191009212912.WWJN13146.dalofep04.suddenlink.net@wb5agz>
 for <speakup@linux-speakup.org>; Wed, 9 Oct 2019 16:29:12 -0500
Received: from martin by wb5agz with local (Exim 4.92)
 (envelope-from <martin.m@suddenlink.net>) id 1iIJWB-0006Go-Oi
 for speakup@linux-speakup.org; Wed, 09 Oct 2019 16:29:11 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Dealing with Slow Input
MIME-Version: 1.0
Content-ID: <24104.1570656551.1@wb5agz>
Date: Wed, 09 Oct 2019 16:29:11 -0500
Message-Id: <E1iIJWB-0006Go-Oi@wb5agz>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
 dalofep04.suddenlink.net from [47.217.105.76] using ID
 martin.m@suddenlink.net at Wed, 9 Oct 2019 16:29:12 -0500
X-CM-Analysis: v=2.3 cv=JvWPU/wC c=1 sm=1 tr=0 cx=a_idp_d
 a=0S4FDTH59LdN14syvppWKg==:117 a=0S4FDTH59LdN14syvppWKg==:17
 a=kj9zAlcOel0A:10 a=XobE76Q3jBoA:10 a=7jTcn3IT1uMA:10
 a=iblfO_iLRM-IHBe-k-kA:9 a=CjuIK1q_8ugA:10 a=pHzHmUro8NiASowvMSCR:22
 a=xoEH_sTeL_Rfw54TyV31:22
X-CM-Envelope: MS4wfNgry2PjPEDTtUms+g0UcrCKrWLLNgHc4//CyTfWLZrbJx99yxDd3kweZPNXlbx6QoRtAm7y/Zb5OGbmHzvxjlXMaxE8cZiCTfY3S2v3oLo18kaGd/lg
 drQtf5Rno6DyVnhckaEa8uCzuBivnp8nWp3PZX4sEDwl+fdl8yFGVuTy
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

	The last time I dealt with something like this was about
ten years ago and I have forgotten much about it plus things may
have changed.

	I am receiving serial input from a device that reads the
parallel port and converts that output to serial.  The highest
speed that is possible out of that device is 37400  which sounds
a bit odd in speakup because it may be trying to say words before
they are fully formed.  In anyway, you have to get up to 115200
baud before things sound truly normal but I remember a value that
one can set which makes the timer between characters not time out
as quickly.  It is useful in situations like this where the data
are not coming as fast as one might like.

	When not using this device and running normally, this
timer must be set back to what it was or speakup gets a bit
sluggish.

	Can someone please remind me what this variable is so I
can slow things down again?

	Thank you.

Martin McCormick
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
