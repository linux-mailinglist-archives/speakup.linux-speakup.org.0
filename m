Return-Path: <speakup+bounces-1078-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 98D3E8490A3
	for <lists+speakup@lfdr.de>; Sun,  4 Feb 2024 22:24:47 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A0DC9382790; Sun,  4 Feb 2024 16:24:39 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 892D1382532
	for <lists+speakup@lfdr.de>; Sun,  4 Feb 2024 16:24:39 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 69B3D382533; Sun,  4 Feb 2024 16:24:35 -0500 (EST)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 43C54380BA6
	for <speakup@linux-speakup.org>; Sun,  4 Feb 2024 16:24:35 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id C186BA0174;
	Sun,  4 Feb 2024 22:24:30 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DRnPAcBgnrvS; Sun,  4 Feb 2024 22:24:30 +0100 (CET)
Received: from begin (aamiens-653-1-111-57.w83-192.abo.wanadoo.fr [83.192.234.57])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id A1B07A011B;
	Sun,  4 Feb 2024 22:24:30 +0100 (CET)
Received: from samy by begin with local (Exim 4.97)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1rWjyY-0000000GvGT-0gHW;
	Sun, 04 Feb 2024 22:24:30 +0100
Date: Sun, 4 Feb 2024 22:24:30 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Kirk Reiser <kirk@reisers.ca>
Cc: speakup@linux-speakup.org
Subject: Passing saychar through [Was: [PATCH] speakup: Add /dev/synthu
 device]
Message-ID: <20240204212430.5fsz2jx5l3lws3w6@begin>
References: <20240204155825.ditstifsbqndnce3@begin>
 <eacaf4db-5b1e-e42e-96aa-3c803fda9180@reisers.ca>
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
In-Reply-To: <eacaf4db-5b1e-e42e-96aa-3c803fda9180@reisers.ca>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

Kirk Reiser, le dim. 04 févr. 2024 11:07:14 -0500, a ecrit:
> Samuel: Would you possibly look into passing the characters from
> saychar and it's family through to the softsynu device?

Is this not the direct mode? As obtained with

echo 1 > /sys/accessibility/speakup/soft/direct

> There is a
> disconnect because espeakup/espeak-ng pronounces characters one way
> and the chartab look up has a different way of saying them. I believe
> passing them on is probably better although we give up the ability to
> pronounce them as we'd like to hear them.

Samuel

