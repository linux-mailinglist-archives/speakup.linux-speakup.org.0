Return-Path: <speakup+bounces-1066-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3603B83998A
	for <lists+speakup@lfdr.de>; Tue, 23 Jan 2024 20:31:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1706038278;
	bh=yc4Mt7fgwUToUvSABdfSPS0bZfxYwFbW8+di8ektiY8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=lQ/ML0nUoaIxbayr1elGvdvfaPWwKfb3kTboeMqF9krpyMlkr6kpW2sPUFwLx4RhM
	 ufVFGfgTEhfdJlndVNfkSbzl7g+DRiSt/uYlmiq8dvXns+zhXdEMZVjRKE6lc0bJ2W
	 /wBRnVHaELSUbqMJ1zwLj04qzPHRtq3mhJ17nTzg=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 624B3382754; Tue, 23 Jan 2024 14:31:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1706038278;
	bh=yc4Mt7fgwUToUvSABdfSPS0bZfxYwFbW8+di8ektiY8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=lQ/ML0nUoaIxbayr1elGvdvfaPWwKfb3kTboeMqF9krpyMlkr6kpW2sPUFwLx4RhM
	 ufVFGfgTEhfdJlndVNfkSbzl7g+DRiSt/uYlmiq8dvXns+zhXdEMZVjRKE6lc0bJ2W
	 /wBRnVHaELSUbqMJ1zwLj04qzPHRtq3mhJ17nTzg=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 41C9C3820BD
	for <lists+speakup@lfdr.de>; Tue, 23 Jan 2024 14:31:18 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1706038270;
	bh=yc4Mt7fgwUToUvSABdfSPS0bZfxYwFbW8+di8ektiY8=;
	h=Date:From:To:Subject:From;
	b=ub2DQzpQEpiFXr2CNvgalFpIH9Lk13WUlEOfVzGbPLQBJ3Bsn117Ec/W7qVlERxPS
	 2FzOzanpEQ1sn2gfDqyIYCb+lJ7oXyd8D0gXzka+MLlPlgIdeOhINGBl7h/bRCFGVY
	 vFRqnXTrMbDmLdGOGTpEFUAkE1SAYxu9vh9wK/Ok=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AA7053820F6; Tue, 23 Jan 2024 14:31:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1706038270;
	bh=yc4Mt7fgwUToUvSABdfSPS0bZfxYwFbW8+di8ektiY8=;
	h=Date:From:To:Subject:From;
	b=ub2DQzpQEpiFXr2CNvgalFpIH9Lk13WUlEOfVzGbPLQBJ3Bsn117Ec/W7qVlERxPS
	 2FzOzanpEQ1sn2gfDqyIYCb+lJ7oXyd8D0gXzka+MLlPlgIdeOhINGBl7h/bRCFGVY
	 vFRqnXTrMbDmLdGOGTpEFUAkE1SAYxu9vh9wK/Ok=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 88E4C38205C
	for <speakup@linux-speakup.org>; Tue, 23 Jan 2024 14:31:10 -0500 (EST)
Date: Tue, 23 Jan 2024 14:31:10 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: AI silliness
Message-ID: <f51e97b7-fe05-b14d-c929-e51c66278563@reisers.ca>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello everyone: A few of us have been playing around with large
language models of various ilks over the past few days and set one up
on the speakup irc channel #speakup on irc.oftc.net:6697. it is named
alpaca-ai and you can address it directly on the channel or with /msg
to ask it anything you like. We are currently using the mistral 7b
instruct model but are playing with a half dozen or so other models as
well. We are also working on a image explanation version which we
haven't decided the best way to access yet. So if you've had the urge
to play around with llms please join the channel and have fun.

   Kirk


