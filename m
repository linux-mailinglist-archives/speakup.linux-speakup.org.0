Return-Path: <speakup+bounces-555-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E47B95935F3
	for <lists+speakup@lfdr.de>; Mon, 15 Aug 2022 20:59:10 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 809B53847CD; Mon, 15 Aug 2022 14:59:10 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6B400383777
	for <lists+speakup@lfdr.de>; Mon, 15 Aug 2022 14:59:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2CFE7383776; Mon, 15 Aug 2022 14:59:05 -0400 (EDT)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 01FBE3819AB
	for <speakup@linux-speakup.org>; Mon, 15 Aug 2022 14:59:05 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 74BF520108;
	Mon, 15 Aug 2022 20:59:02 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m0U-SS2zfprX; Mon, 15 Aug 2022 20:59:02 +0200 (CEST)
Received: from begin.home (lfbn-orl-1-1261-6.w86-244.abo.wanadoo.fr [86.244.81.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id EC26520107;
	Mon, 15 Aug 2022 20:59:01 +0200 (CEST)
Received: from samy by begin.home with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1oNfIj-007Nbw-20;
	Mon, 15 Aug 2022 20:59:01 +0200
Date: Mon, 15 Aug 2022 20:59:01 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Linux for blind general discussion <blinux-list@redhat.com>
Cc: Matt Campbell <mattcampbell@pobox.com>,
	blind_linux_users <discuss@blvuug.org>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
Message-ID: <20220815185901.dfpiwyowxvfzidhg@begin>
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>,
	Matt Campbell <mattcampbell@pobox.com>,
	blind_linux_users <discuss@blvuug.org>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com>
 <mailman.285.1660322331.10507.blinux-list@redhat.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <mailman.285.1660322331.10507.blinux-list@redhat.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Somebody wrote:
>  Is he correct that speakup default installs to a hardware synthesizer?

It is correct that by itself, speakup (i.e. the piece inside the kernel)
can only driver hardware synthesizers. To get software synthesizers
working, one need to run them in userland and plug to speakup with
espeakup or speechd-up.

For information, he does very much welcome pointers and hints, so feel
free to send him anything you believe could help him, he'll be glad to
have a look.

Samuel

