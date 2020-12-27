Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EDF5C2E32A7
	for <lists+speakup@lfdr.de>; Sun, 27 Dec 2020 21:02:29 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B8574380EAB; Sun, 27 Dec 2020 15:02:27 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0B8FB380F45;
	Sun, 27 Dec 2020 15:02:23 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 27932380EA7; Sun, 27 Dec 2020 15:02:22 -0500 (EST)
Received: from omta01.suddenlink.net (omta01.suddenlink.net [208.180.40.71])
 by befuddled.reisers.ca (Postfix) with ESMTP id DDF11380BC2
 for <speakup@linux-speakup.org>; Sun, 27 Dec 2020 15:02:21 -0500 (EST)
Received: from wb5agz ([47.217.109.16]) by dalofep01.suddenlink.net
 (InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
 id <20201227200221.SMZG1422.dalofep01.suddenlink.net@wb5agz>
 for <speakup@linux-speakup.org>; Sun, 27 Dec 2020 14:02:21 -0600
Received: from martin by wb5agz with local (Exim 4.92)
 (envelope-from <martin.m@suddenlink.net>) id 1ktcFA-0007hW-H9
 for speakup@linux-speakup.org; Sun, 27 Dec 2020 14:02:20 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: 8-bit characters in output
In-reply-to: <20201217235206.5vpekwt2uloyiesc@function>
References: <E1kosWy-0005Aq-Ua@wb5agz>
 <20201214234815.ovab4h362z2swvdv@function> <E1kpfoC-0007Pr-Tr@wb5agz>
 <20201216230430.cog65dc5ay6d65zo@function> <E1kpjRQ-0000yT-Fi@wb5agz>
 <20201217235206.5vpekwt2uloyiesc@function>
Comments: In-reply-to Samuel Thibault <samuel.thibault@ens-lyon.org>
 message dated "Fri, 18 Dec 2020 00:52:06 +0100."
MIME-Version: 1.0
Content-ID: <29604.1609099340.1@wb5agz>
Date: Sun, 27 Dec 2020 14:02:20 -0600
Message-Id: <E1ktcFA-0007hW-H9@wb5agz>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
 dalofep01.suddenlink.net from [47.217.109.16] using ID
 martin.m@suddenlink.net at Sun, 27 Dec 2020 14:02:21 -0600
X-CM-Analysis: v=2.3 cv=dsil9Go4 c=1 sm=1 tr=0 cx=a_idp_d
 a=vgFQBM89cIsqvvZDmBSopQ==:117 a=vgFQBM89cIsqvvZDmBSopQ==:17
 a=kj9zAlcOel0A:10 a=zTNgK-yGK50A:10 a=wC5lZz0xddkA:10 a=m8YGQp87AAAA:8
 a=a7LXpHDhAAAA:20 a=n0Yji6lFPy9Z9AAzU3YA:9 a=CjuIK1q_8ugA:10
 a=sQmdjVoOy41DRvcrsFdt:22
X-CM-Envelope: MS4wfFluyupKcM3yI9qAN3c7v2lj3didsoZW4KIv5aMo4hJbaZ36C3kT1J/yJLo4ZBjhhtMd3Fig/lbk0YUKuup3dlOYqeJ24FwSrjpwcvIWO1xrXFtue8j6
 tG5m+u+YOm6T/r8M0JAKVooigobmVWScgZF2IKcul7Pj+ZIuLlbgvjZS
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
> Ok, so what happens is that this is invalid utf-8, which the kernel
> turns into U+FFFD characters, which speakup properly passes on to
> espeakup, which gives it to espeak-ng, where it gets completely
> misinterpreted, I have submitted
> 
> https://github.com/espeak-ng/espeak-ng/issues/859
> 
> Thanks for the report,
> Samuel

	You are quite welcome.  When I was taking electronics
courses in college, we had to submit lab reports on the
experiments we were assigned and one of the things we were
required to do was to write down the serial numbers and other
identifying information about the test equipment we used that day
to make our measurements.

	At the time, this seemed like extra work until the lab
instructor explained that some times equipment could be
malfunctioning in subtle ways that would influence our results
such as a signal generator which was supposed to give the same
voltage output over it's frequency range but didn't, etc.

	That made perfect sense.  Emagine being handed a meter
stick that was warped badly so was no longer 1 meter in length.
The list of issues could go on forever so I made sure that the
required equipment information was always there.

	In that spirit, I did the "env" command in my Linux bash
shell which runs in a text-based terminal such as /dev/tty0 or
tty1.  I can get you the entire output but the following
variables represent factors that might influence the output.
Here they are:

TERMCAP=SC|linux|VT 100/ANSI X3.64 virtual terminal
LANG=en_US.UTF-8
TERM=linux

	
	The LC_TIME variable probably doesn't effect anything but
the formatting of time stamps.

	If I look back to old email configuration files from
several years ago, I see I was trying to filter 8-bit characters
so this is nothing new.  I am presently using Buster however I
have been using debian Linux for about 20 years and what is now
speakup since about 2004 and it is truly a great screen reader.

Martin McCormick
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
