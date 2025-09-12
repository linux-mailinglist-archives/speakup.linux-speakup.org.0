Return-Path: <speakup+bounces-1342-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 715C6B551DC
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 16:38:55 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 96157382C57; Fri, 12 Sep 2025 10:38:54 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 817D9382C55
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 10:38:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BB558382BBA; Fri, 12 Sep 2025 10:38:50 -0400 (EDT)
Received: from nbsmtp1.nfbcal.org (nbsmtp1.nfbcal.org [45.79.226.29])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 81EFC382BAE
	for <speakup@linux-speakup.org>; Fri, 12 Sep 2025 10:38:50 -0400 (EDT)
Received: from nfbcal.org ([199.4.218.125])
	by nbsmtp1.nfbcal.org (8.15.2/8.14.1-NFBNETBSD) with ESMTPS id 58CEcigQ003692
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=FAIL);
	Fri, 12 Sep 2025 07:38:44 -0700 (PDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.103.1 at nbsmtp1.nfbcal.org
Received: from nfbcal.org (localhost [127.0.0.1])
	by nfbcal.org (8.18.1/8.15.2-NFBNETBSD) with ESMTPS id 58CEcaPF025845
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Fri, 12 Sep 2025 07:38:36 -0700 (PDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.103.10 at lothlorien.nfbcal.org
Received: (from buhrow@localhost)
	by nfbcal.org (8.18.1/8.12.11) id 58CEcaRB012655;
	Fri, 12 Sep 2025 07:38:36 -0700 (PDT)
Message-Id: <202509121438.58CEcaRB012655@nfbcal.org>
From: Brian Buhrow <buhrow@nfbcal.org>
Date: Fri, 12 Sep 2025 07:38:36 -0700
In-Reply-To: <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
To: Chevelle <cstrobel@crosslink.net>, speakup@linux-speakup.org
Subject: Re: "your browser is not supported anymore" both lynx and elinks, what now?
Cc: buhrow@nfbcal.org
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.4.3 (nbsmtp1.nfbcal.org [45.79.226.29]); Fri, 12 Sep 2025 07:38:44 -0700 (PDT)
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.4 (nfbcal.org [0.0.0.0]); Fri, 12 Sep 2025 07:38:37 -0700 (PDT)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

	Hello.  Some months ago, I looked into using https://lite.duckduckgo.com
instead of Google as a search engine.  This was after Google began requiring Javascript to
submit search queries in the US earlier this year.  I found it didn't work because in order to
perform a search, I had to get through a capcha which included a bunch of images which, not
surprisingly using lynx, were all titled [image].  As far as I could tell, there was no audio
alternative.  To make matters worse, by default, Lynx doesn't store cookies to nonvolatile
storage, so every time one restarts lynx, one has to get new cookies and work through the
capcha again.  There is supposed to be a way to get lynx to save cookies to a cookie file, but
I've never been able to get it to work.

-thanks
-Brian


