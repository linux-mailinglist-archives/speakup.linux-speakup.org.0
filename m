Return-Path: <speakup+bounces-1394-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 81954B8D2D1
	for <lists+speakup@lfdr.de>; Sun, 21 Sep 2025 02:49:56 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=AhnHNJ+A;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0704D382C54; Sat, 20 Sep 2025 20:49:56 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DA5C5382BE1
	for <lists+speakup@lfdr.de>; Sat, 20 Sep 2025 20:49:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A2A6B382BDD; Sat, 20 Sep 2025 20:49:48 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3FE31382BD7
	for <speakup@linux-speakup.org>; Sat, 20 Sep 2025 20:49:47 -0400 (EDT)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4cTnhB06l3zMLF
	for <speakup@linux-speakup.org>; Sat, 20 Sep 2025 20:49:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1758415786; bh=EwXEK9Z+NbaGQLRKykN2rENmfeP//d/2hN/++sMfMmM=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=AhnHNJ+ATBM9xc4dgAljzjDi/6l70jQWSTGgqSyA/gthE4W+PZyDfyigBbmyvV6bB
	 4NLWM3V9ytudL43qpwntQcSxDpXjk6q2O1yCXs0+jQDtPUjk2v3vpB1bRcB293rNNy
	 fcFmnlH92m+CsScquHFj8HWxvJLzQeY7UV/PuskQ=
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4cTnh83CJWz1QXM; Sat, 20 Sep 2025 20:49:44 -0400 (EDT)
Date: Sat, 20 Sep 2025 20:49:44 -0400
From: Rudy Vener <salt@panix.com>
To: speakup@linux-speakup.org
Subject: Re: speakup from boot
Message-ID: <aM9LqMsaeVse7URd@panix.com>
References: <aL5U_xg372xiMOJm@cudneys.ca>
 <aL5dVITcCcq369vC@cudneys.ca>
 <aL9BrQYKOSsZg6NJ@gregn.net>
 <aM8_9UlZj_oQ4ktW@cudneys.ca>
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
In-Reply-To: <aM8_9UlZj_oQ4ktW@cudneys.ca>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I can reccommend slint Linux which is based on slackware and speaks right from the console login screen.

-- 
Rudy Vener

An audio release of Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
alarmming Limerick - AI Hallucinations Are Here To Stay https://limerickdude.substack.com/p/ai-hallucinations-are-here-to-stay
Website: http://www.rudyvener.com



On Sat, Sep 20, 2025 at 11:59:49PM +0000, Terry D. Cudney wrote:
> Hi Greg,
> 
>    Thanks for your response!
> 
>    I have tried voidlinux for a short while. It's a "whole different can of worms". I may still end up going that route, but for now I'm taunted by the idea of "vanquishing" systemd to do what I want.
> 
>    If I  cant get systemd to obey me, a "systemd-free" distro may be in the future...
> 
>    Thanks again,
> 
>    --terry
>    
> On Mon, Sep 08, 2025 at 01:50:53PM -0700, Gregory Nowak wrote:
> --> Switch to a systemd-free distro like devuan or void. Probably not the
> --> advice you wanted.
> --> 
> --> Greg
> --> 
> --> 
> --> On Mon, Sep 08, 2025 at 04:36:36AM +0000, Terry D. Cudney wrote:
> --> > Hi again,
> --> > 
> --> >    To give credit where credit is due...
> --> > 
> --> >    This little script (now modified) came from Kirk...
> --> > 
> --> >    This is how I get speakup to talk after logging in.  
> --> > 
> --> >    First I must run this script,  as root:
> --> > /* start of script */
> --> > #!/bin/bash
> --> > 
> --> > systemctl stop espeakup
> --> > /usr/bin/chown terry:terry /dev/softsynth*
> --> > /usr/bin/chmod 1777 /run
> --> > /* end of script */
> --> > 
> --> > 
> --> > Then logged in as myself, I run espeakup as an application.
> --> > /usr/bin/espeakup
> --> > 
> --> > 	From here on speakup talks normally on all tty's including the login prompts.
> --> > 
> --> > 	This is good, but not completely satisfactory, The goal is to have speakup talking before loggin in, ideally from power-on.
> --> > 
> --> > 	Thanks again for any suggestions/help ,
> --> > 
> --> > 	--terry
> --> >  
> --> > -- 
> --> > Name: Terry D. Cudney
> --> > Telephone: 289-438-6828
> --> > E-mail: terry@cudneys.ca
> --> >  
> --> > 
> --> 
> --> -- 
> --> web site: http://www.gregn.net
> --> gpg public key: http://www.gregn.net/pubkey.asc
> --> 
> --> --
> --> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> --> 
> 
> -- 
> Name: Terry D. Cudney
> Telephone: 289-438-6828
> E-mail: terry@cudneys.ca
>  
> 

