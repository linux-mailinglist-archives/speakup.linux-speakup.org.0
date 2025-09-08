Return-Path: <speakup+bounces-1319-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6D6BAB48349
	for <lists+speakup@lfdr.de>; Mon,  8 Sep 2025 06:36:44 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9604E382720; Mon, 08 Sep 2025 00:36:41 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 81B113820B8
	for <lists+speakup@lfdr.de>; Mon, 08 Sep 2025 00:36:41 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A6F4D3820D3; Mon, 08 Sep 2025 00:36:37 -0400 (EDT)
Received: from cloud (ip74-208-194-141.pbiaas.com [74.208.194.141])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9444E381973
	for <speakup@linux-speakup.org>; Mon, 08 Sep 2025 00:36:37 -0400 (EDT)
Received: by cloud (Postfix, from userid 1000)
	id EB4B6201A1; Mon, 08 Sep 2025 04:36:36 +0000 (UTC)
Date: Mon, 8 Sep 2025 04:36:36 +0000
From: "Terry D. Cudney" <terry@cudneys.ca>
To: speakup@linux-speakup.org
Subject: Re: speakup from boot
Message-ID: <aL5dVITcCcq369vC@cudneys.ca>
References: <aL5U_xg372xiMOJm@cudneys.ca>
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
In-Reply-To: <aL5U_xg372xiMOJm@cudneys.ca>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi again,

   To give credit where credit is due...

   This little script (now modified) came from Kirk...

   This is how I get speakup to talk after logging in.  

   First I must run this script,  as root:
/* start of script */
#!/bin/bash

systemctl stop espeakup
/usr/bin/chown terry:terry /dev/softsynth*
/usr/bin/chmod 1777 /run
/* end of script */


Then logged in as myself, I run espeakup as an application.
/usr/bin/espeakup

	From here on speakup talks normally on all tty's including the login prompts.

	This is good, but not completely satisfactory, The goal is to have speakup talking before loggin in, ideally from power-on.

	Thanks again for any suggestions/help ,

	--terry
 
-- 
Name: Terry D. Cudney
Telephone: 289-438-6828
E-mail: terry@cudneys.ca
 

