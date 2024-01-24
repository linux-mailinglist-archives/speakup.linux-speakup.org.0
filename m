Return-Path: <speakup+bounces-1068-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 499AA83AE3C
	for <lists+speakup@lfdr.de>; Wed, 24 Jan 2024 17:20:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1706113244;
	bh=J1HPsptW7X6wmsikoJZCEFTfB135+T7jrxNxoKOY4kE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=NsSUtC9ICPXEPURUYtC+krGvame6fK/X8Km4pZIsZbWHslwgY5VcYq0IxPCrH5uwL
	 TTtreMPM7w2HcvfLzGI26VwZjH+z72ENzY4hh6M0SZz31U3Iwi7QdyzfPm35uENmow
	 XXTHRULkgblEuhjgLprsaEBR5e1YOKoUSq8AXkWY=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7D14F382785; Wed, 24 Jan 2024 11:20:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1706113244;
	bh=J1HPsptW7X6wmsikoJZCEFTfB135+T7jrxNxoKOY4kE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=NsSUtC9ICPXEPURUYtC+krGvame6fK/X8Km4pZIsZbWHslwgY5VcYq0IxPCrH5uwL
	 TTtreMPM7w2HcvfLzGI26VwZjH+z72ENzY4hh6M0SZz31U3Iwi7QdyzfPm35uENmow
	 XXTHRULkgblEuhjgLprsaEBR5e1YOKoUSq8AXkWY=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5D2AF38273F
	for <lists+speakup@lfdr.de>; Wed, 24 Jan 2024 11:20:44 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1706113236;
	bh=J1HPsptW7X6wmsikoJZCEFTfB135+T7jrxNxoKOY4kE=;
	h=Date:From:To:Subject:From;
	b=b1rXw89GJC9JhI7q544vwIrAL3guUJ2YIwsjOI/zY2TPR6zO0cZsV0sqUJb3rRwBM
	 0OXw5AEAAI1y68RIjpCkdDsPfviC8QmRJAoN/f2B4hlbL5xVKEpgDiP4NoeQpXAXlE
	 MbGALJKsf4NonIDXwRgsfYYu8bfqEcGsJ3KqR1Ho=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D7AF2382744; Wed, 24 Jan 2024 11:20:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1706113236;
	bh=J1HPsptW7X6wmsikoJZCEFTfB135+T7jrxNxoKOY4kE=;
	h=Date:From:To:Subject:From;
	b=b1rXw89GJC9JhI7q544vwIrAL3guUJ2YIwsjOI/zY2TPR6zO0cZsV0sqUJb3rRwBM
	 0OXw5AEAAI1y68RIjpCkdDsPfviC8QmRJAoN/f2B4hlbL5xVKEpgDiP4NoeQpXAXlE
	 MbGALJKsf4NonIDXwRgsfYYu8bfqEcGsJ3KqR1Ho=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B6C01382737
	for <speakup@linux-speakup.org>; Wed, 24 Jan 2024 11:20:36 -0500 (EST)
Date: Wed, 24 Jan 2024 11:20:36 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: Oh! and re: AI silliness.
Message-ID: <e7101ebb-69aa-90a3-6f56-56e6df389398@reisers.ca>
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

We've just made the alpaca-ai bot have the ability to describe png and
jpg images when provided an URL. So now you can discuss family and
friends while having a coffee with the bot.


   Kirk


