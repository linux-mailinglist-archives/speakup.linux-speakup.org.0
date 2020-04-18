Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 184B71AF0E1
	for <lists+speakup@lfdr.de>; Sat, 18 Apr 2020 16:53:21 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 682031C57CB; Sat, 18 Apr 2020 10:53:20 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9AD561C73DC;
	Sat, 18 Apr 2020 10:52:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 959211C57B4; Sat, 18 Apr 2020 10:52:41 -0400 (EDT)
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180])
 by befuddled.reisers.ca (Postfix) with ESMTP id 243601C0B50
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 10:52:40 -0400 (EDT)
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
 by localhost (Email Security Appliance) with SMTP id 086DB2978DB0_E9B1436B
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 14:52:38 +0000 (GMT)
Received: from willempc.meraka.csir.co.za (willempc.dhcp.meraka.csir.co.za
 [146.64.216.169])
 by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTP id
 9159E29760A5_E9B1434F
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 14:52:36 +0000 (GMT)
Received: from [127.0.0.1] (helo=localhost)
 by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
 (envelope-from <wvdwalt@csir.co.za>) id 1jPopg-0001dK-EA
 for speakup@linux-speakup.org; Sat, 18 Apr 2020 16:52:36 +0200
Date: Sat, 18 Apr 2020 16:52:36 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: log file noise
In-Reply-To: <006d01d6158d$a10093f0$e301bbd0$@gmail.com>
Message-ID: <alpine.DEB.2.21.1.2004181650280.6234@willempc.meraka.csir.co.za>
References: <006d01d6158d$a10093f0$e301bbd0$@gmail.com>
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

Hi,
Something like tail -50 /var/log/syslog|cut -f5- -d' '
man cut for details, but basicly, it says show all columns starting with 
column 5 where columns are delimmited by space.
HTH, Willem


On Sat, 18 Apr 2020, Chris Zenchenko wrote:

> [The e-mail server of the sender could not be verified (SPF Record)]
>
> Not exactly a Speakup issue but I'm wondering if anyone has figured out a
> way to read through log files minus the date and time.
> I'd like to be able to run through a file without all that extra info at the
> start of each entry.
> If I find something important then of course I want to know when but for
> just skimming through a file all that extra speech is making me crazy.
> Ok, more crazy than I am already!
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
