Return-Path: <speakup+bounces-1318-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4ADF9B48311
	for <lists+speakup@lfdr.de>; Mon,  8 Sep 2025 06:01:59 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 02497382731; Mon, 08 Sep 2025 00:01:50 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E070B3818E2
	for <lists+speakup@lfdr.de>; Mon, 08 Sep 2025 00:01:49 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 30A7338193D; Mon, 08 Sep 2025 00:01:46 -0400 (EDT)
Received: from cloud (ip74-208-194-141.pbiaas.com [74.208.194.141])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1B4073818C0
	for <speakup@linux-speakup.org>; Mon, 08 Sep 2025 00:01:46 -0400 (EDT)
Received: by cloud (Postfix, from userid 1000)
	id E9960201A1; Mon, 08 Sep 2025 04:01:03 +0000 (UTC)
Date: Mon, 8 Sep 2025 04:01:03 +0000
From: "Terry D. Cudney" <terry@cudneys.ca>
To: speakup@linux-speakup.org
Subject: speakup from boot
Message-ID: <aL5U_xg372xiMOJm@cudneys.ca>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,
	Wondering if anyone has succeeded in getting speakup to start talking automatically from boot-time on a debian or related system.

 I'm currently working on a laptop running debian13 (trixie). I can ssh into it and everything seems to be running ok as far as the system goes, but no  speakup.

 espeakup is installed from the debian espeakup-pakage. the default intallation loads espeakup as a systemd service, running espeakup as root. This seems to be where the problem lies...

 I can "systemctl stop espeakup" and then run as myself (user=terry), espeakup as an application (not a systemd. service) and speakup starts talking. This is after I am logged in with no speech.

 It would seem that if I could have espeakup start as a systemd.service, running as user=terry (not as root), speakup should start talking as soon as it is loaded, ideally (like it used to) from power-on, vocalizing all the diagnostics as the system boots and giving an audible login prompt..

 Has anyone  done this? Or am I on the wrong track with this approach?

 To summarize:has anyone gotten speakp to start talking automatically before logging in on a current Debian-style system? If so, or if you have a different idea of how to accomplish this, please post here or reply to me directly.

 Thanks in advance for any help in this regard,

 --terry

-- 
Name: Terry D. Cudney
Telephone: 289-438-6828
E-mail: terry@cudneys.ca
 

