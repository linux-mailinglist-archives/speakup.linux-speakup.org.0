Return-Path: <speakup+bounces-904-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 782DD643BFA
	for <lists+speakup@lfdr.de>; Tue,  6 Dec 2022 04:52:02 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DBBCB382BFF; Mon,  5 Dec 2022 22:52:01 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C7CE7382AB1
	for <lists+speakup@lfdr.de>; Mon,  5 Dec 2022 22:52:01 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BAE0A382AC7; Mon,  5 Dec 2022 22:51:56 -0500 (EST)
Received: from smtprelay.b.hostedemail.com (smtprelay0029.b.hostedemail.com [64.98.42.29])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AB270382A45
	for <speakup@linux-speakup.org>; Mon,  5 Dec 2022 22:51:56 -0500 (EST)
Received: from omf01.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay01.b.hostedemail.com (Postfix) with ESMTP id 0B19318BE904A;
	Tue,  6 Dec 2022 03:51:56 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf01.b.hostedemail.com (Postfix) with ESMTPA id 6E51B10B9ADEF;
	Tue,  6 Dec 2022 03:51:55 +0000 (UTC)
Message-ID: <033701d90925$f21199e0$88ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Jude DaShiell" <jdashiel@panix.com>,
	<speakup@linux-speakup.org>,
	"Didier Spaier" <didier@slint.fr>
References: <013f01d9074d$551a6650$88ffa8c0@Win7VM> <018001d90797$3bf04b00$88ffa8c0@Win7VM> <Y4woAGJEUf430mTc@gregn.net> <018701d9079f$53126810$88ffa8c0@Win7VM> <5ab5197f-f3c3-c7f1-b497-0e702525d2cd@slint.fr> <01a801d907fd$bb39fbc0$88ffa8c0@Win7VM> <3137b9f2-ce47-ce5-955b-36d5d06b7b71@panix.com> <024b01d90849$8e685fa0$88ffa8c0@Win7VM> <d0962b6-b940-1e30-4a76-ca5362b19a6f@panix.com> <02b201d908bc$51231db0$88ffa8c0@Win7VM> <b09186d2-5221-478-43dd-3c85b236516@panix.com> <02de01d908e9$bbaf4b90$88ffa8c0@Win7VM> <37169af6-5d45-5bcf-2770-8c23ed37f02e@panix.com> <02e301d908ea$7ef69900$88ffa8c0@Win7VM> <40789e6d-d4d-8250-2f54-ba2d63d52be@panix.com> <02f301d908f4$d6abdc50$88ffa8c0@Win7VM> <7a4ffbe-a86-80ac-c2f4-52c753e549fe@panix.com> <030401d908fc$a924ead0$88ffa8c0@Win7VM> <9bc8719d-4677-4fec-d1c6-9d3bc8139cb0@panix.com> <030a01d908fd$4d714fc0$88ffa8c0@Win7VM> <796a3940-9bf-33a3-f6f-e5b49a85aae@p anix.com> <031d01d9091f$a1fd2ba0$88ffa8c0@Win7VM> <c75a9d21-e0c1-5d82-ea80-2f18602d47f9@panix.com
 >
Subject: Re: change eSpeak Default Voice
Date: Mon, 5 Dec 2022 21:50:55 -0600
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
X-Spam-Status: No, score=-2.37
X-Stat-Signature: tjsni95gmbxejhk5r3btgmy7qr5i4o8j
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: 6E51B10B9ADEF
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1+c8fosT3dTl6LG+wVBaDW4MOA19wPtR2E=
X-HE-Tag: 1670298715-789208
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well I did espeak-ng --help and it says to use list to list the available 
voices, but just putting list after espeak-ng only speaks list.
I tried voices=list and that didn't work.
I tried voices=>list, all after entering espeak-ng and a space between them.
Glenn
----- Original Message ----- 
From: "Jude DaShiell" <jdashiel@panix.com>
To: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>; "Didier 
Spaier" <didier@slint.fr>
Sent: Monday, December 05, 2022 9:13 PM
Subject: Re: change eSpeak Default Voice


Tell espeak-ng where voices are using espeak-ng
--path=/usr/lib/i386-linux-gnu/espeak-ng/data/voices/mb/



Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.


