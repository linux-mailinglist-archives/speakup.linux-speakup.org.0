Return-Path: <speakup+bounces-502-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 06EF959129B
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 17:05:11 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3B302383777; Fri, 12 Aug 2022 11:05:10 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 249153809CC
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 11:05:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BAEF73809CC; Fri, 12 Aug 2022 11:05:04 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0069.b.hostedemail.com [64.98.42.69])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A96973807FC
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 11:05:04 -0400 (EDT)
Received: from omf13.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay04.b.hostedemail.com (Postfix) with ESMTP id B989210034BA8;
	Fri, 12 Aug 2022 15:05:02 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf13.b.hostedemail.com (Postfix) with ESMTPA id 4DB038017885;
	Fri, 12 Aug 2022 15:05:02 +0000 (UTC)
Message-ID: <01b601d8ae5c$e6c516d0$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Jude DaShiell" <jdashiel@panix.com>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <017b01d8adf2$e34cc620$80ffa8c0@Win7VM> <9650b2bb-79d-7624-123-34a12cf2fe5@panix.com>
Subject: Re: help finding a folder
Date: Fri, 12 Aug 2022 10:05:02 -0500
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
X-Stat-Signature: 14uk1tz668ogazat7j8z1s5m89bb3mah
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: 4DB038017885
X-Spam-Status: No, score=-2.60
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/J3jksCfY/TMr8PRsurJ5VFdKJJgJKKn4=
X-HE-Tag: 1660316702-399460
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

It was weird, I couldn't git clone it again because it said it already 
existed.
So I did the git  thing in the root, or the highest level and this time I 
listened to some of the paths, and there were /data/voices folders, so I 
searched for that when it was done, and I found them in a top level folder 
with a question mark for the name.
There never was an RHVoice folder made.
This git clone stuff and scons or make stuff is a real turn off.
Glenn
----- Original Message ----- 
From: "Jude DaShiell" <jdashiel@panix.com>
To: "K0LNY_Glenn" <glenn@ervin.email>; "Speakup is a screen review system 
for Linux." <speakup@linux-speakup.org>
Sent: Friday, August 12, 2022 3:52 AM
Subject: Re: help finding a folder


When I do git downloads I usually make a builds subdirectory in my home
directory then cd to that builds directory then do the git clone.  git
usually drops whatever I cloned into that builds subdirectory and so long
as nothing else is in that builds subdirectory the clone results are easy
to find.  One could do something like builds1 then builds2 and builds3 to
keep those builds subdirectories unique.


On Thu, 11 Aug 2022, K0LNY_Glenn wrote:

> Hi,
> I did a git download of some files for rh-voice on an armbian image.
> I'm to the point to do the make stuff, and the instructions say to go into
> the rhvoice directory, but I cannot find it.
> Why can't simply find, or ls find anything that is in the immediate 
> folder?!
> Any help finding rhvoice, or rh anything is appreciated.
> Glenn
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Groups.io Links: You receive all messages sent to this group.
> View/Reply Online (#1604): https://groups.io/g/stormux/message/1604
> Mute This Topic: https://groups.io/mt/92972496/12256
> -=-=-
> Donations: https://ko-fi.com/stormux
> Images: https://stormux.org/downloads
> Repository: https://gitlab.com/stormux/stormux
> Website: https://stormux.org
> -=-=-
> Group Owner: stormux+owner@groups.io
> Unsubscribe: 
> https://groups.io/g/stormux/leave/8620284/12256/530318790/xyzzy
> [glenn@ervin.email]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>
>
>


