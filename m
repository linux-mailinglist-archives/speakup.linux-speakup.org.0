Return-Path: <speakup+bounces-1395-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A80E4B8D2FB
	for <lists+speakup@lfdr.de>; Sun, 21 Sep 2025 03:05:18 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=HywS4cOm;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DAF8F382C6E; Sat, 20 Sep 2025 21:05:17 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B71F5382BE7
	for <lists+speakup@lfdr.de>; Sat, 20 Sep 2025 21:05:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8212C382BE5; Sat, 20 Sep 2025 21:05:10 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2D24A382BDD
	for <speakup@linux-speakup.org>; Sat, 20 Sep 2025 21:05:09 -0400 (EDT)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4cTp1w3f16zMkT
	for <speakup@linux-speakup.org>; Sat, 20 Sep 2025 21:05:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1758416708; bh=GFR9t5+rwKye1NRrXj5eApfzHkDMzupse5hGtBOECu4=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=HywS4cOmqqvx4lGBuxOROgv1jqXiYsQZfDvbFiY9GrJ4uBst+SOpeeBqZBxniyJx/
	 +nL25Qj6rUd3j2yd6gOJU+u1b/K+um5+mlA5SgiForZZB70Unba4YU4YM6JgST5qyQ
	 npU5umfzxoPOONQJAPM2Wqwr4PfpxMEMWgX2LVWU=
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4cTp1w3PYjz1QXM; Sat, 20 Sep 2025 21:05:08 -0400 (EDT)
Date: Sat, 20 Sep 2025 21:05:08 -0400
From: Rudy Vener <salt@panix.com>
To: speakup@linux-speakup.org
Subject: Re: speakup from boot
Message-ID: <aM9PRNDvSLjcx7-1@panix.com>
References: <aL5U_xg372xiMOJm@cudneys.ca>
 <aL5dVITcCcq369vC@cudneys.ca>
 <aL9BrQYKOSsZg6NJ@gregn.net>
 <2a46280b-3f61-492b-b7a4-b7f685c41a4e@crosslink.net>
 <aM9KHbWnRzHPHDr2@cudneys.ca>
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
In-Reply-To: <aM9KHbWnRzHPHDr2@cudneys.ca>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Slint Linux does this. I typically login on console and start up an Orca gui
after switching to Console 2 via Alt-F2 and running a startx script,
e.g:
# run the first two lines only once
# orca-on
# session-chooser mate
# clean out browser cache
rm -fr $HOME/.cache/*
startx

Now both console and Orca are running and I switch  as needed
with Alt-F7 to get to Orca and
Alt-Ctrl-F1 to return to text console.

If I screw up my Orca session, (frequently), I can Alt-Ctrl-F2 to get to the Console 2 and hit Ctrl-c to kill  the Orca process.

-- 
Rudy Vener

An audio release of Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
alarmming Limerick - AI Hallucinations Are Here To Stay https://limerickdude.substack.com/p/ai-hallucinations-are-here-to-stay
Website: http://www.rudyvener.com



On Sun, Sep 21, 2025 at 12:43:09AM +0000, Terry D. Cudney wrote:
> Hi Chevelle,
> 
>    With earlier installations of debian, speakup/speech was enabled from the installer and was running thereafter in the installed system.
> 
>    However, in more recent versions of the installer,, at least in my current setup, when I select "speech" during the installation, the installed system has "orca" running in the gui, but no speakup in the cli tty's.
> 
>    What we want to have here is orca in the gui, concurrently with speakup/espeakup/espeak-ng in the consoles.
> 
>    I am able to accomplish this by manually, after loggingin on a console,  stopping the espeakup.service (systemd), modifying the /dev/softsynth ownership from root:root to terry:terry and then running espeakup as a user application.
> 
>    The goal, as previously stated, is to have this all done/setup automatically from boot-time, so that we have an audible prompt before logging in on a console.
> 
>    --terry
>    
> 
> On Mon, Sep 08, 2025 at 05:22:37PM -0400, Chevelle wrote:
> --> On my Debian systems, Speakup does talk before login in.? I'm using
> --> espeak-ng.? I'm not sure what 'softsynth' is, or why you need to stop
> --> espeakup at all? On this system typing 'systemctl status espeakup' shows
> --> it running.
> --> 
> --> 
> --> 
> --> On 9/8/25 4:50 PM, Gregory Nowak wrote:
> --> > Switch to a systemd-free distro like devuan or void. Probably not the
> --> > advice you wanted.
> --> > 
> --> > Greg
> --> > 
> --> > 
> --> > On Mon, Sep 08, 2025 at 04:36:36AM +0000, Terry D. Cudney wrote:
> --> > > Hi again,
> --> > > 
> --> > >     To give credit where credit is due...
> --> > > 
> --> > >     This little script (now modified) came from Kirk...
> --> > > 
> --> > >     This is how I get speakup to talk after logging in.
> --> > > 
> --> > >     First I must run this script,  as root:
> --> > > /* start of script */
> --> > > #!/bin/bash
> --> > > 
> --> > > systemctl stop espeakup
> --> > > /usr/bin/chown terry:terry /dev/softsynth*
> --> > > /usr/bin/chmod 1777 /run
> --> > > /* end of script */
> --> > > 
> --> > > 
> --> > > Then logged in as myself, I run espeakup as an application.
> --> > > /usr/bin/espeakup
> --> > > 
> --> > > 	From here on speakup talks normally on all tty's including the login prompts.
> --> > > 
> --> > > 	This is good, but not completely satisfactory, The goal is to have speakup talking before loggin in, ideally from power-on.
> --> > > 
> --> > > 	Thanks again for any suggestions/help ,
> --> > > 
> --> > > 	--terry
> --> > > -- 
> --> > > Name: Terry D. Cudney
> --> > > Telephone: 289-438-6828
> --> > > E-mail: terry@cudneys.ca
> --> > > 
> --> 
> 
> -- 
> Name: Terry D. Cudney
> Telephone: 289-438-6828
> E-mail: terry@cudneys.ca
>  
> 

