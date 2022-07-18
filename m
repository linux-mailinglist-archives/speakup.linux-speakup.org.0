Return-Path: <speakup+bounces-489-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7B371578685
	for <lists+speakup@lfdr.de>; Mon, 18 Jul 2022 17:41:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1658158877;
	bh=42CBt7ZOxT0iFemd3gMZ+I2Jk5EqPKgIN3wJ9Tld698=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=yPpj7pz623YIvb9AVVPzUg4KEPIHM/wWPKkNGYy42IJ2YLXa8ok49Br4B8QzJXVN/
	 pA12Sr1B5w8ywxF6WLDJJ8VfSdeO5fD1J1LlKPwLWXswlH8zVTk53pqG2oMjl80R2N
	 DghKtLnlz0x0jcOMYc7mMqFiu94byoAhVM5lWuLE=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A2485380A7F; Mon, 18 Jul 2022 11:41:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1658158877;
	bh=42CBt7ZOxT0iFemd3gMZ+I2Jk5EqPKgIN3wJ9Tld698=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=yPpj7pz623YIvb9AVVPzUg4KEPIHM/wWPKkNGYy42IJ2YLXa8ok49Br4B8QzJXVN/
	 pA12Sr1B5w8ywxF6WLDJJ8VfSdeO5fD1J1LlKPwLWXswlH8zVTk53pqG2oMjl80R2N
	 DghKtLnlz0x0jcOMYc7mMqFiu94byoAhVM5lWuLE=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8C774380A3B
	for <lists+speakup@lfdr.de>; Mon, 18 Jul 2022 11:41:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1658158870;
	bh=42CBt7ZOxT0iFemd3gMZ+I2Jk5EqPKgIN3wJ9Tld698=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=UanrsyYwcqet4og8u7Ktp+ay5Tr2bFww92hfRvMILsaTt/ncAPZbq9aM+BunHyQMi
	 k5qzV7wWvnDrdIaZ8b+HPAOyPtEurChbhUOgTCZqpNxWurV8dQuU2lEPqVF8J10TMM
	 LsRhCIpqyTIGOLneRnjXuAvNy+fjzqD1//gcenpo=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 89CA9380A13; Mon, 18 Jul 2022 11:41:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1658158868;
	bh=42CBt7ZOxT0iFemd3gMZ+I2Jk5EqPKgIN3wJ9Tld698=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=l4eSLSH+d+ZpYWDqtsWSjr4f8L0ypkGjMn9SOhl7UpwihQ2PsdUWbAJFcIGL9/jHM
	 b2Rvz4hRh37fQEAg1Rf8/AbbkBR+n4YfhNVs05wNKH/ezSgjySX/+vhPb7TVY4m/lT
	 GViAykblhYzYdTT01MQQWpzkkcX/hJcvJVG0JXiA=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A5952380916;
	Mon, 18 Jul 2022 11:41:08 -0400 (EDT)
Date: Mon, 18 Jul 2022 11:41:08 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Karen Lewellen <klewellen@shellworld.net>, 
    Samuel Thibault <samuel.thibault@aquilenet.fr>, speakup@linux-speakup.org
Subject: Re: About no_interrupt?
In-Reply-To: <25e2d627-0639-8b2d-fc70-5936bf68f468@hubert-humphrey.com>
Message-ID: <95b61a49-83e3-69bb-7448-0f4d528fbadb@reisers.ca>
References: <20220717225255.oeguk3xrrurqjorq@begin> <70af5c96-4980-8fc1-1b41-021ece0a8341@hubert-humphrey.com> <Pine.LNX.4.64.2207172215550.620269@server2.shellworld.net> <20220718062510.rd7cwpemm4slpyd4@begin> <023d5fce-6ae9-3104-9b0f-ca4103009c85@hubert-humphrey.com>
 <Pine.LNX.4.64.2207181022550.632244@server2.shellworld.net> <25e2d627-0639-8b2d-fc70-5936bf68f468@hubert-humphrey.com>
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

It has nothing to do with speakup. I don't know anything about the
synth driver you are trying to use but to interface with speakup you
need to use either espeakup which isn't what you want or speechd-up
which is the connector between speakup and speech-dispatcher. There is
no other way I know of to link speakup to other synths. So if you are
using speech-dispatcher then it is speechd-up you need.

   Kirk

On Mon, 18 Jul 2022, Chime Hart wrote:

> Well, Karen, I've written a direct contact for Oralux, but its probably been 
> 12 days or more since he's written. My Linux expert says we need a 
> step-by-step guide to install. Another words, which components? So, I figured 
> if it were a Speakup issue, some1 who's an expert would experiement. 
> Meanwhile, eventually I may get to find out if Fenrir has similar issues? So 
> at this point I've contacted every1 I can.
> Chime
>
>

