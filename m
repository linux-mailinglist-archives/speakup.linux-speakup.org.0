Return-Path: <speakup+bounces-517-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BE221591691
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 23:04:52 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 623F43847B3; Fri, 12 Aug 2022 17:04:52 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4D876383776
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 17:04:52 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0A187383776; Fri, 12 Aug 2022 17:04:47 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0036.b.hostedemail.com [64.98.42.36])
	by befuddled.reisers.ca (Postfix) with ESMTPS id ED5F038190A
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 17:04:46 -0400 (EDT)
Received: from omf04.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay04.b.hostedemail.com (Postfix) with ESMTP id 6D8FD10034BAE;
	Fri, 12 Aug 2022 21:04:46 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf04.b.hostedemail.com (Postfix) with ESMTPA id CF17910032310;
	Fri, 12 Aug 2022 21:04:45 +0000 (UTC)
Message-ID: <023201d8ae8f$279f0940$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Chime Hart" <chime@hubert-humphrey.com>,
	"Matt Campbell" <mattcampbell@pobox.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <021801d8ae89$220560c0$80ffa8c0@Win7VM> <eb84963a-90e0-c24c-4215-4d0dde3390d0@hubert-humphrey.com> <021d01d8ae8c$39e82800$80ffa8c0@Win7VM> <8295e54b-fd16-c53f-f3f7-e9a09c7a62c6@pobox.com> <022101d8ae8d$31446fa0$80ffa8c0@Win7VM> <3b34c003-8772-fa96-0679-fa1d180a38d1@pobox.com>
Subject: Re: getting audio for Orca and Speakup or Fenrir
Date: Fri, 12 Aug 2022 16:04:46 -0500
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
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: CF17910032310
X-Spam-Status: No, score=-1.64
X-Stat-Signature: 1w9sryjkrzpehz4ktop7b68nfrcwhrnh
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19F+lOyhcA24ubKGGviwOSsdRgbxenJZEs=
X-HE-Tag: 1660338285-250878
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

When I ran just amixer, it said playback is off.
I don't seem to have the option in SSH to right arrow to try to unmute 
anything.
Glenn
----- Original Message ----- 
From: "Matt Campbell" <mattcampbell@pobox.com>
To: "K0LNY_Glenn" <glenn@ervin.email>; "Chime Hart" 
<chime@hubert-humphrey.com>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Friday, August 12, 2022 3:56 PM
Subject: Re: getting audio for Orca and Speakup or Fenrir


There unfortunately can't be a single command that always works for
unmuting, for two reasons. First, the names of the volume controls vary
depending on the sound hardware and driver. Second, there's no single
volume that's appropriate for all sound devices. If you set everything
to 100%, you may well end up with a volume that's dangerously loud. So
it always takes trial and error, starting with simply running the amixer
command with no arguments to find out the available controls and what
they're set to. This is an inconvenient but unavoidable aspect of using
a DIY system like Linux on a single-board computer, as opposed to a
pre-made, integrated platform where everything is tested and tuned by a
single vendor.

Matt


