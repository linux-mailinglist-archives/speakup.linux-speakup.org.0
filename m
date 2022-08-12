Return-Path: <speakup+bounces-508-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A28C6591667
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 22:43:55 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DC6D0384789; Fri, 12 Aug 2022 16:43:54 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C70A8381902
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 16:43:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6C8F8381903; Fri, 12 Aug 2022 16:43:49 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0167.b.hostedemail.com [64.98.42.167])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5728A381900
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 16:43:49 -0400 (EDT)
Received: from omf05.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay03.b.hostedemail.com (Postfix) with ESMTP id 86A6989A30BC;
	Fri, 12 Aug 2022 20:43:48 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf05.b.hostedemail.com (Postfix) with ESMTPA id 21FC81801EA9C;
	Fri, 12 Aug 2022 20:43:48 +0000 (UTC)
Message-ID: <021d01d8ae8c$39e82800$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Chime Hart" <chime@hubert-humphrey.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <021801d8ae89$220560c0$80ffa8c0@Win7VM> <eb84963a-90e0-c24c-4215-4d0dde3390d0@hubert-humphrey.com>
Subject: Re: getting audio for Orca and Speakup or Fenrir
Date: Fri, 12 Aug 2022 15:43:48 -0500
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
X-Rspamd-Queue-Id: 21FC81801EA9C
X-Spam-Status: No, score=-1.52
X-Stat-Signature: zewkb3t6s8tzb7bwdg9wbo5at5am69e8
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19A3T5e25a6Kvvp459y8/1Sw6Wq42v4W5M=
X-HE-Tag: 1660337028-422060
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I don't know about the other players you mention, but I transferred an audio 
file there that I usually play on my raspberrypis and played it with aplay 
over SSH, and according to the terminal feedback, it played with no errors, 
but I didn't hear anything from the speaker.
Glenn
----- Original Message ----- 
From: "Chime Hart" <chime@hubert-humphrey.com>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Friday, August 12, 2022 3:30 PM
Subject: Re: getting audio for Orca and Speakup or Fenrir


Well Glen, I would try-and-install speechd-up and or speech-dispatcher. 
Also,
can you copy an mp3 to that drive-and-try-and-play it with mpv or mpg321. 
There
is a chance you may need sudo to play an mp3, especially if you have 
software
speech. You might need to enable deb multimedia in your sources list. Best 
of
luck.
Chime


