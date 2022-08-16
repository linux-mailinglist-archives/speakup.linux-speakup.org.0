Return-Path: <speakup+bounces-566-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BEFAE596280
	for <lists+speakup@lfdr.de>; Tue, 16 Aug 2022 20:33:17 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 642B9384815; Tue, 16 Aug 2022 14:33:17 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4FB4B3847DA
	for <lists+speakup@lfdr.de>; Tue, 16 Aug 2022 14:33:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 01E333847DF; Tue, 16 Aug 2022 14:33:12 -0400 (EDT)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D123D3847D9
	for <speakup@linux-speakup.org>; Tue, 16 Aug 2022 14:33:11 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 32BA720152;
	Tue, 16 Aug 2022 20:33:10 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7tRi_zDqDyJn; Tue, 16 Aug 2022 20:33:10 +0200 (CEST)
Received: from begin.home (lfbn-orl-1-1261-6.w86-244.abo.wanadoo.fr [86.244.81.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id EF4BF20148;
	Tue, 16 Aug 2022 20:33:09 +0200 (CEST)
Received: from samy by begin.home with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1oO1NG-00GqGt-0x;
	Tue, 16 Aug 2022 20:33:10 +0200
Date: Tue, 16 Aug 2022 20:33:10 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Nikita Travkin <nikita@trvn.ru>
Cc: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	speakup@linux-speakup.org
Subject: Re: [PATCHv4] speakup: Generate speakupmap.h automatically
Message-ID: <20220816183310.uvmcojucjdhcb4vk@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Nikita Travkin <nikita@trvn.ru>, gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org, speakup@linux-speakup.org
References: <20220612172244.il3siyq7ueqnvah5@begin>
 <20220816072843.1699317-1-nikita@trvn.ru>
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
In-Reply-To: <20220816072843.1699317-1-nikita@trvn.ru>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

Nikita Travkin, le mar. 16 août 2022 12:28:43 +0500, a ecrit:
> After that I also had some weird issues of the build system trying to
> write speakupmap.h into the source dir and not the output dir (the
> source is read only due to the tooling I use) but this seems to have
> been resolved by cleanly rebuilding the speakup dir.

Mmm, how did you get/update your source dir? The latest version of the
patchset does generate it in the build tree.

Samuel

