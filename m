Return-Path: <speakup+bounces-779-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BB44A61063B
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 01:13:45 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5DA6C383FEF; Thu, 27 Oct 2022 19:13:45 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 49AF2383FE0
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 19:13:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E6088383FE3; Thu, 27 Oct 2022 19:13:39 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0062.b.hostedemail.com [64.98.42.62])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D4EE3383FD8
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 19:13:39 -0400 (EDT)
Received: from omf09.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay03.b.hostedemail.com (Postfix) with ESMTP id 352C18B198E3;
	Thu, 27 Oct 2022 23:13:39 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf09.b.hostedemail.com (Postfix) with ESMTPA id B85EFBCBC72;
	Thu, 27 Oct 2022 23:13:38 +0000 (UTC)
Message-ID: <086601d8ea59$9bd758c0$87ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Chime Hart" <chime@hubert-humphrey.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM> <083301d8ea4e$aa578240$87ffa8c0@Win7VM> <32971cb4-513b-70e2-4371-fd1544adb848@hubert-humphrey.com> <085b01d8ea55$190b4b80$87ffa8c0@Win7VM> <d06e087d-7752-f42e-25ff-d2e736b5ed3b@hubert-humphrey.com>
Subject: Re: Installing Voxin
Date: Thu, 27 Oct 2022 18:12:36 -0500
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
X-Stat-Signature: jep184nm7yaqwfrbm74fcgea35pbg1js
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: B85EFBCBC72
X-Spam-Status: No, score=-2.60
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1+qIETmrJ5AKBCQ+ujUVtIxGduCu/2orDA=
X-HE-Tag: 1666912418-297512
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Chime,
My Debian does not seem to know the locate command.
I tried:
sudo apt install spd
and it couldn't find it.
Also,
I tried to install speech-dispatcher again, and it said it had a problem 
with running speechd-up service.
So I tried to install speechd-up again, and got the same error.
In both cases, they said they were already installed and are the latest 
packages.
----- Original Message ----- 
From: "Chime Hart" <chime@hubert-humphrey.com>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Thursday, October 27, 2022 6:05 PM
Subject: Re: Installing Voxin


Well, Glen, I honestly don't remember how I solved that, but first try an
sudo apt install spd
Also, install locate as well as plocate. Run a locate for spd-conf
before-and-after trying those installs. Its possible you would need to cd to 
a
directory where spd-conf is located.
Chime


