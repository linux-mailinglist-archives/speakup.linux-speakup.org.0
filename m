Return-Path: <speakup+bounces-784-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CF613610673
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 01:36:15 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 87EF1384065; Thu, 27 Oct 2022 19:36:14 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 724F9383FF3
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 19:36:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2FC33383FF4; Thu, 27 Oct 2022 19:36:09 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0063.b.hostedemail.com [64.98.42.63])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 13D97383FE3
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 19:36:09 -0400 (EDT)
Received: from omf01.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay04.b.hostedemail.com (Postfix) with ESMTP id 8257A10033206;
	Thu, 27 Oct 2022 23:36:08 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf01.b.hostedemail.com (Postfix) with ESMTPA id 0433010ADFDE2;
	Thu, 27 Oct 2022 23:36:07 +0000 (UTC)
Message-ID: <087e01d8ea5c$c01349d0$87ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Chime Hart" <chime@hubert-humphrey.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM> <083301d8ea4e$aa578240$87ffa8c0@Win7VM> <32971cb4-513b-70e2-4371-fd1544adb848@hubert-humphrey.com> <085b01d8ea55$190b4b80$87ffa8c0@Win7VM> <d06e087d-7752-f42e-25ff-d2e736b5ed3b@hubert-humphrey.com> <086601d8ea59$9bd758c0$87ffa8c0@Win7VM> <ebac52ac-209b-686e-ad06-d743658cc6cb@hubert-humphrey.com>
Subject: Re: Installing Voxin
Date: Thu, 27 Oct 2022 18:35:07 -0500
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
X-Stat-Signature: yyg5ydch8k4hp3i8ki6ch8ei4kinyru3
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 0433010ADFDE2
X-Spam-Status: No, score=-1.64
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/rXnzjv1IS2mlK74AMfuSbT6Wt8PVdnqY=
X-HE-Tag: 1666913767-229516
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

The python3-speechd installed, but I got some of the same errors I mentioned 
before about speech-dispatcher and speechd-up.
But spd-conf runs, and I selected ibmtts instead of voxin, since voxin was 
not in the list of supported TTS choices.
eSpeak is still working with speakup, but when spd-conf did the tests, I 
heard nothing, and it ran an audio test, and that did not come through the 
speakers.
It suggested that there may be a pulseaudio problem.
I don't know that pulseaudio is even installed.
Should it be?
Glenn
----- Original Message ----- 
From: "Chime Hart" <chime@hubert-humphrey.com>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Thursday, October 27, 2022 6:19 PM
Subject: Re: Installing Voxin


OK Glen, please run
sudo apt install locate plocate
In TCSH I must type rehash to make the system realize new packages are
available. Once you can successfully run
locate spd-conf
We can continue working through these.
Chime


