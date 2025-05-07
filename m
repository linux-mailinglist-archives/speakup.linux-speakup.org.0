Return-Path: <speakup+bounces-1290-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C646BAAEE90
	for <lists+speakup@lfdr.de>; Thu,  8 May 2025 00:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1746656083;
	bh=bYKHmZ1PJDknuXao+QSyTrwg5pztpTBiRl29TyrtIiQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=or2HgvLEtmferu3k2ap3aBvY2LJFJPi2cgi7lhy2L3BPonrS1rJWahId5ijsoTkQH
	 P3ggnhvknw9oQuDG7khfL10C8NDMT3lU8GEP09G1gjn9K6uTVMUMIzD+Y0wbdU0C0R
	 4xjud8mf0LHOApk+E1tZieViZT9QT2qMl/K4h8z0=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CEB6E3829A6; Wed, 07 May 2025 18:14:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1746656083;
	bh=bYKHmZ1PJDknuXao+QSyTrwg5pztpTBiRl29TyrtIiQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=or2HgvLEtmferu3k2ap3aBvY2LJFJPi2cgi7lhy2L3BPonrS1rJWahId5ijsoTkQH
	 P3ggnhvknw9oQuDG7khfL10C8NDMT3lU8GEP09G1gjn9K6uTVMUMIzD+Y0wbdU0C0R
	 4xjud8mf0LHOApk+E1tZieViZT9QT2qMl/K4h8z0=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AE4863820E2
	for <lists+speakup@lfdr.de>; Wed, 07 May 2025 18:14:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1746656076;
	bh=bYKHmZ1PJDknuXao+QSyTrwg5pztpTBiRl29TyrtIiQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=twwiD5QZHfeX9IwDAdfEoVffP8AaaXV9jgQNpaUg/zplbFRDX06UqBXEijFEDKUyQ
	 j0VI5UapEGdUX6x7XifIkjPD8XX1UTOjjipA9D48cibJjwKsHaSrL/aOWBYf/8swA9
	 Qsiwf6U+SSSoIScgf+xIZPJQ6Z1IYIzgGbtscTVY=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D47EE382990; Wed, 07 May 2025 18:14:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1746656075;
	bh=bYKHmZ1PJDknuXao+QSyTrwg5pztpTBiRl29TyrtIiQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=KdT80LGNr9DDr8AGVMRcb4g2tpXsyM9Ev6Jm5aZ3Aeg+hKax6MpN0cHRnx52GfN7t
	 geGybb9U0jU3HyduuyOhNEjVvHrwuew6f+mhXG0Y4kAmoUPF8hjePcXmCIlwibdBTJ
	 52PKAEPmMGlWTStK38PrcyinQInVhdlOGNL1PgYA=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3D4A53820E2;
	Wed, 07 May 2025 18:14:35 -0400 (EDT)
Date: Wed, 7 May 2025 18:14:35 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: K0LNY ?? <glenn@ervin.email>
cc: Jude DaShiell <jdashiel@panix.com>, speakup@linux-speakup.org
Subject: Re: pipe-viewer for youtube
In-Reply-To: <02af01dbbf8f$ac227710$01ffa8c0@nucwin10>
Message-ID: <9fc18622-7982-1bbb-108e-ebd5ebd4edfd@reisers.ca>
References: <aBvBerA_sTfcYFKX@panix.com> <02af01dbbf8f$ac227710$01ffa8c0@nucwin10>
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

I don't know about pipe for the command line but there is a good
youtube playing package that goes by the name yewtube, a play on words
there. You invoke it with just yt. Still, I have not seen any mention
of subscriptions in the help menus I just use the 'user' command
regularly like 'user adam levy' to see everything he's posted and of
course the top of the list changes when he has put out a new vid. I'm
pretty sure yewtube is in the debian archive but I'm sure it's in the
pipx system, 'pipx yewtube.'

   Kirk

On Wed, 7 May 2025, K0LNY ?? wrote:

> Where do we get pipe-viewer?
> It is not in the Raspberry PI's repository.
> Thanks.
>
> Glenn
> ----- Original Message -----
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: <speakup@linux-speakup.org>
> Sent: Wednesday, May 7, 2025 3:24 PM
> Subject: pipe-viewer for youtube
>
>
> In the configuration file for pipe-viewer subscription files are specified.
> The man page and pipe-viewer --tricks makes no mention of this and fails to
> describe how to subscribe in pipe-viewer to a playing channel.  For those
> that
> have no clue what I'm writing about, pipe-viewer once installed is a youtube
> video player and other video services player that can be run from the
> command
> line and it doesn't show youtube ads when playing either.
> I don't have the developer's email address or I'd ask him how to do this and
> perhaps would have posted his technique for doing this using pipe-viewer
> here.
>
>
>

