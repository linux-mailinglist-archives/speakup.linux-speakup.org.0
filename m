Return-Path: <speakup+bounces-1443-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 03AF5BEF642
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 08:05:18 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=Xh4U2GNr;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 74B3D382A30; Mon, 20 Oct 2025 02:05:15 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 53683382984
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 02:05:15 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F292438298A; Mon, 20 Oct 2025 02:05:07 -0400 (EDT)
Received: from out-171.mta1.migadu.com (out-171.mta1.migadu.com [95.215.58.171])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F2784381968
	for <speakup@linux-speakup.org>; Mon, 20 Oct 2025 02:05:04 -0400 (EDT)
Date: Mon, 20 Oct 2025 17:04:37 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1760940299;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=xWZIVlPAfxUPLf9MCXCU49bfTdqTr8n5EoMrHC6vvDs=;
	b=Xh4U2GNrLz77wTZf7JYT0SP9chX89HEZiW3yRTdz5rddEIWt9tAom6d9z9oyjzUkl0OTPw
	9h9Ck+tD0gLFCwMJImGgk6ug6TV5S5+LdNYWtGK2emFfjOXrRxhw/74oQOBII5uvYHlKSs
	yMYg1L3yXcY5QJqI6UowoRzvUdLeE9AVY+4sv34GhCWPp1haYmhruwG7ZWQVZCQuzsjAps
	CNn3QoaAGkh+9wQOC1eOaRU0F8kBeWQUkDAl1zcBAVIfA/tX6b9Yij/DOm01P7t6rpQGCv
	zTMohS7Ef6MSv+pBvY8lefxw1TgjMvsXNahhT4psI7+SJQPE9sDPK+X5/cOFtw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: K0LNY ?? <glenn@ervin.email>
Cc: speakup@linux-speakup.org,
	Cleverson Casarin Uliana <clul+speakup@posteo.com.br>
Subject: Re: Switching To Voxin
Message-ID: <aPXQ9QwZm13ehn_s@titan>
References: <021401dc413d$e3e246a0$01ffa8c0@nucwin10>
 <36b36e62-fecb-4bc9-8302-15dbe4f3b0fc@slint.fr>
 <bf1f95b5-63d5-4474-8f8e-888df7884bfb@posteo.com.br>
 <0b3101dc4183$1346cac0$01ffa8c0@nucwin10>
 <aPXKG2Rjkt8s1UNV@titan>
 <0b3f01dc4187$4ee149d0$01ffa8c0@nucwin10>
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
In-Reply-To: <0b3f01dc4187$4ee149d0$01ffa8c0@nucwin10>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Have you tried contacting the Voxin developers (the people you bought the software from?)

On Mon, Oct 20, 2025 at 01:03:49AM -0500, K0LNY ?? wrote:
> I am sure that a few years back, I had espeakup working with voxin.
> But at any rate, I can't make sense of this git hub page.
> I just go around and around looking for something I can download and run to 
> install voxinup and there's nothing.
> It mentions a build.sh file, but I can't find that.
> In the git clone I did, there is just files to run jupiter and test , but 
> nothing there.
> I hope if voxinup is the only option, that someone can point me to something 
> I can use.
> Thanks.
> 
> Glenn
> ----- Original Message ----- 
> From: "Jookia" <contact@jookia.org>
> To: "K0LNY ??" <glenn@ervin.email>
> Cc: <speakup@linux-speakup.org>; "Cleverson Casarin Uliana" 
> <clul+speakup@posteo.com.br>
> Sent: Monday, October 20, 2025 12:35 AM
> Subject: Re: Switching To Voxin
> 
> 
> You can't use espeakup with voxin, you have to use the programs provided by 
> the
> voxin developers. In this case voxinup.
> 
> On Mon, Oct 20, 2025 at 12:33:27AM -0500, K0LNY ?? wrote:
> > I've been looking on-line, and still can't get espeakup to use Voxin.
> > Voxin works with spd-say, and with voxin-say.
> > But espeakup is silent.
> > I tried:
> > espeakup --default-voice=voxin
> > and it did not like that until I used sudo with it.
> > But that didn't fix the silence.
> > Does anyone know where I can edit a conf file?
> > I've edited /etc/default/espeakup to read default synth=voxin
> > I don't know where else to look.
> > Thanks.
> >
> > Glenn
> > ----- Original Message ----- 
> > From: "Cleverson Casarin Uliana" <clul+speakup@posteo.com.br>
> > To: <speakup@linux-speakup.org>
> > Sent: Sunday, October 19, 2025 4:39 PM
> > Subject: Re: Switching To Voxin
> >
> >
> > Hi, besides speechd-up and Fenrir, I believe Voxinup, developed by
> > Oralux, still works.
> > https://github.com/Oralux/voxinup_install
> >
> > Cheers,
> > Cleverson
> >
> >
> > 
> 

