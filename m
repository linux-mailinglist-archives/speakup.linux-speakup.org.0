Return-Path: <speakup+bounces-1397-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 72ECAB8E43F
	for <lists+speakup@lfdr.de>; Sun, 21 Sep 2025 21:36:26 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=crosslink.net header.i=cstrobel@crosslink.net header.a=rsa-sha256 header.s=zoho header.b=d8JJ8/aR;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 74CCB382C60; Sun, 21 Sep 2025 15:36:25 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 538B7382C46
	for <lists+speakup@lfdr.de>; Sun, 21 Sep 2025 15:36:25 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0F9E0382C43; Sun, 21 Sep 2025 15:36:18 -0400 (EDT)
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com [136.143.188.12])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5B311382C07
	for <speakup@linux-speakup.org>; Sun, 21 Sep 2025 15:36:16 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; t=1758483354; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=I87LRblVCos93abksOq6pzJ4UQL4HzEHZdyKvqCyUbGJSvKdw440jLZNjKAcpQ5NER/lyQZ0GV2caxVaqHZ2/PQFPi4k8eJlk/fGvFeHrqRNmKnANca7wBxq8ng/NnqpQZqxnnbzoVvinwFfNl6D9Azr4hZDwDPfWhZ00D0asGk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1758483354; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=CLIMAmPXe4UuqMuuh2TnSY5vNtIPhf119RpkqmfGkqs=; 
	b=MKuBt/dZx5MrFu6yGoNoznU/MwBTK6Lq/pf2x2ALRUiFgA1qFQ3eawv7X/+3/enTnJjy0PulJekn/PMtXEQnGRqM9qTyUf4ntOKGwTXJKvOsc8G5+NXTw7h6hcBYKza9QPmsM1vCeeE0GzvlNk8KIKNtPBStMya79BApGUOwYak=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=crosslink.net;
	spf=pass  smtp.mailfrom=cstrobel@crosslink.net;
	dmarc=pass header.from=<cstrobel@crosslink.net>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1758483354;
	s=zoho; d=crosslink.net; i=cstrobel@crosslink.net;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=CLIMAmPXe4UuqMuuh2TnSY5vNtIPhf119RpkqmfGkqs=;
	b=d8JJ8/aRJCIMA0hszrE78SLJce8honVb+5Hzfqoz/z9rndZyiRDzacdA4LxxHmN/
	96T9/OZ/K/1sF44X7EAsqskuwoPTPPBXy0n1OOge3h67NlNpyXsa+ddqCUotrGeVvR2
	De+pLyuA5vha+siLcaZwiHORcVuVF6zLZQdLW/ro=
Received: by mx.zohomail.com with SMTPS id 1758483352555902.7608859508974;
	Sun, 21 Sep 2025 12:35:52 -0700 (PDT)
Message-ID: <d7e9ebe2-9ae2-4864-9704-664ca30d0664@crosslink.net>
Date: Sun, 21 Sep 2025 15:35:50 -0400
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: speakup from boot
To: "Terry D. Cudney" <terry@cudneys.ca>
Cc: speakup@linux-speakup.org
References: <aL5U_xg372xiMOJm@cudneys.ca> <aL5dVITcCcq369vC@cudneys.ca>
 <aL9BrQYKOSsZg6NJ@gregn.net>
 <2a46280b-3f61-492b-b7a4-b7f685c41a4e@crosslink.net>
 <aM9KHbWnRzHPHDr2@cudneys.ca>
Content-Language: en-US
From: Chevelle <cstrobel@crosslink.net>
In-Reply-To: <aM9KHbWnRzHPHDr2@cudneys.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Terry, possibly you are having the issue that is being discussed on 
Debian Accessibility.  I may not have hit the issue since I upgraded 
from Bookworm to Trixie without using the installer.  I set up a test 
system and I'll see if I can figure out what the difference is.  You 
might want to join Debian Accessibility mailing list if you aren't on it 
already.
https://lists.debian.org/debian-accessibility/


On 9/20/25 8:43 PM, Terry D. Cudney wrote:
> Hi Chevelle,
>
>     With earlier installations of debian, speakup/speech was enabled from the installer and was running thereafter in the installed system.
>
>     However, in more recent versions of the installer,, at least in my current setup, when I select "speech" during the installation, the installed system has "orca" running in the gui, but no speakup in the cli tty's.
>
>     What we want to have here is orca in the gui, concurrently with speakup/espeakup/espeak-ng in the consoles.
>
>     I am able to accomplish this by manually, after loggingin on a console,  stopping the espeakup.service (systemd), modifying the /dev/softsynth ownership from root:root to terry:terry and then running espeakup as a user application.
>
>     The goal, as previously stated, is to have this all done/setup automatically from boot-time, so that we have an audible prompt before logging in on a console.
>
>     --terry
>     
>
> On Mon, Sep 08, 2025 at 05:22:37PM -0400, Chevelle wrote:
> --> On my Debian systems, Speakup does talk before login in.  I'm using
> --> espeak-ng.  I'm not sure what 'softsynth' is, or why you need to stop
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


