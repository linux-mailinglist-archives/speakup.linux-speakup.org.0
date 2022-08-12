Return-Path: <speakup+bounces-514-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B546D59167B
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 22:58:05 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4EDF938479D; Fri, 12 Aug 2022 16:58:05 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3933438376C
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 16:58:05 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D6C3C3819AA; Fri, 12 Aug 2022 16:57:59 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0080.b.hostedemail.com [64.98.42.80])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C733E38190D
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 16:57:59 -0400 (EDT)
Received: from omf04.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay02.b.hostedemail.com (Postfix) with ESMTP id 3D1DA801D618;
	Fri, 12 Aug 2022 20:57:59 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf04.b.hostedemail.com (Postfix) with ESMTPA id 80D26100384E7;
	Fri, 12 Aug 2022 20:57:58 +0000 (UTC)
Message-ID: <022801d8ae8e$34e65910$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Jude DaShiell" <jdashiel@panix.com>,
	"Chime Hart" <chime@hubert-humphrey.com>,
	"Matt Campbell" <mattcampbell@pobox.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <021801d8ae89$220560c0$80ffa8c0@Win7VM> <eb84963a-90e0-c24c-4215-4d0dde3390d0@hubert-humphrey.com> <021d01d8ae8c$39e82800$80ffa8c0@Win7VM> <8295e54b-fd16-c53f-f3f7-e9a09c7a62c6@pobox.com> <022101d8ae8d$31446fa0$80ffa8c0@Win7VM> <a5912728-3489-97f3-a956-af918d5b5e2f@panix.com>
Subject: Re: getting audio for Orca and Speakup or Fenrir
Date: Fri, 12 Aug 2022 15:57:59 -0500
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
X-Stat-Signature: acc5xwco835gzj8bn6rqai5gdouazowi
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 80D26100384E7
X-Spam-Status: No, score=-2.59
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1+JCFyJLuk8smLw0ZEeJCPoeDufrp/dGrM=
X-HE-Tag: 1660337878-606927
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Jude,
Without the -c 0 it tells me:
amixer unable to locate simple Master 0

Glenn
----- Original Message ----- 
From: "Jude DaShiell" <jdashiel@panix.com>
To: "K0LNY_Glenn" <glenn@ervin.email>; "Chime Hart" 
<chime@hubert-humphrey.com>; "Matt Campbell" <mattcampbell@pobox.com>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Friday, August 12, 2022 3:54 PM
Subject: Re: getting audio for Orca and Speakup or Fenrir


Loose the -c0 and you're golden.


On Fri, 12 Aug 2022, K0LNY_Glenn wrote:

> Hi Matt,
> I have learned that the alsamixer doesn't feedback well over SSH, can you
> give me the proper command for alsa to unmute and adjust the volume?
> I always get that wrong, I try stuff like:
> amixer -c 0 set Master 100% unmute
> and those never work for me, I somehow get it wrong.
> There needs to be a fail safe script made for this.
> Thanks.
>
> ----- Original Message -----
> From: "Matt Campbell" <mattcampbell@pobox.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>; "Chime Hart"
> <chime@hubert-humphrey.com>
> Cc: "Speakup is a screen review system for Linux."
> <speakup@linux-speakup.org>
> Sent: Friday, August 12, 2022 3:46 PM
> Subject: Re: getting audio for Orca and Speakup or Fenrir
>
>
> Hi Glenn,
>
> Sounds to me like the audio output on that board is muted. The amixer
> command should let you fix that easily. Then you might need to run
> "alsactl save" to make the new settings permanent.
>
> Matt
>
>
> 


