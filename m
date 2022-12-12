Return-Path: <speakup+bounces-909-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 74888649789
	for <lists+speakup@lfdr.de>; Mon, 12 Dec 2022 01:59:41 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 04A6B38283D; Sun, 11 Dec 2022 19:59:41 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E2A1F38282B
	for <lists+speakup@lfdr.de>; Sun, 11 Dec 2022 19:59:40 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 97C7638282C; Sun, 11 Dec 2022 19:59:35 -0500 (EST)
Received: from smtprelay.b.hostedemail.com (smtprelay0164.b.hostedemail.com [64.98.42.164])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 84694382829
	for <speakup@linux-speakup.org>; Sun, 11 Dec 2022 19:59:35 -0500 (EST)
Received: from omf04.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay05.b.hostedemail.com (Postfix) with ESMTP id CCCCF100329D2;
	Mon, 12 Dec 2022 00:59:34 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf04.b.hostedemail.com (Postfix) with ESMTPA id 4DF3910051B78;
	Mon, 12 Dec 2022 00:59:34 +0000 (UTC)
Message-ID: <002001d90dc4$dbf1d370$8bffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Jookia" <contact@jookia.org>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <000701d90dba$a449abf0$8bffa8c0@Win7VM> <Y5Z7cfzORuPgHUeo@novena-choice-citizen>
Subject: Re: Installing Ubuntu Server
Date: Sun, 11 Dec 2022 18:58:32 -0600
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
X-Stat-Signature: f5t6b8f47mrbdch8isamgeofxfp6g1yd
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 4DF3910051B78
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1+KxRw6bA1+l+irDCQjh9SHm0MwIwGU8IA=
X-HE-Tag: 1670806774-76484
X-HE-Meta: U2FsdGVkX18d9Q4QtbmnkFHp+dVWAg/9meNgfSb2LBdlV2alpsHeqWXNaJlMVV3M6IF12K01MrfCifMf1DI0sQ==
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Jookia,
I don't see how, unless I was doing a VM in a VM onto my Ubuntu Mate that is 
a  VM.
This is just running windows 10, with VmWare Player, and I have Ubuntu Mate 
desktop and two versions of windows as VMs too, and I wanted to try 
Ubuntu-server in a VM.
I don't know if VmWare can run an install script, sort of like the windows 
answer file for a windows install.
There may be such a thing for Ubuntu, but the next thing is how to run it 
during the VmWare install of Ubuntu-server.
Thanks.

Glenn
----- Original Message ----- 
From: "Jookia" <contact@jookia.org>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Sunday, December 11, 2022 6:53 PM
Subject: Re: Installing Ubuntu Server


Is there an install via SSH option?

On Sun, Dec 11, 2022 at 05:45:24PM -0600, K0LNY_Glenn wrote:
> Hey Group,
> I thought I'd test out Ubuntu server in a VM, using VmWare.
> The first problem I noticed is that there is no way to call up speakup
> because it is configuring a few things, like disk space to use and user
> group and an account.
> When I have installed Windows, I didn't have trouble with this because
> VmWare took the information from the running windows system.
> Actually, I'm not sure how one would install Ubuntu-server non-visually
> outside a hypervisor.
> I was using:
> Ubuntu22.04 64 lite server
> I might be able to get through the VmWare installer, I thought I had it
> using the Be My Eyes app, but I couldn't tell if I was at a prompt, and
> speaker-test produced nothing, and the soundcard was checked for the VM.
> I also have Ubuntu Mate on the same computer in a VM, and sometimes I have
> to enable the soundcard again to get Orca talking, but that didn't happen
> here.
> Just hoping someone has installed Ubuntu-server and gotten speakup to work
> on first boot.
> Glenn
>
>


