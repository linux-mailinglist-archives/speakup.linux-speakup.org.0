Return-Path: <speakup+bounces-498-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F03DA590A5D
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 04:45:25 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 027D03819AD; Thu, 11 Aug 2022 22:45:25 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E22DA3818FC
	for <lists+speakup@lfdr.de>; Thu, 11 Aug 2022 22:45:24 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A7C693818FC; Thu, 11 Aug 2022 22:45:19 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0059.b.hostedemail.com [64.98.42.59])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 96EDE3818F4
	for <speakup@linux-speakup.org>; Thu, 11 Aug 2022 22:45:19 -0400 (EDT)
Received: from omf10.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay05.b.hostedemail.com (Postfix) with ESMTP id EF1F0100330E5;
	Fri, 12 Aug 2022 02:45:16 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf10.b.hostedemail.com (Postfix) with ESMTPA id 85F853FED;
	Fri, 12 Aug 2022 02:45:16 +0000 (UTC)
Message-ID: <018501d8adf5$8eb85ef0$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Chime Hart" <chime@hubert-humphrey.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <017b01d8adf2$e34cc620$80ffa8c0@Win7VM> <2ee5e7ec-1929-e613-49b5-ca822a0e5b85@hubert-humphrey.com>
Subject: Re: help finding a folder
Date: Thu, 11 Aug 2022 21:45:16 -0500
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
X-Stat-Signature: n7hdwmwiiedeeqhkjrybbp9r89ju353d
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: 85F853FED
X-Spam-Status: No, score=-1.43
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/e8elsu9EKp7rq0pc2fFSvKvT3W4ij07M=
X-HE-Tag: 1660272316-121803
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,
the updatedb didn't work, and it did not understand update db
if that was what you meant to write.
I then installed "locate"
and I ran it as you suggested, but it just came back to the command prompt, 
no errors and no messages.
Glenn

----- Original Message ----- 
From: "Chime Hart" <chime@hubert-humphrey.com>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Thursday, August 11, 2022 9:36 PM
Subject: Re: help finding a folder


Sure Glen, depending on which shell you are in, first run
sudo updatedb
Then install or type "locate rhvoice" Since I am in TCSH, I must type 
rehash.
Also, sometimes I've seen .tar files which extract to some generic directory
which by name has no relation. Anyway, hope all of that helps.
Chime



