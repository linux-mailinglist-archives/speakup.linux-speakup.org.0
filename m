Return-Path: <speakup+bounces-755-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 947736067FE
	for <lists+speakup@lfdr.de>; Thu, 20 Oct 2022 20:12:31 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9FF6438404A; Thu, 20 Oct 2022 14:12:26 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8B73C383FB6
	for <lists+speakup@lfdr.de>; Thu, 20 Oct 2022 14:12:26 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6EA72383FB8; Thu, 20 Oct 2022 14:12:21 -0400 (EDT)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 4791B3807C8
	for <speakup@linux-speakup.org>; Thu, 20 Oct 2022 14:12:21 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 7B92F20188;
	Thu, 20 Oct 2022 20:12:17 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Olj8aDfjTgr3; Thu, 20 Oct 2022 20:12:17 +0200 (CEST)
Received: from begin (lfbn-bor-1-376-208.w109-215.abo.wanadoo.fr [109.215.91.208])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 41D1E2016E;
	Thu, 20 Oct 2022 20:12:17 +0200 (CEST)
Received: from samy by begin with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1ola1h-00CTH2-03;
	Thu, 20 Oct 2022 20:12:17 +0200
Date: Thu, 20 Oct 2022 20:12:16 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Rudy Vener <salt@panix.com>
Cc: speakup@linux-speakup.org
Subject: Re: spelling words with military letter pronunciation
Message-ID: <20221020181216.o5rpkuy5tgdcmgyo@begin>
References: <20210105173502.GA17449@panix.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210105173502.GA17449@panix.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

Rudy Vener, le mar. 05 janv. 2021 12:35:02 -0500, a ecrit:
> A feature to tap the speak word key thrice to get military spelling 
> would be a great boon to those of us who are deaf as well as blind.

As reported by Mushahid Hussain:

“
According to docs here
https://github.com/linux-speakup/speakup/blob/37fa15cffbea52e30a35113d6c1c2a69916e9711/Documentation/admin-guide/spkguide.txt#L290
key combination for military letter pronunciation is spk_key + 5.

I have tested spk_key + 5 on speakup_soft(and espeakup) and it pronounces the whole word in military letters no matter where the cursor is.
”

Does that not answer you need?

Samuel

