Return-Path: <speakup+bounces-907-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A5E6564973B
	for <lists+speakup@lfdr.de>; Mon, 12 Dec 2022 00:46:36 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 75FAA382848; Sun, 11 Dec 2022 18:46:33 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5F803382821
	for <lists+speakup@lfdr.de>; Sun, 11 Dec 2022 18:46:33 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2BB8B382823; Sun, 11 Dec 2022 18:46:28 -0500 (EST)
Received: from smtprelay.b.hostedemail.com (smtprelay0105.b.hostedemail.com [64.98.42.105])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 19A47382820
	for <speakup@linux-speakup.org>; Sun, 11 Dec 2022 18:46:28 -0500 (EST)
Received: from omf09.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay02.b.hostedemail.com (Postfix) with ESMTP id 790CF8031CC0
	for <speakup@linux-speakup.org>; Sun, 11 Dec 2022 23:46:26 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf09.b.hostedemail.com (Postfix) with ESMTPA id 16CECCEB134
	for <speakup@linux-speakup.org>; Sun, 11 Dec 2022 23:46:26 +0000 (UTC)
Message-ID: <000701d90dba$a449abf0$8bffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Installing Ubuntu Server
Date: Sun, 11 Dec 2022 17:45:24 -0600
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
X-Spam-Status: No, score=-2.57
X-Stat-Signature: uogbomx1xsc33xjaonz3eo1m8w7gnkd8
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 16CECCEB134
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/0t/PD/lx2lmpdreimaNF0iVZqG1QY9EY=
X-HE-Tag: 1670802386-402092
X-HE-Meta: U2FsdGVkX18r9UjFMo3Yq4JA5DgOPyJdsyvV7A97N4eusPbYyOh7PKbcrVl1R2dJUK9mSgn4bxtlYDysgbYgsA==
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hey Group,
I thought I'd test out Ubuntu server in a VM, using VmWare.
The first problem I noticed is that there is no way to call up speakup 
because it is configuring a few things, like disk space to use and user 
group and an account.
When I have installed Windows, I didn't have trouble with this because 
VmWare took the information from the running windows system.
Actually, I'm not sure how one would install Ubuntu-server non-visually 
outside a hypervisor.
I was using:
Ubuntu22.04 64 lite server
I might be able to get through the VmWare installer, I thought I had it 
using the Be My Eyes app, but I couldn't tell if I was at a prompt, and 
speaker-test produced nothing, and the soundcard was checked for the VM.
I also have Ubuntu Mate on the same computer in a VM, and sometimes I have 
to enable the soundcard again to get Orca talking, but that didn't happen 
here.
Just hoping someone has installed Ubuntu-server and gotten speakup to work 
on first boot.
Glenn 


