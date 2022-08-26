Return-Path: <speakup+bounces-674-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E93515A30D4
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 23:12:45 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 697F4380EC8; Fri, 26 Aug 2022 17:12:35 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 52F8F380C06
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 17:12:35 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 43DF8380C5B; Fri, 26 Aug 2022 17:12:30 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0207.b.hostedemail.com [64.98.42.207])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2C8DC380C06
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 17:12:30 -0400 (EDT)
Received: from omf09.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay04.b.hostedemail.com (Postfix) with ESMTP id 73C8B100336B0;
	Fri, 26 Aug 2022 21:12:29 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf09.b.hostedemail.com (Postfix) with ESMTPA id BF62A9AB5B3;
	Fri, 26 Aug 2022 21:12:28 +0000 (UTC)
Message-ID: <008301d8b990$8d114ca0$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Jude DaShiell" <jdashiel@panix.com>,
	"Chime Hart" <chime@hubert-humphrey.com>
Cc: "Willem van der Walt" <wvdwalt@csir.co.za>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com> <007001d8b776$2a7193a0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208241123100.3538@willempc.meraka.csir.co.za> <011d01d8b7dc$1fbf79c0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208251022200.17853@willempc.meraka.csir.co.za> <020a01d8b8b9$97365310$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208261051420.318@willempc.meraka.csir.co.za> <029801d8b94e$09c913b0$80ffa8c0@Win7VM> <afe9ca5e-fcb2-8764-d9e2-0d5123c4adec@hubert-humphrey.com> <003c01d8b971$2e85bff0$80ffa8c0@Win7VM> <e347b9d8-cc54-3cd6-aff1-856332377fbe@panix.com>
Subject: Re: hopefully some help with AntiX
Date: Fri, 26 Aug 2022 16:12:28 -0500
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
X-Rspamd-Queue-Id: BF62A9AB5B3
X-Spam-Status: No, score=-2.53
X-Stat-Signature: art5ok4ccit8js8gj1ytgpcintn8bbo3
X-Rspamd-Server: rspamout03
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1+A2pwpBCHT5slZwHOIWcXHDjTdR5Lm1fY=
X-HE-Tag: 1661548348-577477
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well I thought I'd try iptables again.
I finally got it to run without any errors, that long iptables command I got 
earlier.
But nmap still sees no ports open on that host.
Prior to running iptables, I tried to apt install it, and the message was 
that I'm already running the latest.
So I needed to restart iptables with
sudo service iptables restart
and it can find no service iptables.
I retyped it several times to be sure there was no typos.
So I tried
sudo systemctl restart iptables
and the system cannot find systemctl
question:
If I reboot, if the long iptables command worked, will it stick if I reboot?

Thanks

Glenn
----- Original Message ----- 
From: "Jude DaShiell" <jdashiel@panix.com>
To: "K0LNY_Glenn" <glenn@ervin.email>; "Chime Hart" 
<chime@hubert-humphrey.com>
Cc: "Willem van der Walt" <wvdwalt@csir.co.za>; "Speakup is a screen review 
system for Linux." <speakup@linux-speakup.org>
Sent: Friday, August 26, 2022 1:35 PM
Subject: Re: hopefully some help with AntiX


sudo ps -Ach|less
may work better.


Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Fri, 26 Aug 2022, K0LNY_Glenn wrote:

> Hi,
> Well the command:
> sudo ps -A
> just listed a bunch of numbers, no running apps.
> Glenn
> ----- Original Message -----
> From: "Chime Hart" <chime@hubert-humphrey.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>
> Cc: "Willem van der Walt" <wvdwalt@csir.co.za>; "Speakup is a screen 
> review
> system for Linux." <speakup@linux-speakup.org>
> Sent: Friday, August 26, 2022 8:19 AM
> Subject: Re: hopefully some help with AntiX
>
>
> Well Glen, why not run
> ps -A
> to see what's actually running.
> Chime
>
>
> 


