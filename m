Return-Path: <speakup+bounces-1018-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 089AF7598F6
	for <lists+speakup@lfdr.de>; Wed, 19 Jul 2023 16:59:37 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3EA93382567; Wed, 19 Jul 2023 10:59:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 29CDB38244D
	for <lists+speakup@lfdr.de>; Wed, 19 Jul 2023 10:59:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E34DC38244D; Wed, 19 Jul 2023 10:59:29 -0400 (EDT)
Received: from nfbcal.org (ns3.NFBCAL.ORG [157.22.230.125])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 59D6A3823E1
	for <speakup@linux-speakup.org>; Wed, 19 Jul 2023 10:59:29 -0400 (EDT)
Received: from nfbcal.org (localhost [127.0.0.1])
	by nfbcal.org (8.15.2/8.14.1-NFBNETBSD) with ESMTPS id 36JExJh3006350
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 19 Jul 2023 07:59:20 -0700 (PDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at lothlorien.nfbcal.org
Received: (from buhrow@localhost)
	by nfbcal.org (8.15.2/8.12.11) id 36JExG0q016193;
	Wed, 19 Jul 2023 07:59:16 -0700 (PDT)
Message-Id: <202307191459.36JExG0q016193@nfbcal.org>
From: Brian Buhrow <buhrow@nfbcal.org>
Date: Wed, 19 Jul 2023 07:59:16 -0700
In-Reply-To: <Pine.LNX.4.64.2307190655310.1206822@users.shellworld.net>
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
To: Karen Lewellen <klewellen@shellworld.net>,
        "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: sort of ot: what causes this issue?
Cc: buhrow@nfbcal.org
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.4.3 (nfbcal.org [127.0.0.1]); Wed, 19 Jul 2023 07:59:20 -0700 (PDT)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

	hello.  I'm guessing you're hearing terminal escape sequences that are used to format the
terminal screen being sent to the synthesizer.  Another possibility is that utf-8 characters,
or some other non-ASCII characters, are being sent to the synthesizer.  Are yo using a
different terminal type than you've been using?
-thanks
-brian


