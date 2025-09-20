Return-Path: <speakup+bounces-1391-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6CD10B8D29A
	for <lists+speakup@lfdr.de>; Sun, 21 Sep 2025 02:00:25 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 36052382C4A; Sat, 20 Sep 2025 20:00:24 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1F9DF3822D0
	for <lists+speakup@lfdr.de>; Sat, 20 Sep 2025 20:00:24 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6C331382B75; Sat, 20 Sep 2025 20:00:20 -0400 (EDT)
Received: from cloud (ip74-208-194-141.pbiaas.com [74.208.194.141])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5858D3822D0
	for <speakup@linux-speakup.org>; Sat, 20 Sep 2025 20:00:20 -0400 (EDT)
Received: by cloud (Postfix, from userid 1000)
	id 702E0201A0; Sat, 20 Sep 2025 23:59:49 +0000 (UTC)
Date: Sat, 20 Sep 2025 23:59:49 +0000
From: "Terry D. Cudney" <terry@cudneys.ca>
To: Gregory Nowak <greg@gregn.net>
Cc: speakup@linux-speakup.org
Subject: Re: speakup from boot
Message-ID: <aM8_9UlZj_oQ4ktW@cudneys.ca>
References: <aL5U_xg372xiMOJm@cudneys.ca>
 <aL5dVITcCcq369vC@cudneys.ca>
 <aL9BrQYKOSsZg6NJ@gregn.net>
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
In-Reply-To: <aL9BrQYKOSsZg6NJ@gregn.net>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Greg,

   Thanks for your response!

   I have tried voidlinux for a short while. It's a "whole different can of worms". I may still end up going that route, but for now I'm taunted by the idea of "vanquishing" systemd to do what I want.

   If I  cant get systemd to obey me, a "systemd-free" distro may be in the future...

   Thanks again,

   --terry
   
On Mon, Sep 08, 2025 at 01:50:53PM -0700, Gregory Nowak wrote:
--> Switch to a systemd-free distro like devuan or void. Probably not the
--> advice you wanted.
--> 
--> Greg
--> 
--> 
--> On Mon, Sep 08, 2025 at 04:36:36AM +0000, Terry D. Cudney wrote:
--> > Hi again,
--> > 
--> >    To give credit where credit is due...
--> > 
--> >    This little script (now modified) came from Kirk...
--> > 
--> >    This is how I get speakup to talk after logging in.  
--> > 
--> >    First I must run this script,  as root:
--> > /* start of script */
--> > #!/bin/bash
--> > 
--> > systemctl stop espeakup
--> > /usr/bin/chown terry:terry /dev/softsynth*
--> > /usr/bin/chmod 1777 /run
--> > /* end of script */
--> > 
--> > 
--> > Then logged in as myself, I run espeakup as an application.
--> > /usr/bin/espeakup
--> > 
--> > 	From here on speakup talks normally on all tty's including the login prompts.
--> > 
--> > 	This is good, but not completely satisfactory, The goal is to have speakup talking before loggin in, ideally from power-on.
--> > 
--> > 	Thanks again for any suggestions/help ,
--> > 
--> > 	--terry
--> >  
--> > -- 
--> > Name: Terry D. Cudney
--> > Telephone: 289-438-6828
--> > E-mail: terry@cudneys.ca
--> >  
--> > 
--> 
--> -- 
--> web site: http://www.gregn.net
--> gpg public key: http://www.gregn.net/pubkey.asc
--> 
--> --
--> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
--> 

-- 
Name: Terry D. Cudney
Telephone: 289-438-6828
E-mail: terry@cudneys.ca
 

