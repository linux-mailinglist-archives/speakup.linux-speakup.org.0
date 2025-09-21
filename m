Return-Path: <speakup+bounces-1393-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 718B9B8D2B6
	for <lists+speakup@lfdr.de>; Sun, 21 Sep 2025 02:43:14 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 90525382BDB; Sat, 20 Sep 2025 20:43:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7B3F3382C67
	for <lists+speakup@lfdr.de>; Sat, 20 Sep 2025 20:43:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BA972382BC2; Sat, 20 Sep 2025 20:43:09 -0400 (EDT)
Received: from cloud (ip74-208-194-141.pbiaas.com [74.208.194.141])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A36A7382B7B
	for <speakup@linux-speakup.org>; Sat, 20 Sep 2025 20:43:09 -0400 (EDT)
Received: by cloud (Postfix, from userid 1000)
	id 213DF201A0; Sun, 21 Sep 2025 00:43:09 +0000 (UTC)
Date: Sun, 21 Sep 2025 00:43:09 +0000
From: "Terry D. Cudney" <terry@cudneys.ca>
To: Chevelle <cstrobel@crosslink.net>
Cc: speakup@linux-speakup.org
Subject: Re: speakup from boot
Message-ID: <aM9KHbWnRzHPHDr2@cudneys.ca>
References: <aL5U_xg372xiMOJm@cudneys.ca>
 <aL5dVITcCcq369vC@cudneys.ca>
 <aL9BrQYKOSsZg6NJ@gregn.net>
 <2a46280b-3f61-492b-b7a4-b7f685c41a4e@crosslink.net>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2a46280b-3f61-492b-b7a4-b7f685c41a4e@crosslink.net>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Chevelle,

   With earlier installations of debian, speakup/speech was enabled from the installer and was running thereafter in the installed system.

   However, in more recent versions of the installer,, at least in my current setup, when I select "speech" during the installation, the installed system has "orca" running in the gui, but no speakup in the cli tty's.

   What we want to have here is orca in the gui, concurrently with speakup/espeakup/espeak-ng in the consoles.

   I am able to accomplish this by manually, after loggingin on a console,  stopping the espeakup.service (systemd), modifying the /dev/softsynth ownership from root:root to terry:terry and then running espeakup as a user application.

   The goal, as previously stated, is to have this all done/setup automatically from boot-time, so that we have an audible prompt before logging in on a console.

   --terry
   

On Mon, Sep 08, 2025 at 05:22:37PM -0400, Chevelle wrote:
--> On my Debian systems, Speakup does talk before login in.  I'm using
--> espeak-ng.  I'm not sure what 'softsynth' is, or why you need to stop
--> espeakup at all? On this system typing 'systemctl status espeakup' shows
--> it running.
--> 
--> 
--> 
--> On 9/8/25 4:50 PM, Gregory Nowak wrote:
--> > Switch to a systemd-free distro like devuan or void. Probably not the
--> > advice you wanted.
--> > 
--> > Greg
--> > 
--> > 
--> > On Mon, Sep 08, 2025 at 04:36:36AM +0000, Terry D. Cudney wrote:
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
--> > > E-mail: terry@cudneys.ca
--> > > 
--> 

-- 
Name: Terry D. Cudney
Telephone: 289-438-6828
E-mail: terry@cudneys.ca
 

