Return-Path: <speakup+bounces-810-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0663F61246F
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 18:25:15 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0C2A3384053; Sat, 29 Oct 2022 12:25:14 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EBDC2383FEB
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 12:25:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C4D53383FEB; Sat, 29 Oct 2022 12:25:08 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0153.b.hostedemail.com [64.98.42.153])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B4A97383FE7
	for <speakup@linux-speakup.org>; Sat, 29 Oct 2022 12:25:08 -0400 (EDT)
Received: from omf10.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay03.b.hostedemail.com (Postfix) with ESMTP id EC5998ADCD3A;
	Sat, 29 Oct 2022 16:25:06 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf10.b.hostedemail.com (Postfix) with ESMTPA id 599E73BE3;
	Sat, 29 Oct 2022 16:25:06 +0000 (UTC)
Message-ID: <007a01d8ebb3$01d52990$84ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Chime Hart" <chime@hubert-humphrey.com>
Cc: "Gregory Nowak" <greg@gregn.net>,
	<speakup@linux-speakup.org>,
	"Didier Spaier" <didier@slint.fr>
References: <089101d8ea60$a48a59c0$87ffa8c0@Win7VM> <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com> <089c01d8ea67$be809ae0$87ffa8c0@Win7VM> <Y1tQ09YHFIMW5W2P@gregn.net> <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM> <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com> <090701d8eaef$9a45f930$87ffa8c0@Win7VM> <082beb13-bca6-f001-6b28-8a2e14ad7b25@slint.fr> <096901d8eb12$060be090$87ffa8c0@Win7VM> <098901d8eb16$fcddc5b0$87ffa8c0@Win7VM> <Y1xm3HAleBaLGGnk@gregn.net> <002b01d8eb29$c48a8af0$84ffa8c0@Win7VM> <6178c7b1-35b5-c47e-65c6-4a6dcddbeb25@hubert-humphrey.com> <007301d8ebb1$1e99bc00$84ffa8c0@Win7VM> <62e3adc6-08c3-7df8-75e0-93a67a4b562a@hubert-humphrey.com>
Subject: Re: Installing Voxin
Date: Sat, 29 Oct 2022 11:25:05 -0500
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
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 599E73BE3
X-Spam-Status: No, score=0.88
X-Stat-Signature: raoxwe7zdsifbitwrtnwa6tkjcycaift
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19y20hLVeygDdOkHOadmh479Zp3Lt1o5Ac=
X-HE-Tag: 1667060706-557009
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Chime,
What are the 9 items I need to kill?
Thanks.
----- Original Message ----- 
From: "Chime Hart" <chime@hubert-humphrey.com>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Gregory Nowak" <greg@gregn.net>; <speakup@linux-speakup.org>; "Didier 
Spaier" <didier@slint.fr>
Sent: Saturday, October 29, 2022 11:21 AM
Subject: Re: Installing Voxin


Hi Glen: You know, last evening I realized these 2 steps might work for you?
First, in your processes, you would sudo kill -9 items dealing with
speech-dispatcher.  Then
sudo ./speechd-up
That might give you Voxin. At times this has worked here, not a perfect
solution, but at least you hopefully can enjoy something better than 
`horrible
espeak.
Chime


