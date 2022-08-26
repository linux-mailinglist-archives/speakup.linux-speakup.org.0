Return-Path: <speakup+bounces-676-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 38AD05A3246
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 00:57:46 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5D573380985; Fri, 26 Aug 2022 18:57:44 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 478D3380935
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 18:57:44 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4A231380954; Fri, 26 Aug 2022 18:57:39 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0148.b.hostedemail.com [64.98.42.148])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 33FF338092A
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 18:57:39 -0400 (EDT)
Received: from omf02.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay04.b.hostedemail.com (Postfix) with ESMTP id 3DF7E1017FEF5;
	Fri, 26 Aug 2022 22:57:38 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf02.b.hostedemail.com (Postfix) with ESMTPA id 91B84888FDA3;
	Fri, 26 Aug 2022 22:57:37 +0000 (UTC)
Message-ID: <00a001d8b99f$3d7228e0$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Jude DaShiell" <jdashiel@panix.com>,
	"Chime Hart" <chime@hubert-humphrey.com>
Cc: "Willem van der Walt" <wvdwalt@csir.co.za>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com> <007001d8b776$2a7193a0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208241123100.3538@willempc.meraka.csir.co.za> <011d01d8b7dc$1fbf79c0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208251022200.17853@willempc.meraka.csir.co.za> <020a01d8b8b9$97365310$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208261051420.318@willempc.meraka.csir.co.za> <029801d8b94e$09c913b0$80ffa8c0@Win7VM> <afe9ca5e-fcb2-8764-d9e2-0d5123c4adec@hubert-humphrey.com> <003c01d8b971$2e85bff0$80ffa8c0@Win7VM> <e347b9d8-cc54-3cd6-aff1-856332377fbe@panix.com> <008301d8b990$8d114ca0$80ffa8c0@Win7VM> <6340fde9-e6b6-80d8-f4cf-fccebbacabc2@panix.com>
Subject: Re: hopefully some help with AntiX
Date: Fri, 26 Aug 2022 17:57:37 -0500
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
X-Rspamd-Queue-Id: 91B84888FDA3
X-Spam-Status: No, score=-2.60
X-Stat-Signature: hb6ocayo4xjkbbbfsewkqpoi7gnr1xrn
X-Rspamd-Server: rspamout03
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/+SGXs86Q7OmeJ36rbE4leNXqXnzBZBOw=
X-HE-Tag: 1661554657-334519
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well it seems ufw is there, but it must not be running automatically, but it 
does not fix the port problem.
I did
sudo ufw allow ssh
it said tcp port allowed
or something like that
so I checked on the other computer with nmap
100 ports closed
So I did sudo ufw restart
and the other computer said 999 ports filtered tcp port 22 closed.
I've done iptables too, but that does not stay after a reboot.
if I do sudo ufw status
it shows tcp port 22 allow
but it does not stay from a reboot.
I've found that the seeingAI "document" is best for accuracy of reading the 
screen.
I do the clear command between commands so seeingAI only reads the new 
stuff.
Glenn
----- Original Message ----- 
From: "Jude DaShiell" <jdashiel@panix.com>
To: "K0LNY_Glenn" <glenn@ervin.email>; "Chime Hart" 
<chime@hubert-humphrey.com>
Cc: "Willem van der Walt" <wvdwalt@csir.co.za>; "Speakup is a screen review 
system for Linux." <speakup@linux-speakup.org>
Sent: Friday, August 26, 2022 4:34 PM
Subject: Re: hopefully some help with AntiX


My guess is you have a firewall utility running on that system.  That
firewall started on boot.  Maybe man -k firewall on that system would tell
you which firewall is running.


Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Fri, 26 Aug 2022, K0LNY_Glenn wrote:

> Well I thought I'd try iptables again.
> I finally got it to run without any errors, that long iptables command I 
> got
> earlier.
> But nmap still sees no ports open on that host.
> Prior to running iptables, I tried to apt install it, and the message was
> that I'm already running the latest.
> So I needed to restart iptables with
> sudo service iptables restart
> and it can find no service iptables.
> I retyped it several times to be sure there was no typos.
> So I tried
> sudo systemctl restart iptables
> and the system cannot find systemctl
> question:
> If I reboot, if the long iptables command worked, will it stick if I 
> reboot?
>
> Thanks
>
> Glenn
> ----- Original Message -----
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>; "Chime Hart"
> <chime@hubert-humphrey.com>
> Cc: "Willem van der Walt" <wvdwalt@csir.co.za>; "Speakup is a screen 
> review
> system for Linux." <speakup@linux-speakup.org>
> Sent: Friday, August 26, 2022 1:35 PM
> Subject: Re: hopefully some help with AntiX
>
>
> sudo ps -Ach|less
> may work better.
>
>
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
> On Fri, 26 Aug 2022, K0LNY_Glenn wrote:
>
> > Hi,
> > Well the command:
> > sudo ps -A
> > just listed a bunch of numbers, no running apps.
> > Glenn
> > ----- Original Message -----
> > From: "Chime Hart" <chime@hubert-humphrey.com>
> > To: "K0LNY_Glenn" <glenn@ervin.email>
> > Cc: "Willem van der Walt" <wvdwalt@csir.co.za>; "Speakup is a screen
> > review
> > system for Linux." <speakup@linux-speakup.org>
> > Sent: Friday, August 26, 2022 8:19 AM
> > Subject: Re: hopefully some help with AntiX
> >
> >
> > Well Glen, why not run
> > ps -A
> > to see what's actually running.
> > Chime
> >
> >
> >
>
>
>


