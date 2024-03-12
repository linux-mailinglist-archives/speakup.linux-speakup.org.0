Return-Path: <speakup+bounces-1089-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5B48D879F0F
	for <lists+speakup@lfdr.de>; Tue, 12 Mar 2024 23:43:07 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CE6E6382664; Tue, 12 Mar 2024 18:43:04 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B904B38251C
	for <lists+speakup@lfdr.de>; Tue, 12 Mar 2024 18:43:04 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A8619382520; Tue, 12 Mar 2024 18:43:00 -0400 (EDT)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8317D38207A
	for <speakup@linux-speakup.org>; Tue, 12 Mar 2024 18:43:00 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 91E88A02D1
	for <speakup@linux-speakup.org>; Tue, 12 Mar 2024 23:42:55 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dPvjqvnDKIW9 for <speakup@linux-speakup.org>;
	Tue, 12 Mar 2024 23:42:55 +0100 (CET)
Received: from begin.home (aamiens-653-1-111-57.w83-192.abo.wanadoo.fr [83.192.234.57])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 7C370A02C0
	for <speakup@linux-speakup.org>; Tue, 12 Mar 2024 23:42:55 +0100 (CET)
Received: from samy by begin.home with local (Exim 4.97)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1rkApi-0000000GJff-3tFZ
	for speakup@linux-speakup.org;
	Tue, 12 Mar 2024 23:42:54 +0100
Date: Tue, 12 Mar 2024 23:42:54 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: speakup@linux-speakup.org
Subject: UTF-8 encoding of i18n files?
Message-ID: <20240312224254.umw3ezrolerdu4yf@begin>
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
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

i18n files are currently encoded in latin1 (aka iso-8859-1), which poses
problem for various languages whose characters cannot be encoded that
way.  We could duplicate the i18n entries, one in latin1 and one in
utf-8, but it will probably be much simpler to just switch the i18n
files to utf-8 and be done? Would anybody be against this?

(for english that changes nothing)

Samuel

