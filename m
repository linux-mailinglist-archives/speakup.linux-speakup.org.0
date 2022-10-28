Return-Path: <speakup+bounces-792-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C3D6F610700
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 02:54:56 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 57816384065; Thu, 27 Oct 2022 20:54:56 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 43C5D38400B
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 20:54:56 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E07B2384010; Thu, 27 Oct 2022 20:54:50 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0004.b.hostedemail.com [64.98.42.4])
	by befuddled.reisers.ca (Postfix) with ESMTPS id CFB05384002
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 20:54:50 -0400 (EDT)
Received: from omf13.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay03.b.hostedemail.com (Postfix) with ESMTP id 4CBDF8B5996F;
	Fri, 28 Oct 2022 00:54:50 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf13.b.hostedemail.com (Postfix) with ESMTPA id CECA2801C088;
	Fri, 28 Oct 2022 00:54:49 +0000 (UTC)
Message-ID: <089c01d8ea67$be809ae0$87ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Chime Hart" <chime@hubert-humphrey.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM> <083301d8ea4e$aa578240$87ffa8c0@Win7VM> <32971cb4-513b-70e2-4371-fd1544adb848@hubert-humphrey.com> <085b01d8ea55$190b4b80$87ffa8c0@Win7VM> <d06e087d-7752-f42e-25ff-d2e736b5ed3b@hubert-humphrey.com> <086601d8ea59$9bd758c0$87ffa8c0@Win7VM> <ebac52ac-209b-686e-ad06-d743658cc6cb@hubert-humphrey.com> <087e01d8ea5c$c01349d0$87ffa8c0@Win7VM> <5a70be54-54a6-fd05-d02f-7fdc5a24d691@hubert-humphrey.com> <088501d8ea5e$9033f820$87ffa8c0@Win7VM> <ce900000-695c-23de-19f0-6bb50e7fcd25@hubert-humphrey.com> <089101d8ea60$a48a59c0$87ffa8c0@Win7VM> <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com>
Subject: Re: Installing Voxin
Date: Thu, 27 Oct 2022 19:53:49 -0500
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
X-Stat-Signature: eriasj7iz4iekt3xr6tk1pp96785kxb5
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: CECA2801C088
X-Spam-Status: No, score=-0.10
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/n1StxlWFlFoBTEx4HkWNVua/0I4Y7lxY=
X-HE-Tag: 1666918489-178882
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Chime and All,
Let's see,
spd-say -O
came back with
output module is espeak-ng
and spd-say -L
failed to get voice list

Thanks.

----- Original Message ----- 
From: "Chime Hart" <chime@hubert-humphrey.com>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Thursday, October 27, 2022 7:40 PM
Subject: Re: Installing Voxin


OK Glen, while this won't fix anything, try-and-run
spd-say -L
also
spd-say -O
Those are both capitalized. They will list modules. Right now I have no 
other
suggestions.
Chime



