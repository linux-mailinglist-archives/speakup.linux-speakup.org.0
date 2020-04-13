Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id A9EAB1A617D
	for <lists+speakup@lfdr.de>; Mon, 13 Apr 2020 04:22:57 +0200 (CEST)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 3337B4280514; Sun, 12 Apr 2020 22:22:53 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.b="Kg5jYIKM";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id B3029428048A
	for <lists+speakup@lfdr.de>; Sun, 12 Apr 2020 22:21:35 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6948D1C57F9; Sun, 12 Apr 2020 22:21:35 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=Kg5jYIKM;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 037DF1C5800;
	Sun, 12 Apr 2020 22:21:18 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 079181C2C5E; Sun, 12 Apr 2020 22:21:14 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [IPv6:2607:f2f8:a260::2])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 286881C0129
 for <speakup@linux-speakup.org>; Sun, 12 Apr 2020 22:21:07 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:4aeb:6c22:10bc:63db:65be:f5f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id AFB6B2510;
 Sun, 12 Apr 2020 19:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1586744562; bh=HXMI4WxCtrQEbTdOk4u0L91HdLWlQ93m7G2DheNBaWU=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=Kg5jYIKMfFJsXtq9NCNPTbRWMUgzwlTqv0FlE/Xl/6bCwUF8k9sBq4WCuL0EMLj/V
 reYmwZW0c3M8t6QtUrUToHLnLJZo5NLliyaP8w4gPjuGfUyYjkeGRMzFO21U5BPnvS
 WS/YhuzGPwNbFZthhUhUsTVIU+eAtuNINsJU44SwvD2ZotV5MtUL9uteNXRA8iNBT/
 WVQocnhvp7WFa2KVu1q2ivrQU0vDcdoCTLQLy80mWpp01S+ZpTc8HJ+F7XCsSyMtm+
 yHXofufGDGHl2Cj+5Rf4QRWubMotOv7fA22MgmmD+d/06athdDIxhtCXs3MIDi4QoU
 B6kkqgPQdPqTA==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>)
 id 1jNoiI-0001H6-5K; Sun, 12 Apr 2020 19:20:42 -0700
Date: Sun, 12 Apr 2020 19:20:42 -0700
From: Gregory Nowak <greg@gregn.net>
To: Tait Hoyem <tait@tait.tech>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Questions More General Than Speakup
Message-ID: <20200413022041.GA3960@gregn.net>
References: <6kVN_WQmeo167AqZoKYo6jwc9KPHubdfHGhujAqvCjefb8eHgBliH-_sWRItn24JRCq-ZVxN4LLG-3Ra8Tu-rjcMO_vOt65VSt6mbjVCajI=@tait.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6kVN_WQmeo167AqZoKYo6jwc9KPHubdfHGhujAqvCjefb8eHgBliH-_sWRItn24JRCq-ZVxN4LLG-3Ra8Tu-rjcMO_vOt65VSt6mbjVCajI=@tait.tech>
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

On Sun, Apr 12, 2020 at 05:16:51PM +0000, Tait Hoyem wrote:
> I apologize for all the questions in a haphazard format, here they are in list form:
> 1. Are there commercial Linux based notetakers?

The last one I'm aware of was the levelstar icon, but that was phased
out six or seven years ago I think. I'm not aware of notetakers
running linux these days, but see below.

> 2. What kind of hardware is running on notetakers these days?

They're all proprietary with closed specs as far as I'm aware. The
only way to answer that I think would be to get one of each, and crack
it open to find out. Given they still cost an arm and a leg, that
would require thousands of dollars.

> 3. Could you install Linux on any old notetaker and have it work, or is there more involved?
A number of the notetakers on the market today are running out dated
versions of android from what I know, so they technically already use
the linux kernel. How much of that is pure android, and how much of it
is proprietary I  don't know. It likely depends from device to device.

> 3.5 Is there a video out on alot of these devices so if something goes wrong (bum drivers, etc.) I can fix it?

My understanding is that the video out is there for parents and
teachers, so they can see what children are doing on their
devices. This could also be used of course by professionals who want
to show something on their notetaker to their sited colleagues. Whether
the video out is used for diagnostics by repair personnel or not I
don't know, but it might well be. That kind of information is again
proprietary I suspect.

> 4. Are notetakers even really used anymore given the advance of smartphones?

Without statistics to go on, it seems to me that note takers are
mostly used by students these days, while everyone else seems to be
using a smart phone.

> 4.1 What accessories or lack-thereof are visually impaired people using with their phones, if there is a move away from the more traditional notetaker?

The touch screen itself, bluetooth qwerty keyboards, braille displays,
and orbit research recently released a bluetooth braille keyboard as
well. I'm not sure there is a lack of accessories that a notetaker
provides which smart phone users would lack.

> 5. Are any of you aware of any *BSD project dealing with braille/speech output specifically?

No, however, brlTTY is a cross platform project.

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
