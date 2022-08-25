Return-Path: <speakup+bounces-641-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0AD1A5A1B8F
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 23:47:12 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 40FA6380E56; Thu, 25 Aug 2022 17:47:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2BAB0380E1D
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 17:47:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 26E37380E1F; Thu, 25 Aug 2022 17:47:06 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0050.b.hostedemail.com [64.98.42.50])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 160AF380E15
	for <speakup@linux-speakup.org>; Thu, 25 Aug 2022 17:47:06 -0400 (EDT)
Received: from omf06.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay03.b.hostedemail.com (Postfix) with ESMTP id 34EEA8B1752C;
	Thu, 25 Aug 2022 21:47:04 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf06.b.hostedemail.com (Postfix) with ESMTPA id A818D8B080C8;
	Thu, 25 Aug 2022 21:47:03 +0000 (UTC)
Message-ID: <024301d8b8cc$373578c0$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Chime Hart" <chime@hubert-humphrey.com>,
	"Jude DaShiell" <jdashiel@panix.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com> <022401d8b8c1$9a2c40e0$80ffa8c0@Win7VM> <022901d8b8c6$2c5c46f0$80ffa8c0@Win7VM> <363bcd12-5bd3-5749-2d6e-348ebfa9b461@panix.com> <022d01d8b8c8$57f2a780$80ffa8c0@Win7VM> <a66e95d1-4eef-4ede-a970-39e5af7cddd@panix.com> <8a99128b-f995-ce26-7e7a-6f1cbe869a95@hubert-humphrey.com>
Subject: Re: hopefully some help with AntiX
Date: Thu, 25 Aug 2022 16:47:03 -0500
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
X-Spam-Status: No, score=1.44
X-Stat-Signature: qpd9kcmdw8t6uxgj5kc57neakakpyqfm
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: A818D8B080C8
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/95QLgtYN7Zj8wKcjCczERbbUsx5mk/38=
X-HE-Tag: 1661464023-371807
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

What is SID?
I noticed antix.sid images when getting the image I'm using now, but I got 
the ISO.
Glenn
----- Original Message ----- 
From: "Chime Hart" <chime@hubert-humphrey.com>
To: "Jude DaShiell" <jdashiel@panix.com>
Cc: "K0LNY_Glenn" <glenn@ervin.email>; "Speakup is a screen review system 
for Linux." <speakup@linux-speakup.org>
Sent: Thursday, August 25, 2022 4:42 PM
Subject: Re: hopefully some help with AntiX


Hi Glen-and-All: I agree with Jude, you may be missing repos. I could paste 
in
my apt-sources list from Debian SID
deb [arch=amd64,i386] http://ftp.us.debian.org/debian sid main contrib 
non-free
# deb http://ftp.us.debian.org/debian sid-updates main
deb [arch=amd64] https://download.docker.com/linux/debian buster stable
# deb-src [arch=amd64] https://download.docker.com/linux/debian buster 
stable
#Adding deb-multimedia from Australia
deb http://mirror.optus.net/deb-multimedia/ unstable main
deb https://www.deb-multimedia.org sid main non-free
#Adding Contrib from France
deb http://ftp.fr.debian.org/debian sid main contrib non-free
Back again live. Glen, its too bad some folks haven't thought to get on  a 
Zoom
meeting-and-interactively help you live. That would seem faster than 3 days 
of
back-and-forth, but I will say you have some great minds trying to work out 
a
solution.
Chime



