Return-Path: <speakup+bounces-1390-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 87364B8D288
	for <lists+speakup@lfdr.de>; Sun, 21 Sep 2025 01:52:14 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AAD31382BC9; Sat, 20 Sep 2025 19:51:57 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 978E0382B6A
	for <lists+speakup@lfdr.de>; Sat, 20 Sep 2025 19:51:57 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A9100382A93; Sat, 20 Sep 2025 19:51:53 -0400 (EDT)
Received: from cloud (ip74-208-194-141.pbiaas.com [74.208.194.141])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 876423827DB
	for <speakup@linux-speakup.org>; Sat, 20 Sep 2025 19:51:53 -0400 (EDT)
Received: by cloud (Postfix, from userid 1000)
	id 8E164201A0; Sat, 20 Sep 2025 23:51:41 +0000 (UTC)
Date: Sat, 20 Sep 2025 23:51:41 +0000
From: "Terry D. Cudney" <terry@cudneys.ca>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: speakup@linux-speakup.org
Subject: Re: speakup from boot
Message-ID: <aM8-DdAl1_NTcbI7@cudneys.ca>
References: <aL5U_xg372xiMOJm@cudneys.ca>
 <aL5dVITcCcq369vC@cudneys.ca>
 <m3v7ltv3t4.wl-covici@ccs.covici.com>
 <694cf51b-fbe8-4377-aeab-4afa0d753019@math.wisc.edu>
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
In-Reply-To: <694cf51b-fbe8-4377-aeab-4afa0d753019@math.wisc.edu>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi John,

   Thanks for your response!

   I have verified that espeakup is "enabled". The problem is that it is running as "root".

   I'm still convinced that the solution, if we are going to stick with systemd, is to start espeakup as a systemd service running as "user". In my case, as "terry".

   I still havent got a good enough grasp of systemd to know how to accomplish this.

   Still looking, in my spare time.

   Thanks again!

   --terry
   
=On Mon, Sep 08, 2025 at 10:39:52AM -0500, John G. Heim wrote:
--> The OP was a little unclear on what he wants to do but if what he said at
--> the end, "The goal is to have speakup talking before loggin in: is
--> correct, then you don't have to mess with the initrd for that. Just
--> enabling the espeakup systemd service should do it.
--> 
--> To check the status:
--> systemctl status espeakup
--> To enable the service:
--> systemctl enable espeakup
--> 
--> 
--> On 9/8/25 1:47 AM, John Covici wrote:
--> > You would have to load the kernel module in your initrd and regenerate
--> > the initrd in order to do this.  There is a script runs after the
--> > initrd is generated, this may help.  Sorry, I can't remember how to do
--> > this and I use a serial synth.
--> > 
--> > On Mon, 08 Sep 2025 00:36:36 -0400,
--> > Terry D. Cudney wrote:
--> > > Hi again,
--> > > 
--> > >     To give credit where credit is due...
--> > > 
--> > >     This little script (now modified) came from Kirk...
--> > > 
--> > >     This is how I get speakup to talk after logging in.
--> > > 
--> > >     First I must run this script,  as root:
--> > > /* start of script */
--> > > #!/bin/bash
--> > > 
--> > > systemctl stop espeakup
--> > > /usr/bin/chown terry:terry /dev/softsynth*
--> > > /usr/bin/chmod 1777 /run
--> > > /* end of script */
--> > > 
--> > > 
--> > > Then logged in as myself, I run espeakup as an application.
--> > > /usr/bin/espeakup
--> > > 
--> > > 	From here on speakup talks normally on all tty's including the login prompts.
--> > > 
--> > > 	This is good, but not completely satisfactory, The goal is to have speakup talking before loggin in, ideally from power-on.
--> > > 
--> > > 	Thanks again for any suggestions/help ,
--> > > 
--> > > 	--terry
--> > > -- 
--> > > Name: Terry D. Cudney
--> > > Telephone: 289-438-6828
--> > > E-mail:terry@cudneys.ca
--> > > 

-- 
Name: Terry D. Cudney
Telephone: 289-438-6828
E-mail: terry@cudneys.ca
 

