Return-Path: <speakup+bounces-1463-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3808AC29607
	for <lists+speakup@lfdr.de>; Sun, 02 Nov 2025 20:51:14 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 300EC38203A; Sun, 02 Nov 2025 14:45:19 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1C692381959
	for <lists+speakup@lfdr.de>; Sun, 02 Nov 2025 14:45:19 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5A7E638195D; Sun, 02 Nov 2025 14:45:15 -0500 (EST)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2C49A3818A3
	for <speakup@linux-speakup.org>; Sun, 02 Nov 2025 14:45:15 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 555A4A0406;
	Sun,  2 Nov 2025 20:45:04 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0G8CzkywEfLj; Sun,  2 Nov 2025 20:45:04 +0100 (CET)
Received: from end (aamiens-653-1-40-48.w83-192.abo.wanadoo.fr [83.192.199.48])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id DD4F3A03E2;
	Sun,  2 Nov 2025 20:45:03 +0100 (CET)
Received: from samy by end with local (Exim 4.98.2)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1vFe0d-00000007maZ-1Xev;
	Sun, 02 Nov 2025 20:45:03 +0100
Date: Sun, 2 Nov 2025 20:45:03 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Aaron Chantrill <aaron.chantrill@dottywood.org>
Cc: speakup@linux-speakup.org, speechd-discuss@nongnu.org
Subject: Re: Missing systemd unit for speechd-up
Message-ID: <aQe0v4ioyZwsAbAZ@end>
References: <aQNoUG17wcNx7AiS@begin>
 <be44fcdd-158e-41b5-92eb-c55519b81b1e@dottywood.org>
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
In-Reply-To: <be44fcdd-158e-41b5-92eb-c55519b81b1e@dottywood.org>
Organization: I am not organized
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

Aaron Chantrill, le dim. 02 nov. 2025 14:07:28 -0500, a ecrit:
> Hey Samuel, I'm happy to work on this

Thanks!

> if the issue is still available.

Yes, it is.

> I definitely rely on speechd-up. Can you provide a link to the
> repository I should be looking at?

It is on:

https://github.com/williamh/speechd-up

Samuel

