Return-Path: <speakup+bounces-684-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 535F45A332E
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 02:40:59 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E2089380F39; Fri, 26 Aug 2022 20:40:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CDD17380C5F
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 20:40:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DB546380C6F; Fri, 26 Aug 2022 20:40:53 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0029.b.hostedemail.com [64.98.42.29])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B99A0380C5E
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 20:40:53 -0400 (EDT)
Received: from omf06.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay01.b.hostedemail.com (Postfix) with ESMTP id 3D2F31886457B;
	Sat, 27 Aug 2022 00:40:53 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf06.b.hostedemail.com (Postfix) with ESMTPA id B324B868F818;
	Sat, 27 Aug 2022 00:40:52 +0000 (UTC)
Message-ID: <00ca01d8b9ad$a9f42460$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "Jude DaShiell" <jdashiel@panix.com>,
	<speakup@linux-speakup.org>
References: <202208261512.27QFCDux008176@nfbcal.org> <02b101d8b963$7d039fc0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208262017280.8190@willempc.meraka.csir.co.za> <006201d8b97a$ff989cd0$80ffa8c0@Win7VM> <006601d8b97e$e9f9a6e0$80ffa8c0@Win7VM> <Ywle3kA6oGDCREfZ@gregn.net> <00b601d8b9a9$5c664f10$80ffa8c0@Win7VM> <acd2012-2ab5-5ff2-4fa6-4e518867727a@panix.com> <00bc01d8b9aa$824f8ce0$80ffa8c0@Win7VM> <YwlmdgNYEEgvwGSZ@gregn.net>
Subject: Re: hopefully some help with AntiX
Date: Fri, 26 Aug 2022 19:40:52 -0500
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
X-Spam-Status: No, score=-1.99
X-Stat-Signature: 4m754ex59wpyiyeeomqtpp4b489hxfhr
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: B324B868F818
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19jt58CYj+UewcjfoVIHNqdXxoim64ljqs=
X-HE-Tag: 1661560852-884689
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Man, I thought that would work, but it said it cannot locate a package named 
telnetd
Glenn
----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Jude DaShiell" <jdashiel@panix.com>; <speakup@linux-speakup.org>
Sent: Friday, August 26, 2022 7:33 PM
Subject: Re: hopefully some help with AntiX


On Fri, Aug 26, 2022 at 07:18:17PM -0500, K0LNY_Glenn wrote:
> Then all 1000 ports show up in nmap as closed.
> So it seems if I allow a port in ufw, it shows up as closed, but not
> filtered.
> So filtered means ufw is running, and if 22 gets allowed, it is not
> filtered, but still closed.

If a port is filtered, ufw is running. If a port is closed, ufw isn't
running, or is allowing that port through, but there is no service
listening on that port.

It seems you have figured out how to disable ufw, and how to get it to
open ports. If

apt install openssh-server

doesn't work, see if

apt install telnetd

does.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your 
contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org


