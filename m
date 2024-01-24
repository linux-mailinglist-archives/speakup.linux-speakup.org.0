Return-Path: <speakup+bounces-1067-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6199983ADEC
	for <lists+speakup@lfdr.de>; Wed, 24 Jan 2024 17:04:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1706112249;
	bh=OjdZjYfkgsYgxaW/E8Ucc5+N0MM3e0kKQ2JxAeNr86A=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=qvDD6onIkZMCuaaxNve0dMB9HArXlfauy57hM3D4PGFLz7Qrn0bHqnjTSH/grwP/W
	 9/YdX/PLPr067JpL7eEaOOHAMH/jbPih9WsMfmidwPoBs9QyV6oZX/Qy+7aCoVoN9Q
	 4x/Rx3d9XEppL31HrSwtZ6WQr3UfoyjjMrz8aXHY=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 845D3382790; Wed, 24 Jan 2024 11:04:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1706112249;
	bh=OjdZjYfkgsYgxaW/E8Ucc5+N0MM3e0kKQ2JxAeNr86A=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=qvDD6onIkZMCuaaxNve0dMB9HArXlfauy57hM3D4PGFLz7Qrn0bHqnjTSH/grwP/W
	 9/YdX/PLPr067JpL7eEaOOHAMH/jbPih9WsMfmidwPoBs9QyV6oZX/Qy+7aCoVoN9Q
	 4x/Rx3d9XEppL31HrSwtZ6WQr3UfoyjjMrz8aXHY=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 611CC38273B
	for <lists+speakup@lfdr.de>; Wed, 24 Jan 2024 11:04:09 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1706112241;
	bh=OjdZjYfkgsYgxaW/E8Ucc5+N0MM3e0kKQ2JxAeNr86A=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=jM4X8298BvCR32iZA+mgdgUSc6Vy9vlT8r4glQj/QTkCFQCZubbmy7B561xzcFj7T
	 Ud19xTeJjTjHb47AjqVIG7TWpEGFf8UlI8X9X4LUnABUskXioF5MlO2ToLWDT74tZM
	 eOMScBFzT+bLwYjusVU//yPE8ta7zQYJXk0Q2AT0=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C39A238273B; Wed, 24 Jan 2024 11:04:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1706112239;
	bh=OjdZjYfkgsYgxaW/E8Ucc5+N0MM3e0kKQ2JxAeNr86A=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=SP4lavOdLtvuhBTCKOzI3cyaRVWm2lxxlrRsgawM5hqcLV30VVI+jstILwhVfueYQ
	 9F/7KC/VFurE1wjzIMBXY6PRGUT2u/X6fckYb8cPOE2Pj9qPT7iA0t025k/KEV/sPL
	 uLSrlN5nrmBTvXlSkaJA4TwPLB3z9xVKyMpAwLms=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E39DB3820B5;
	Wed, 24 Jan 2024 11:03:59 -0500 (EST)
Date: Wed, 24 Jan 2024 11:03:59 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: kperry@blinksoft.com
cc: speakup@linux-speakup.org
Subject: RE: AI silliness
In-Reply-To: <000e01da4ebf$9124f790$b36ee6b0$@blinksoft.com>
Message-ID: <8123721c-9a44-a753-ffd8-867b6d920f8c@reisers.ca>
References: <f51e97b7-fe05-b14d-c929-e51c66278563@reisers.ca> <000e01da4ebf$9124f790$b36ee6b0$@blinksoft.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well, it probably won't be one of us. We're just a bunch of hackers
playing with LLMs. As for a cross platform screen reader, that isn't
something we've even considered outside of talking about the
possibility. Our first goal is to take over the world. The rest of it
is simple.

   Kirk


On Wed, 24 Jan 2024, kperry@blinksoft.com wrote:

>
>
> My question is will you guys be the ones to finally break the log jam and do
> something different with a screen reader using the current CNN's, RNN's, and
> CRNN's I think we can finally start moving towards a cross platform AI
> Accessibility agent.  I know Jaws is stuck in their ways.  And NVDA is
> drifting.  Maybe it will take some one from in left field to change the
> world.
>
> -----Original Message-----
> From: Kirk Reiser <kirk@reisers.ca>
> Sent: Tuesday, January 23, 2024 2:31 PM
> To: speakup@linux-speakup.org
> Subject: AI silliness
>
> Hello everyone: A few of us have been playing around with large language
> models of various ilks over the past few days and set one up on the speakup
> irc channel #speakup on irc.oftc.net:6697. it is named alpaca-ai and you can
> address it directly on the channel or with /msg to ask it anything you like.
> We are currently using the mistral 7b instruct model but are playing with a
> half dozen or so other models as well. We are also working on a image
> explanation version which we haven't decided the best way to access yet. So
> if you've had the urge to play around with llms please join the channel and
> have fun.
>
>   Kirk
>
>

