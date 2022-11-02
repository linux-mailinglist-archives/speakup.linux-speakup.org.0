Return-Path: <speakup+bounces-823-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A70F2616EFB
	for <lists+speakup@lfdr.de>; Wed,  2 Nov 2022 21:44:32 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B926D383BD0; Wed,  2 Nov 2022 16:44:29 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A5098380712
	for <lists+speakup@lfdr.de>; Wed,  2 Nov 2022 16:44:29 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9E946382BFE; Wed,  2 Nov 2022 16:44:24 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0078.b.hostedemail.com [64.98.42.78])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 847A6380712
	for <speakup@linux-speakup.org>; Wed,  2 Nov 2022 16:44:24 -0400 (EDT)
Received: from omf14.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay01.b.hostedemail.com (Postfix) with ESMTP id 37EBA18AB7646
	for <speakup@linux-speakup.org>; Wed,  2 Nov 2022 20:44:23 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf14.b.hostedemail.com (Postfix) with ESMTPA id CE3A28000041
	for <speakup@linux-speakup.org>; Wed,  2 Nov 2022 20:44:22 +0000 (UTC)
Message-ID: <05de01d8eefb$e44f16a0$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Voxin/ibmtts with eSpeakup
Date: Wed, 2 Nov 2022 15:44:22 -0500
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
X-Stat-Signature: 8nu8sx88sswgp61g78y4xw8mxgfy1szz
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: CE3A28000041
X-Spam-Status: No, score=1.00
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19YoC/XA8keiCEpoOr8HXgy359AP0Zabzk=
X-HE-Tag: 1667421862-647132
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,
I have installed a voxin 2.2.1 update from Oralux to try and get Voxin 
working with speakup.
More accurately, with espeakup.
I can get the spd-say to play with ibmtts, using the alsa selection.
This is on Debian Bullseye 32 bit, which cannot use Voxin 3X.
Are there any espeakup parameters that will make it use what is in 
speechd.conf?
Thanks.

Glenn 


