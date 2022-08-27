Return-Path: <speakup+bounces-688-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (unknown [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 30C525A3342
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 02:54:57 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9C621380F39; Fri, 26 Aug 2022 20:54:35 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 85E9F380C8D
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 20:54:35 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 93756380C93; Fri, 26 Aug 2022 20:54:30 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0194.b.hostedemail.com [64.98.42.194])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 82568380C74
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 20:54:30 -0400 (EDT)
Received: from omf12.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay05.b.hostedemail.com (Postfix) with ESMTP id 05604100339BF;
	Sat, 27 Aug 2022 00:54:30 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf12.b.hostedemail.com (Postfix) with ESMTPA id 666A01807017A;
	Sat, 27 Aug 2022 00:54:29 +0000 (UTC)
Message-ID: <00db01d8b9af$90c6e980$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "Jude DaShiell" <jdashiel@panix.com>,
	<speakup@linux-speakup.org>
References: <02b101d8b963$7d039fc0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208262017280.8190@willempc.meraka.csir.co.za> <006201d8b97a$ff989cd0$80ffa8c0@Win7VM> <006601d8b97e$e9f9a6e0$80ffa8c0@Win7VM> <Ywle3kA6oGDCREfZ@gregn.net> <00b601d8b9a9$5c664f10$80ffa8c0@Win7VM> <acd2012-2ab5-5ff2-4fa6-4e518867727a@panix.com> <00bc01d8b9aa$824f8ce0$80ffa8c0@Win7VM> <YwlmdgNYEEgvwGSZ@gregn.net> <00ca01d8b9ad$a9f42460$80ffa8c0@Win7VM> <YwlqV+wBkx1HzRtX@gregn.net>
Subject: Re: hopefully some help with AntiX
Date: Fri, 26 Aug 2022 19:54:29 -0500
Organization: Home
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Spam-Status: No, score=-2.60
X-Stat-Signature: auxwr8f937o93u311g74kra8keeqz3f8
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 666A01807017A
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19vqb59oE5A7TS4GarGDzZJ5z8R3JlJQ8k=
X-HE-Tag: 1661561669-196538
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I think I read on line that there only a couple hundred packages in the 
antiX repository.
But yeah, I always do apt update first thing, but I think I got a fuller 
update when I ran their updater with something like apt-antiX update.

----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Jude DaShiell" <jdashiel@panix.com>; <speakup@linux-speakup.org>
Sent: Friday, August 26, 2022 7:50 PM
Subject: Re: hopefully some help with AntiX


I don't remember if you mentioned this earlier, but you did run

apt update

right? If you have, then antiX really seems to have a limited
repository.

Greg


On Fri, Aug 26, 2022 at 07:40:52PM -0500, K0LNY_Glenn wrote:
> Man, I thought that would work, but it said it cannot locate a package 
> named
> telnetd
> Glenn
> ----- Original Message ----- 
> From: "Gregory Nowak" <greg@gregn.net>
> To: "K0LNY_Glenn" <glenn@ervin.email>
> Cc: "Jude DaShiell" <jdashiel@panix.com>; <speakup@linux-speakup.org>
> Sent: Friday, August 26, 2022 7:33 PM
> Subject: Re: hopefully some help with AntiX
>
>
> On Fri, Aug 26, 2022 at 07:18:17PM -0500, K0LNY_Glenn wrote:
> > Then all 1000 ports show up in nmap as closed.
> > So it seems if I allow a port in ufw, it shows up as closed, but not
> > filtered.
> > So filtered means ufw is running, and if 22 gets allowed, it is not
> > filtered, but still closed.
>
> If a port is filtered, ufw is running. If a port is closed, ufw isn't
> running, or is allowing that port through, but there is no service
> listening on that port.
>
> It seems you have figured out how to disable ufw, and how to get it to
> open ports. If
>
> apt install openssh-server
>
> doesn't work, see if
>
> apt install telnetd
>
> does.
>
> Greg
>
>
> -- 
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> skype: gregn1
> (authorization required, add me to your contacts list first)
> If we haven't been in touch before, e-mail me before adding me to your
> contacts.
>
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
>
>

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your 
contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org 


