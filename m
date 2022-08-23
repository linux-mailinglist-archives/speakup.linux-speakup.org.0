Return-Path: <speakup+bounces-605-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 466CA59EEFF
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 00:25:32 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A953A3819AF; Tue, 23 Aug 2022 18:25:31 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9A8D53847B6
	for <lists+speakup@lfdr.de>; Tue, 23 Aug 2022 18:25:29 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 90F8E3809BB; Tue, 23 Aug 2022 18:25:24 -0400 (EDT)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A27083808C7
	for <speakup@linux-speakup.org>; Tue, 23 Aug 2022 18:25:23 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 49B192012F;
	Wed, 24 Aug 2022 00:25:15 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dP-iYUdJ1cab; Wed, 24 Aug 2022 00:25:15 +0200 (CEST)
Received: from begin.home (lfbn-bor-1-376-208.w109-215.abo.wanadoo.fr [109.215.91.208])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 349512011A;
	Wed, 24 Aug 2022 00:25:15 +0200 (CEST)
Received: from samy by begin.home with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1oQcKg-00GY23-2U;
	Wed, 24 Aug 2022 00:25:14 +0200
Message-ID: <20220823222501.483597563@ens-lyon.org>
User-Agent: quilt/0.66
Date: Wed, 24 Aug 2022 00:25:01 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org,
 speakup@linux-speakup.org
Subject: [patch 0/2] [patch 0/2] speakup: Expose punctuation level to software speech
        synthesis
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

This update to speakup makes software speech better tune their
punctuation level according to the speakup situation.

Samuel

