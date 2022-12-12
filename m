Return-Path: <speakup+bounces-911-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5822E649904
	for <lists+speakup@lfdr.de>; Mon, 12 Dec 2022 07:38:03 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C55CF382868; Mon, 12 Dec 2022 01:38:01 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B07B8382842
	for <lists+speakup@lfdr.de>; Mon, 12 Dec 2022 01:38:01 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 81A0E382842; Mon, 12 Dec 2022 01:37:56 -0500 (EST)
Received: from smtprelay.b.hostedemail.com (smtprelay0078.b.hostedemail.com [64.98.42.78])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 719A138283D
	for <speakup@linux-speakup.org>; Mon, 12 Dec 2022 01:37:56 -0500 (EST)
Received: from omf09.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay02.b.hostedemail.com (Postfix) with ESMTP id 8BD9C80264C9;
	Mon, 12 Dec 2022 06:37:54 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf09.b.hostedemail.com (Postfix) with ESMTPA id 12B65CEBAAF;
	Mon, 12 Dec 2022 06:37:53 +0000 (UTC)
Message-ID: <010e01d90df4$1f6f00d0$8bffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: <speakup@linux-speakup.org>,
	"Jason White" <jason@jasonjgw.net>
References: <000701d90dba$a449abf0$8bffa8c0@Win7VM> <Y5Z7cfzORuPgHUeo@novena-choice-citizen> <46911939-7d7b-ad31-4cd4-d5cba4ea7715@jasonjgw.net>
Subject: Re: Installing Ubuntu Server
Date: Mon, 12 Dec 2022 00:36:52 -0600
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
	charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 12B65CEBAAF
X-Spam-Status: No, score=-2.33
X-Stat-Signature: 631eeq3zwot6kywbz9yg7p6dtq4d3xsj
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX18EyZkeJ7iHRdhNf3IjmDLYD75CEeHOdSE=
X-HE-Tag: 1670827073-392271
X-HE-Meta: U2FsdGVkX184MXM88OGWxLLEcqkjmQqKIMktXjw16nlmXeRMGXfVGZR1bsykhu07rWmq5DEbeF52DejXBXjxnw==
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

There you go Jason, I don't know why I didn't think of that.
I did that with my Ubuntu Mate, I zipped it up and put it up on my server 
and a friend was able to load it on a VmWare Player on his computer.
Glenn
----- Original Message ----- 
From: "Jason White" <jason@jasonjgw.net>
To: <speakup@linux-speakup.org>
Sent: Monday, December 12, 2022 12:34 AM
Subject: Re: Installing Ubuntu Server



On 12/12/22 11:53, Jookia wrote:
> Is there an install via SSH option?

For Debian, you should be able to install via ssh using Debootstrap or,
as recently recommended by an experienced system administrator in
mailing list discussion, Mmdebstrap.

I don't know whether Ubuntu can do the same.

However, there should be prepared images available for virtual machines
that don't require you to "install" anything.




