Return-Path: <speakup+bounces-687-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C54F95A333E
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 02:50:58 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 52B26380E63; Fri, 26 Aug 2022 20:50:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3DBCC380C95
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 20:50:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4D11C380C6E; Fri, 26 Aug 2022 20:50:53 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0067.b.hostedemail.com [64.98.42.67])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3C337380C1B
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 20:50:53 -0400 (EDT)
Received: from omf10.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay02.b.hostedemail.com (Postfix) with ESMTP id B3DFE80071D5;
	Sat, 27 Aug 2022 00:50:52 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf10.b.hostedemail.com (Postfix) with ESMTPA id 356483FF2;
	Sat, 27 Aug 2022 00:50:52 +0000 (UTC)
Message-ID: <00d501d8b9af$0f4c65b0$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "Jude DaShiell" <jdashiel@panix.com>,
	<speakup@linux-speakup.org>
References: <202208261512.27QFCDux008176@nfbcal.org> <02b101d8b963$7d039fc0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208262017280.8190@willempc.meraka.csir.co.za> <006201d8b97a$ff989cd0$80ffa8c0@Win7VM> <006601d8b97e$e9f9a6e0$80ffa8c0@Win7VM> <Ywle3kA6oGDCREfZ@gregn.net> <00b601d8b9a9$5c664f10$80ffa8c0@Win7VM> <acd2012-2ab5-5ff2-4fa6-4e518867727a@panix.com> <00c101d8b9ab$a53e0140$80ffa8c0@Win7VM> <YwlppF46tleitH74@gregn.net>
Subject: Re: hopefully some help with AntiX
Date: Fri, 26 Aug 2022 19:50:52 -0500
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
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 356483FF2
X-Spam-Status: No, score=-2.59
X-Stat-Signature: xtgy4rrpd5rbem87b36g9pumg6paqfxt
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX18j9lpxh+vSmNGhPycFkK4dV4gd5cDNkGg=
X-HE-Tag: 1661561452-445793
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I guess if I knew where to get each .deb package for Buster, and knew the 
best order to install them, I could do a dpkg command from the thumb drive.
Glenn
----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Jude DaShiell" <jdashiel@panix.com>; <speakup@linux-speakup.org>
Sent: Friday, August 26, 2022 7:47 PM
Subject: Re: hopefully some help with AntiX


No, there is no meta package for espeakup and espeak, or
speech-dispatcher and all it requires. You would need to figure out the
dependencies yourself, and grab all the necessary packages. There may
be a way to script this, but it isn't something I've done. There used
to be a utility called apt-zip I think which would do all that, and
create a zip archive with the .deb files. However, it doesn't seem to
be available in bullseye from what I can tell, though it still may be
in buster. This assumes you have another buster machine you can use to
create the archive.

Greg


On Fri, Aug 26, 2022 at 07:26:25PM -0500, K0LNY_Glenn wrote:
> I guess I alluded to this when asking for some lines to make a script, but
> is there a .deb package for either or speakup or fenrir that would fetch 
> the
> dependencies?
> Or would I need to get an espeak-ng .deb file and a speech-dispatcher.deb
> file too?
> Thanks.


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your 
contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org 


