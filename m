Return-Path: <speakup+bounces-499-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7CB16590A6E
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 04:56:22 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F42223819B2; Thu, 11 Aug 2022 22:56:21 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DE48C3818FD
	for <lists+speakup@lfdr.de>; Thu, 11 Aug 2022 22:56:21 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8977E3818FD; Thu, 11 Aug 2022 22:56:16 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0131.b.hostedemail.com [64.98.42.131])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 77DB13818F5
	for <speakup@linux-speakup.org>; Thu, 11 Aug 2022 22:56:16 -0400 (EDT)
Received: from omf08.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay03.b.hostedemail.com (Postfix) with ESMTP id 1E1928A3F9E2;
	Fri, 12 Aug 2022 02:56:13 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf08.b.hostedemail.com (Postfix) with ESMTPA id 9A3F91872D3AA;
	Fri, 12 Aug 2022 02:56:12 +0000 (UTC)
Message-ID: <018801d8adf7$15c85ed0$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Chime Hart" <chime@hubert-humphrey.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <017b01d8adf2$e34cc620$80ffa8c0@Win7VM> <2ee5e7ec-1929-e613-49b5-ca822a0e5b85@hubert-humphrey.com>
Subject: Re: help finding a folder
Date: Thu, 11 Aug 2022 21:56:13 -0500
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
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: 9A3F91872D3AA
X-Spam-Status: No, score=-2.43
X-Stat-Signature: qyegk3k8fgf9fnjzokhxkx1gibosk69r
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1+tSpHls9Yyxs+TC/+JDxl3YigqXXXANUU=
X-HE-Tag: 1660272972-168582
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I see why the updatedb didn't work, I did that before installing locate.
It found a lot of rhvoice in /rclocal/android, or some such directory.
Why would github put it in an Android directory?

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


