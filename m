Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id BBB48183EAF
	for <lists+speakup@lfdr.de>; Fri, 13 Mar 2020 02:33:38 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 4D4594280499; Thu, 12 Mar 2020 21:33:38 -0400 (EDT)
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id A1141428047C
	for <lists+speakup@lfdr.de>; Thu, 12 Mar 2020 21:33:37 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8FAB31C7279; Thu, 12 Mar 2020 21:33:37 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 904361C728A;
	Thu, 12 Mar 2020 21:30:23 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 62EB21C2C6D; Thu, 27 Feb 2020 21:17:02 -0500 (EST)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 3A60A1C29FD
 for <speakup@linux-speakup.org>; Thu, 27 Feb 2020 21:17:00 -0500 (EST)
Received: by server2.shellworld.net (Postfix, from userid 1005)
 id 303668C049E; Fri, 28 Feb 2020 02:16:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by server2.shellworld.net (Postfix) with ESMTP id DA8FB8C0261;
 Thu, 27 Feb 2020 21:16:55 -0500 (EST)
Date: Thu, 27 Feb 2020 21:16:55 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: debian-user@lists.debian.org
Subject: [Lynx-dev] ANN: lynx2.9.0dev.5
In-Reply-To: <20200228015917.v5sg2jym3x3uzbm3@prl-debianold-64.jexium-island.net>
Message-ID: <Pine.LNX.4.64.2002272114440.6058@server2.shellworld.net>
References: <20200228015917.v5sg2jym3x3uzbm3@prl-debianold-64.jexium-island.net>
MIME-Version: 1.0
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

sharing this update for interested parties.


  The current version of lynx is 2.8.9
>
> It's available at
> 	https://lynx.invisible-island.net/
> 	ftp://ftp.invisible-island.net/lynx/
> 2.9.0 Development & patches:
> 	https://lynx.invisible-island.net/current/index.html
>
> Files:
> 	ftp://ftp.invisible-island.net/lynx/patches/lynx2.9.0dev.5.patch.gz
> 	ftp://ftp.invisible-island.net/lynx/patches/lynx2.9.0dev.5.patch.gz.asc
> 	ftp://ftp.invisible-island.net/lynx/tarballs/lynx2.9.0dev.5.tar.bz2
> 	ftp://ftp.invisible-island.net/lynx/tarballs/lynx2.9.0dev.5.tar.bz2.asc
> 	ftp://ftp.invisible-island.net/lynx/tarballs/lynx2.9.0dev.5.tar.gz
> 	ftp://ftp.invisible-island.net/lynx/tarballs/lynx2.9.0dev.5.tar.gz.asc
> 	ftp://ftp.invisible-island.net/lynx/tarballs/lynx2.9.0dev.5.zip
>
> 2020-02-27 (2.9.0dev.5)
> * fix gcc9 warning about sprintf in HTFTP.c -TD
> * workaround for MacOS clang wrapper c99 "-W" option, in configure script -TD
> * use curses_exit() from ncurses 6.2 for leak-checking -TD
> * amend workaround in 2.8.6dev.19 for "-notitle" option, fixing an off-by-one
>  display (report by Keith Bowes) -TD
> * add/adapt changes from Keith Bowes' github:
>  * updated eo.po
>  * add "-update_term_title" option
> * add "-list_decoded" option to toggle feature of "-dump" option which decodes
>  URL-encoded links in the list of "References", from change made in
>  2.8.8dev.17, for Debian #398274 (prompted by patch by Hiltjo Posthuma) -TD
> * modify HTAddXpand() to provide for the case when the command is a full
>  pathname with embedded blanks, etc., versus an expansion of an environment
>  variable containing parameters (report by Edward McGuire) -TD
> * fix typos found with codespell -TD
> * improved several configure macros, including a fix for clang
>  compiler-warnings, and library order when linking -TD
> * remove a ruler in the user's guide that was added in 2.8.3dev.10 as a
>  conversion aid (report by Edward McGuire) -TD
> * modify HTML DTD to allow <div> in <a> -KH
> * add -socks5-proxy option (Steffen Nurpmeso)
> * if --without-lss-file is used, the configured lss filename is empty and
>  should be ignored (report by Cory Krell) -TD
> * extend table/limit in parsdate.y to 2200 (report by Ian Collier) -TD
> * update eo.po, fr.po, nl.po from
>    http://translationproject.org/latest/lynx
> * update config.guess (2019-12-21), config.sub (2019-09-11)
>
> -- 
> Thomas E. Dickey <dickey@invisible-island.net>
> https://invisible-island.net
> ftp://ftp.invisible-island.net
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
