Return-Path: <speakup+bounces-1324-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 90673B49B3C
	for <lists+speakup@lfdr.de>; Mon,  8 Sep 2025 22:51:14 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=0RVWd0v8;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 05699382759; Mon, 08 Sep 2025 16:51:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D7E4F38271F
	for <lists+speakup@lfdr.de>; Mon, 08 Sep 2025 16:51:12 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 87C3138271E; Mon, 08 Sep 2025 16:51:05 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 45C98382713
	for <speakup@linux-speakup.org>; Mon, 08 Sep 2025 16:51:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1757364654; bh=aMifnEvAY9YLL7QzVWW8Gm2x+NuUukIIVnycem6L6LU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0RVWd0v8ZQp+ge3IVuZY0oOfYss1PD8zvEYSJddBi/e3y/orbAhKbWxuo4scqgw9e
	 hMf/IlZdMxHXNCGS7Diqy5I/ZPCRPJEHpG6VDTdmn7iQ0qfhTHUa5rJRrEcQ8LfNio
	 O/gy2j0kPyMrDsaRO1TvtM6fjvykkBICx9mZQYpw0FNIzeLGvmCgOo9DGfboX6tOKm
	 DH/cT9SpaPgzF0hpdYUbmwzBURzdLsxlHMY1V7E3USStPmNMCHWxoWYVEnxrhAJoYv
	 4Ombs/dQ6H4/oGRa9dhyl2i0RfGFdci5O5S0/sh0rW1JvzWcLmwH8TQoE5xKEbMcX4
	 9qnE2jhgIc+Cg==
Received: from vbox.gregn.net (unknown [172.56.84.212])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id B37411283;
	Mon,  8 Sep 2025 13:50:54 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id A4C39C0D0; Mon,  8 Sep 2025 13:50:53 -0700 (MST)
Date: Mon, 8 Sep 2025 13:50:53 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Terry D. Cudney" <terry@cudneys.ca>
Cc: speakup@linux-speakup.org
Subject: Re: speakup from boot
Message-ID: <aL9BrQYKOSsZg6NJ@gregn.net>
References: <aL5U_xg372xiMOJm@cudneys.ca>
 <aL5dVITcCcq369vC@cudneys.ca>
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
In-Reply-To: <aL5dVITcCcq369vC@cudneys.ca>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.7 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Switch to a systemd-free distro like devuan or void. Probably not the
advice you wanted.

Greg


On Mon, Sep 08, 2025 at 04:36:36AM +0000, Terry D. Cudney wrote:
> Hi again,
> 
>    To give credit where credit is due...
> 
>    This little script (now modified) came from Kirk...
> 
>    This is how I get speakup to talk after logging in.  
> 
>    First I must run this script,  as root:
> /* start of script */
> #!/bin/bash
> 
> systemctl stop espeakup
> /usr/bin/chown terry:terry /dev/softsynth*
> /usr/bin/chmod 1777 /run
> /* end of script */
> 
> 
> Then logged in as myself, I run espeakup as an application.
> /usr/bin/espeakup
> 
> 	From here on speakup talks normally on all tty's including the login prompts.
> 
> 	This is good, but not completely satisfactory, The goal is to have speakup talking before loggin in, ideally from power-on.
> 
> 	Thanks again for any suggestions/help ,
> 
> 	--terry
>  
> -- 
> Name: Terry D. Cudney
> Telephone: 289-438-6828
> E-mail: terry@cudneys.ca
>  
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

