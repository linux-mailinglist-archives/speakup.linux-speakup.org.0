Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CD2CF2DC95C
	for <lists+speakup@lfdr.de>; Thu, 17 Dec 2020 00:02:19 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 467F3380C15; Wed, 16 Dec 2020 18:02:19 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AA32B380F27;
	Wed, 16 Dec 2020 18:02:15 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 640DA380C15; Wed, 16 Dec 2020 18:02:14 -0500 (EST)
Received: from omta02.suddenlink.net (omta02.suddenlink.net [208.180.40.72])
 by befuddled.reisers.ca (Postfix) with ESMTP id 3299338098A
 for <speakup@linux-speakup.org>; Wed, 16 Dec 2020 18:02:14 -0500 (EST)
Received: from wb5agz ([47.217.109.16]) by dalofep02.suddenlink.net
 (InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
 id <20201216230213.ZBVA9993.dalofep02.suddenlink.net@wb5agz>;
 Wed, 16 Dec 2020 17:02:13 -0600
Received: from martin by wb5agz with local (Exim 4.92)
 (envelope-from <martin.m@suddenlink.net>)
 id 1kpfoC-0007Pr-Tr; Wed, 16 Dec 2020 17:02:12 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: 8-bit characters in output
In-reply-to: <20201214234815.ovab4h362z2swvdv@function>
References: <E1kosWy-0005Aq-Ua@wb5agz>
 <20201214234815.ovab4h362z2swvdv@function>
Comments: In-reply-to Samuel Thibault <samuel.thibault@ens-lyon.org>
 message dated "Tue, 15 Dec 2020 00:48:15 +0100."
MIME-Version: 1.0
Content-ID: <28509.1608159732.1@wb5agz>
Date: Wed, 16 Dec 2020 17:02:12 -0600
Message-Id: <E1kpfoC-0007Pr-Tr@wb5agz>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
 dalofep02.suddenlink.net from [47.217.109.16] using ID
 martin.m@suddenlink.net at Wed, 16 Dec 2020 17:02:13 -0600
X-CM-Analysis: v=2.3 cv=X9Ys11be c=1 sm=1 tr=0 cx=a_idp_d
 a=vgFQBM89cIsqvvZDmBSopQ==:117 a=vgFQBM89cIsqvvZDmBSopQ==:17
 a=kj9zAlcOel0A:10 a=zTNgK-yGK50A:10 a=wC5lZz0xddkA:10 a=m8YGQp87AAAA:8
 a=eWn2vJzFH50q4Pi8rZcA:9 a=CjuIK1q_8ugA:10 a=sQmdjVoOy41DRvcrsFdt:22
X-CM-Envelope: MS4wfDibJjDQTB2QtAxvKsQCowcpWLdeT04vAFEHBWLSkiuQn9AjuWUDtCMKOEEDcyF9Mw3aHbfpC8/zv/cOerx1jfWcILz2O3/rB20+viTgWT0dI3gwArx+
 aBwPM1Sxq/lC5AHlZ99ZKwvxAZlkjt1hH4lUI/1iqhuqJajCaHGqfGxsMmSd7U+rYN+9pwYtI1J+hNALCfVhDep1y+pvTfqf1z8=
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

Samuel Thibault <samuel.thibault@ens-lyon.org> writes:
> Hello,
> Which speech synthesis are you using?

	A very good question but I am not sure of a good answer.

	I am using the speakup that is installed when buster is
installed.  It is the software speech one hears if installing
debian from a live CD and I must add that it is fabulous so I am
not complaining, just figuring out how best to make sure there
are no artifacts produced by characters that may be there because
of formatting information.  It has been difficult to figure out
exactly what always triggers this effect but I may write a perl
script to generate 8-bit output to see if I can figure out what
is causing it as I can listen to lots of documentation and never
hear it but many email quotes are loaded with it on each line of
the quote if it is more than the usual > symbol.

	I hope this helps in describing the issue.

Martin McCormick
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
