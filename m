Return-Path: <speakup+bounces-756-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C0CC560680E
	for <lists+speakup@lfdr.de>; Thu, 20 Oct 2022 20:17:09 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5F21F384024; Thu, 20 Oct 2022 14:17:09 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4B865383FB8
	for <lists+speakup@lfdr.de>; Thu, 20 Oct 2022 14:17:09 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1C3F3383FBB; Thu, 20 Oct 2022 14:17:04 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0076.b.hostedemail.com [64.98.42.76])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0BCEC380608
	for <speakup@linux-speakup.org>; Thu, 20 Oct 2022 14:17:04 -0400 (EDT)
Received: from omf03.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay02.b.hostedemail.com (Postfix) with ESMTP id 3E9F58311D4C;
	Thu, 20 Oct 2022 18:17:03 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf03.b.hostedemail.com (Postfix) with ESMTPA id A9D3B8311D43;
	Thu, 20 Oct 2022 18:17:02 +0000 (UTC)
Message-ID: <027f01d8e4b0$279060a0$87ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Samuel Thibault" <samuel.thibault@ens-lyon.org>,
	"Rudy Vener" <salt@panix.com>
Cc: <speakup@linux-speakup.org>
References: <20210105173502.GA17449@panix.com> <20221020181216.o5rpkuy5tgdcmgyo@begin>
Subject: Re: spelling words with military letter pronunciation
Date: Thu, 20 Oct 2022 13:17:02 -0500
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
X-Spam-Status: No, score=0.70
X-Stat-Signature: dqf9ubakthw4eduj9ougq8y1qapq9gig
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: A9D3B8311D43
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX18lN9w6/xr+er2Fwq0ngPL2B8O1ZKaW0kk=
X-HE-Tag: 1666289822-874919
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I like the way Jaws in windows will speak letter's phonetically  if paused 
on the character while arrowing through a word.
Glenn
----- Original Message ----- 
From: "Samuel Thibault" <samuel.thibault@ens-lyon.org>
To: "Rudy Vener" <salt@panix.com>
Cc: <speakup@linux-speakup.org>
Sent: Thursday, October 20, 2022 1:12 PM
Subject: Re: spelling words with military letter pronunciation


Hello,

Rudy Vener, le mar. 05 janv. 2021 12:35:02 -0500, a ecrit:
> A feature to tap the speak word key thrice to get military spelling
> would be a great boon to those of us who are deaf as well as blind.

As reported by Mushahid Hussain:

“
According to docs here
https://github.com/linux-speakup/speakup/blob/37fa15cffbea52e30a35113d6c1c2a69916e9711/Documentation/admin-guide/spkguide.txt#L290
key combination for military letter pronunciation is spk_key + 5.

I have tested spk_key + 5 on speakup_soft(and espeakup) and it pronounces 
the whole word in military letters no matter where the cursor is.
”

Does that not answer you need?

Samuel


