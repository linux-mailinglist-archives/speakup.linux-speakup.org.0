Return-Path: <speakup+bounces-782-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id ACBAE61064A
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 01:17:53 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 348C7384058; Thu, 27 Oct 2022 19:17:52 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2017C384000
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 19:17:52 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E119A384003; Thu, 27 Oct 2022 19:17:46 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0248.b.hostedemail.com [64.98.42.248])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D0103383FFA
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 19:17:46 -0400 (EDT)
Received: from omf07.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay05.b.hostedemail.com (Postfix) with ESMTP id 02CD4100339A0;
	Thu, 27 Oct 2022 23:17:39 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf07.b.hostedemail.com (Postfix) with ESMTPA id 87BE710C13ED0;
	Thu, 27 Oct 2022 23:17:38 +0000 (UTC)
Message-ID: <086d01d8ea5a$2ac6d6a0$87ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: <speakup@linux-speakup.org>,
	"Didier Spaier" <didier@slint.fr>
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM> <083301d8ea4e$aa578240$87ffa8c0@Win7VM> <32971cb4-513b-70e2-4371-fd1544adb848@hubert-humphrey.com> <085b01d8ea55$190b4b80$87ffa8c0@Win7VM> <f50c3495-a3f2-2128-a6d3-50e285d95aa5@slint.fr>
Subject: Re: Installing Voxin
Date: Thu, 27 Oct 2022 18:16:38 -0500
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
	charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: 87BE710C13ED0
X-Spam-Status: No, score=-2.59
X-Stat-Signature: mncqwo4zogcp7oy6ittenhbwnezrwy7u
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX18q5ZAuSe8OVnnYwTTxaQe1XhI1L0JYfa8=
X-HE-Tag: 1666912658-844505
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I don't think so, but I will.

----- Original Message ----- 
From: "Didier Spaier" <didier@slint.fr>
To: <speakup@linux-speakup.org>
Sent: Thursday, October 27, 2022 8:16 PM
Subject: Re: Installing Voxin


I am not a Debian user, but...
According to https://packages.debian.org/bullseye/python3-speechd
spd-conf is provided in the package python3-speechd.

Did you install it?

Cheers,
Didier

Le 27/10/2022 à 22:40, K0LNY_Glenn a écrit :
> That is weird, I get the error
> spd-conf
> command not found
> I installed speech-dispatcher, and the voxin-installer for 2.2 doesn't
> report it not being there.
> Are there some speech-dispatcher utilities that need to be installed?
> Thanks.
>
> ----- Original Message ----- 
> From: "Chime Hart" <chime@hubert-humphrey.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>
> Cc: "Speakup is a screen review system for Linux."
> <speakup@linux-speakup.org>
> Sent: Thursday, October 27, 2022 5:16 PM
> Subject: Re: Installing Voxin
>
>
> Hi Glen-and-All: I have sure had alot of challenges getting Voxin working,
> however, try-and-type
> spd-conf
> When you answer its questions, backspace over espeak and type voxin. It 
> will
> say you need to correct your answer. Say "no" Many of those values you can
> just
> accept the defaults. My version of spd-conf is 0.11.3  but I am in Debian
> SID.
> Also, you know, after running an installer for voxin, it will usually take
> affect after a reboot. Hope all of that helps alot.
> Chime
>
>
>


