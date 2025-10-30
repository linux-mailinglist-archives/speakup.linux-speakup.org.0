Return-Path: <speakup+bounces-1462-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0E2A0C20422
	for <lists+speakup@lfdr.de>; Thu, 30 Oct 2025 14:35:53 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C5B9E382035; Thu, 30 Oct 2025 09:30:05 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B39483818FC
	for <lists+speakup@lfdr.de>; Thu, 30 Oct 2025 09:30:05 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0771A3818F6; Thu, 30 Oct 2025 09:30:02 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D69D738189F
	for <speakup@linux-speakup.org>; Thu, 30 Oct 2025 09:30:01 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 138E5A1E89;
	Thu, 30 Oct 2025 14:29:53 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id buKQStITBHb6; Thu, 30 Oct 2025 14:29:52 +0100 (CET)
Received: from begin (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id D24B9A1AB8;
	Thu, 30 Oct 2025 14:29:52 +0100 (CET)
Received: from samy by begin with local (Exim 4.98.2)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1vESiu-0000000DYYt-1Soh;
	Thu, 30 Oct 2025 14:29:52 +0100
Date: Thu, 30 Oct 2025 14:29:52 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: speakup@linux-speakup.org, speechd-discuss@nongnu.org
Subject: Missing systemd unit for speechd-up
Message-ID: <aQNoUG17wcNx7AiS@begin>
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
Organization: I am not organized
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

speechd-up is missing a systemd unit file. Without it, it will stop
getting autostarted on systems with recent systemd.

Contribution welcome ;)

Samuel

