Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id E564FDB75
	for <lists+speakup@lfdr.de>; Mon, 29 Apr 2019 07:19:16 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 36E5C1C43D4; Mon, 29 Apr 2019 01:19:15 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7F11C1C43FF;
	Mon, 29 Apr 2019 01:18:31 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 6F05B1C43D0; Mon, 29 Apr 2019 01:18:25 -0400 (EDT)
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180])
 by befuddled.reisers.ca (Postfix) with ESMTP id 968441C431F
 for <speakup@linux-speakup.org>; Mon, 29 Apr 2019 01:18:23 -0400 (EDT)
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
 by localhost (Email Security Appliance) with SMTP id E5BA129A4048_CC6891CB
 for <speakup@linux-speakup.org>; Mon, 29 Apr 2019 05:18:20 +0000 (GMT)
Received: from willempc.meraka.csir.co.za (willempc.dhcp.meraka.csir.co.za
 [146.64.217.138])
 by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTP id
 30EDA2996921_CC6891CF
 for <speakup@linux-speakup.org>; Mon, 29 Apr 2019 05:18:20 +0000 (GMT)
Received: from [127.0.0.1] (helo=localhost)
 by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
 (envelope-from <wvdwalt@csir.co.za>) id 1hKygG-0002kA-0f
 for speakup@linux-speakup.org; Mon, 29 Apr 2019 07:18:20 +0200
Date: Mon, 29 Apr 2019 07:18:20 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup and garbled text
In-Reply-To: <20190428195259.6a206481@narunkot>
Message-ID: <alpine.DEB.2.21.1.1904290717180.10383@willempc.meraka.csir.co.za>
References: <7b432bc0-4164-714e-f3bd-69ec44a7116b@the-brannons.com>
 <alpine.NEB.2.21.1903160625050.548@panix1.panix.com>
 <20190428171803.7684984b@narunkot>
 <874l6iufud.fsf@cmbmachine.messageid.invalid>
 <20190428195259.6a206481@narunkot>
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

Try using cat on a fairly large text file.
Regards, Willem


On Sun, 28 Apr 2019, Okash Khawaja wrote:

> [The e-mail server of the sender could not be verified (SPF Record)]
>
> On Sun, 28 Apr 2019 11:47:38 -0700
> Chris Brannon <chris@the-brannons.com> wrote:
>
>> Okash Khawaja <okash.khawaja@gmail.com> writes:
>>
>>> Hi,
>>>
>>> Apologies for a late follow-up. I am struggling to reproduce
>>> this. Could you explain what you mean by reading large chunk of
>>> text?
>>>
>>> Here is what I did. Set up speakup with espeak. Then in
>>> console, opened spkguide.txt with less. I allowed it to read a full
>>> screen but couldn't find garbled text. Shall I do it with more
>>> screenfuls?
>>
>> Hi,
>> One screenful might be enough or it might not.  This particular bug
>> seems to be really environment-dependent.  I've only seen it on
>> multi-processor systems, or systems using hyperthreading.
>> Just now, I tried reproducing with less, and it didn't show up until
>> the second screen.
> I see. I have tried it on Core i5 with 4 cores. I can try more
> screenfuls and also test on a bigger system.
>
> Thank you
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
