Return-Path: <speakup+bounces-1113-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DFD488B59A3
	for <lists+speakup@lfdr.de>; Mon, 29 Apr 2024 15:16:47 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B3D35C81CDA; Mon, 29 Apr 2024 09:16:43 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A0983C81C29
	for <lists+speakup@lfdr.de>; Mon, 29 Apr 2024 09:16:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 306E9C80FE5; Mon, 29 Apr 2024 09:16:39 -0400 (EDT)
Received: from out.packetderm.com (out.packetderm.com [173.166.91.13])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0D29CC80B05
	for <speakup@linux-speakup.org>; Mon, 29 Apr 2024 09:16:39 -0400 (EDT)
Received: from localhost (out.packetderm.com[173.166.91.13])
        by smtp (5.7.4/5.7.4) with ESMTPSA id 43TDGbru070267
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
        for <speakup@linux-speakup.org>; Mon, 29 Apr 2024 09:16:38 -0400 (EDT)
        (envelope-from speakup@clul.router5.com)
Message-ID: <MTAwMDAwMC5jbHVs.1714396598@quikprotect>
Date: Mon, 29 Apr 2024 10:16:30 -0300
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
From: Cleverson Casarin Uliana <speakup@clul.router5.com>
Subject: Re: speakup and gentoo
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <10acd4eb-8872-1669-0086-fb591ee6cad4@panix.com>
 <m3y19026je.wl-covici@ccs.covici.com>
 <8c2f3044-4655-7dbe-a06f-5cf5ae148126@panix.com>
Content-Language: pt-BR
In-Reply-To: <8c2f3044-4655-7dbe-a06f-5cf5ae148126@panix.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Jude, I've installed Gentoo several times, and the following commands 
related to setting up speakup, which I ran during installation, never 
failed me. Try them please:

nano /etc/modules-load.d/speakup.conf
# add the following line to this file:
speakup_soft

emerge espeakup alsa-utils
nano /etc/conf.d/alsasound
# Add the following line to this file:
SAVE_ON_STOP="yes"

rc-update add alsasound boot
rc-update add espeakup default

Cheers,
Cleverson

