Return-Path: <speakup+bounces-282-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6970840DF08
	for <lists+speakup@lfdr.de>; Thu, 16 Sep 2021 18:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1631808303;
	bh=MTFIRDOxgFonxfURNXKRvERwT0Ne28d/77R3gWAp8q0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=blQ6V6kK7NCXh/IXy8pxoX5UojfD4LdD28azY1XC+ju931ZAt8uzoWiJEtwJN//Dg
	 clvJOK4YqmAbwNTUMC4Th7XGBRJOjCdSJeGoX5gtzMqUcAPiZYZar/2ObQGbK+330c
	 T9UWZLkF9vjLrGsM7txvtWjFaLnMptAGi/jMQcic=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 24DD63811E4; Thu, 16 Sep 2021 12:05:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1631808303;
	bh=MTFIRDOxgFonxfURNXKRvERwT0Ne28d/77R3gWAp8q0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=blQ6V6kK7NCXh/IXy8pxoX5UojfD4LdD28azY1XC+ju931ZAt8uzoWiJEtwJN//Dg
	 clvJOK4YqmAbwNTUMC4Th7XGBRJOjCdSJeGoX5gtzMqUcAPiZYZar/2ObQGbK+330c
	 T9UWZLkF9vjLrGsM7txvtWjFaLnMptAGi/jMQcic=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 12F5438091D
	for <lists+speakup@lfdr.de>; Thu, 16 Sep 2021 12:05:03 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1631808298;
	bh=MTFIRDOxgFonxfURNXKRvERwT0Ne28d/77R3gWAp8q0=;
	h=Date:From:To:Subject:From;
	b=FWckp4/G4S+2P55Wre+q0AxlXcl381kVpE1LGUynQ/RiV1tFOFEbS02ujZz4C4t6z
	 ukSvqNvpcwnVdKxhawILhbG99teOi8XkL1XKLXCH36dM6jOAcMwKyRbwOpv71T+VvJ
	 1q/BByyzxWEuLHjY4omu39tF1TE+O3LVpKnNUInY=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A19CE380E55; Thu, 16 Sep 2021 12:04:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1631808298;
	bh=MTFIRDOxgFonxfURNXKRvERwT0Ne28d/77R3gWAp8q0=;
	h=Date:From:To:Subject:From;
	b=FWckp4/G4S+2P55Wre+q0AxlXcl381kVpE1LGUynQ/RiV1tFOFEbS02ujZz4C4t6z
	 ukSvqNvpcwnVdKxhawILhbG99teOi8XkL1XKLXCH36dM6jOAcMwKyRbwOpv71T+VvJ
	 1q/BByyzxWEuLHjY4omu39tF1TE+O3LVpKnNUInY=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 98ECC38091D
	for <speakup@linux-speakup.org>; Thu, 16 Sep 2021 12:04:58 -0400 (EDT)
Date: Thu, 16 Sep 2021 12:04:58 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: Broken espeakup on debian sid
Message-ID: <74614290-2cb8-c5a7-91e9-e639a673464a@reisers.ca>
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

Hi folks: Does anyone have espeakup running on debian sid with
libasound2 1.2.5? After I upgraded a few days ago I lost my speech
output. I have built espeakup and espeak-ng from the current repo on
them with no joy either.

Curious minds and all that type thing.

   Kirk


