Return-Path: <speakup+bounces-780-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B5478610646
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 01:15:40 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 36157384017; Thu, 27 Oct 2022 19:15:40 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1FF9B383FFA
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 19:15:40 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E78CF383FEB; Thu, 27 Oct 2022 19:15:34 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0154.b.hostedemail.com [64.98.42.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D830F383FE6
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 19:15:34 -0400 (EDT)
Received: from omf02.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay04.b.hostedemail.com (Postfix) with ESMTP id EF7E110033210;
	Thu, 27 Oct 2022 23:15:32 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf02.b.hostedemail.com (Postfix) with ESMTPA id 857FD8A97D9C;
	Thu, 27 Oct 2022 23:15:32 +0000 (UTC)
Message-ID: <086901d8ea59$dfab15f0$87ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Chime Hart" <chime@hubert-humphrey.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM> <083301d8ea4e$aa578240$87ffa8c0@Win7VM> <32971cb4-513b-70e2-4371-fd1544adb848@hubert-humphrey.com> <085b01d8ea55$190b4b80$87ffa8c0@Win7VM> <d06e087d-7752-f42e-25ff-d2e736b5ed3b@hubert-humphrey.com>
Subject: Re: Installing Voxin
Date: Thu, 27 Oct 2022 18:14:30 -0500
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
X-Rspamd-Queue-Id: 857FD8A97D9C
X-Spam-Status: No, score=-1.81
X-Stat-Signature: 1hqpypfnqmfqu76zjj8p4bof9h9qti9j
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX183jNPgBsF9tgvnJnsk8t+HcAehLfzek2o=
X-HE-Tag: 1666912532-699396
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Also,
since I installed Voxin-2.2, testing with the command
espeak test
gives no feedback.
But speakup seems to be using eSpeak okay.
Just not Voxin.
Glenn
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


