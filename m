Return-Path: <speakup+bounces-1392-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A1DAFB8D29D
	for <lists+speakup@lfdr.de>; Sun, 21 Sep 2025 02:06:08 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=ij16wbqD;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 21DBF382C50; Sat, 20 Sep 2025 20:06:08 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0188C382BB4
	for <lists+speakup@lfdr.de>; Sat, 20 Sep 2025 20:06:08 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B9C29382BA1; Sat, 20 Sep 2025 20:06:00 -0400 (EDT)
Received: from out-170.mta0.migadu.com (out-170.mta0.migadu.com [91.218.175.170])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B6D09382B98
	for <speakup@linux-speakup.org>; Sat, 20 Sep 2025 20:05:58 -0400 (EDT)
Date: Sun, 21 Sep 2025 10:01:43 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1758413136;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UmAl+qqOaVAdgIwsSaaFL17uEQXWBLHw5ipVvAw/zZw=;
	b=ij16wbqDAQm9narauKpXNWGdbtBOXYG1hEmhBNQgiPUrFfbTtXXNH0rsI5E4qAmqdizffc
	SNPWGAv990C0ryypKigIZjRvWlSN/uvWAA74+NZDjLkwaqQZWqPLZ7rG4Xq/U+elVdeIJa
	KBczbmxK9p6/Qw+VlDi6UK49st6dRXG6aeBkQl8K/lDhnE57e+dV/Cp6pbezvu0SoRtyji
	3WA3S9jmDlZS4e0mKJ3ROrAB5a53kzi+vkw6Ll0f4sH2CO4yYRBTxsns+tZKjDFu7zsWc4
	ULs3RXJUlB1YCl7RmUsjDwiHnM13zN9x6RFtU2PgU84UrQ83iTS6LOD+6KQmww==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: "Terry D. Cudney" <terry@cudneys.ca>
Cc: Gregory Nowak <greg@gregn.net>, speakup@linux-speakup.org
Subject: Re: speakup from boot
Message-ID: <aM9AZ_rEDQqzBEh3@titan>
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
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi there,

I wrote this: https://www.jookia.org/wiki/System-wide_speakup

Jookia.

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

