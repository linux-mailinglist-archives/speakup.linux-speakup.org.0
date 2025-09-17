Return-Path: <speakup+bounces-1363-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 497E9B819B5
	for <lists+speakup@lfdr.de>; Wed, 17 Sep 2025 21:26:10 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=Aftxxizi;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A0396382732; Wed, 17 Sep 2025 15:26:09 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 806F0382224
	for <lists+speakup@lfdr.de>; Wed, 17 Sep 2025 15:26:09 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4E1A838218D; Wed, 17 Sep 2025 15:26:02 -0400 (EDT)
Received: from out-183.mta1.migadu.com (out-183.mta1.migadu.com [95.215.58.183])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 01DA13820D1
	for <speakup@linux-speakup.org>; Wed, 17 Sep 2025 15:26:00 -0400 (EDT)
Date: Thu, 18 Sep 2025 05:25:31 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1758137158;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0hkYOxjxOSiIMmTXAzigRQZVu46DvAVRR+9T+R/ef0Q=;
	b=AftxxiziPt7dHIRaF5XqCZbnrWBvv37aO/vfimrVpVPvfQndUWXWXNDf+azBnHhklyonw5
	u76ld1NTsCxpI6gvgoPcVpI/Eov6g+YnG2q67NdfQBk3VCpKldsZr8YyI3kFreRhFShnry
	jgSGYUKurZ2amECEJKcmTO2BZWnf1F/oIUyr1uv0N7Lb1TTi2YwpbqN5P+817iw26wxDLY
	dnK7Soa+G8Kok7pdrm2J0i7XJ621TYoukNb4vZwSi3evrqURZrNErrIo93NA66aToJrc1c
	wc/eGT5aPUrBGrHwYu85bCPsnEzlK6REgrXQtnJr6YOBfuUHx9ZgYo8Yhg8zZQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Chime Hart <chime@hubert-humphrey.com>
Cc: Karen Lewellen <klewellen@shellworld.net>,
	Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
	speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
Message-ID: <aMsLKxJrxsSaByQA@titan>
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan>
 <45100fe1-7400-688a-c7fc-7eae1f81ef2b@hubert-humphrey.com>
 <aMsF4T_1FAbaFEHz@titan>
 <04cf9485-9346-d60c-8382-c0f340d5fea5@hubert-humphrey.com>
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
In-Reply-To: <04cf9485-9346-d60c-8382-c0f340d5fea5@hubert-humphrey.com>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi there,

A DecTalk USB sounds cool. I don't have any experiments to run. Right now.

DOSemu does those same things as DOSBox but integrates better in Linux,
especially with the terminal screen readers.

Jookia.

On Wed, Sep 17, 2025 at 12:20:11PM -0700, Chime Hart wrote:
> Hi Jukia: Well, as I lost alot of files-and-directories several years ago, 
> some1 was kind enough to send me Vocal-Eyes. Your plans sound quite 
> interesting. I have an outboard DecTalk USB. Obviously, if there are 
> experiments you want me to run, lets tackle that off-list. So are you saying 
> DOSemu won't do those same things as dos box? I still say dos e m u is much 
> more friendly in Linux with a screen-reader. Thanks in advance
> Chime

