Return-Path: <speakup+bounces-411-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CD6DA520293
	for <lists+speakup@lfdr.de>; Mon,  9 May 2022 18:37:01 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 564E2380E04; Mon,  9 May 2022 12:37:01 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4121D38099B
	for <lists+speakup@lfdr.de>; Mon,  9 May 2022 12:37:01 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F1E02380A13; Mon,  9 May 2022 12:36:55 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C96D9380930
	for <speakup@linux-speakup.org>; Mon,  9 May 2022 12:36:55 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 353B4201A5;
	Mon,  9 May 2022 18:36:54 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FnNXTAigSRHe; Mon,  9 May 2022 18:36:54 +0200 (CEST)
Received: from begin (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id C842E20108;
	Mon,  9 May 2022 18:36:53 +0200 (CEST)
Received: from samy by begin with local (Exim 4.95)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1no6NR-002Vu4-Ei;
	Mon, 09 May 2022 18:36:53 +0200
Date: Mon, 9 May 2022 18:36:53 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, speakup@linux-speakup.org
Subject: Re: [PATCHv2] speakup: Generate speakupmap.h automatically
Message-ID: <20220509163653.xl5w2zshd2nf3kmj@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
	speakup@linux-speakup.org
References: <20220430003934.fkua7vwoz6heigrp@begin>
 <20220430073321.6b4lvrrt7buzh7dp@begin>
 <YnkfeyobcOOgDGkH@kroah.com>
 <20220509140705.n3eei4r5ko6bbex4@begin>
 <Ynki154mxF+2L8WH@kroah.com>
 <20220509142642.gsi5cppgadc2gojy@begin>
 <YnlBRt1rAMPKWeYJ@kroah.com>
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
In-Reply-To: <YnlBRt1rAMPKWeYJ@kroah.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Greg KH, le lun. 09 mai 2022 18:28:54 +0200, a ecrit:
> But the build stuff still needs to get resolved :)

Sure! I was just flushing the questions :)

Samuel

