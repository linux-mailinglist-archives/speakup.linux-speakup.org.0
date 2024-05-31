Return-Path: <speakup+bounces-1130-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C8B4C8D6D0E
	for <lists+speakup@lfdr.de>; Sat,  1 Jun 2024 01:57:43 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 828643828DA; Fri, 31 May 2024 19:57:42 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7032B380F58
	for <lists+speakup@lfdr.de>; Fri, 31 May 2024 19:57:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 90D513821DC; Fri, 31 May 2024 19:57:38 -0400 (EDT)
Received: from atlas.bondproducts.com (unknown [23.24.6.165])
	by befuddled.reisers.ca (Postfix) with ESMTP id 428E8380F58
	for <speakup@linux-speakup.org>; Fri, 31 May 2024 19:57:38 -0400 (EDT)
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 390174050A
	for <speakup@linux-speakup.org>; Fri, 31 May 2024 19:57:37 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 719D81000C0; Fri, 31 May 2024 19:57:36 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 71217100081
	for <speakup@linux-speakup.org>; Fri, 31 May 2024 19:57:36 -0400 (EDT)
Date: Fri, 31 May 2024 19:57:36 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject:  [Lynx-dev] ANN: lynx2.9.2
In-Reply-To: <Zlpf6RZ52lW3at4L@prl-debianold-64.jexium-island.net>
Message-ID: <Pine.LNX.4.64.2405311956210.2538433@users.shellworld.net>
References: <Zlpf6RZ52lW3at4L@prl-debianold-64.jexium-island.net>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi folks,
Current as of 31 May 2024.
Karen



On Fri, 31 May 2024, Thomas Dickey wrote:

> The current version of lynx is 2.9.2
>
> It's available at
> 	https://lynx.invisible-island.net/
> 	https://invisible-island.net/archives/lynx/
> Development & patches:
> 	https://lynx.invisible-island.net/current/index.html
>
> Files:
>  https://invisible-island.net/archives/lynx/patches/lynx2.9.2.patch.gz
>  https://invisible-island.net/archives/lynx/patches/lynx2.9.2.patch.gz.asc
>  https://invisible-island.net/archives/lynx/tarballs/lynx2.9.2.tar.bz2
>  https://invisible-island.net/archives/lynx/tarballs/lynx2.9.2.tar.bz2.asc
>  https://invisible-island.net/archives/lynx/tarballs/lynx2.9.2.tar.gz
>  https://invisible-island.net/archives/lynx/tarballs/lynx2.9.2.tar.gz.asc
>  https://invisible-island.net/archives/lynx/tarballs/lynx2.9.2.zip
>
> 2024-05-31 (2.9.2)
> * modify makefile.in install-help to only remove files, leaving existing
>  directories and symbolic links -TD
> * in POSIX environments, check paths for external programs to ensure that they
>  are executable, non-empty files -TD
> * adapt special case of gzip decompression in 2.8.9dev.12 to brotli, to handle
>  downloads from websites which support "br" (report by Rajeev V Pillai) -TD
> * updated configure macro CF_ANSI_CC_C, to reset flags on test-failure, to
>  keep options from accumulating.
> * build-fix for NetBSD and Solaris system curses libraries, removing an ifdef
>  added in 2.9.0dev.11 (report by Nelson Beebe) -TD
>
> -- 
> Thomas E. Dickey <dickey@invisible-island.net>
> https://invisible-island.net
>

