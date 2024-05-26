Return-Path: <speakup+bounces-1122-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A8E0F8CF416
	for <lists+speakup@lfdr.de>; Sun, 26 May 2024 13:32:21 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DF111382837; Sun, 26 May 2024 07:32:20 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CE01B382710
	for <lists+speakup@lfdr.de>; Sun, 26 May 2024 07:32:20 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1F858382713; Sun, 26 May 2024 07:32:17 -0400 (EDT)
Received: from out.packetderm.com (out.packetderm.com [173.166.91.13])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E62F6382707
	for <speakup@linux-speakup.org>; Sun, 26 May 2024 07:32:16 -0400 (EDT)
Received: from localhost (out.packetderm.com[173.166.91.13])
        by smtp (5.7.4/5.7.4) with ESMTPSA id 44QBWEGM067113
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
        for <speakup@linux-speakup.org>; Sun, 26 May 2024 07:32:15 -0400 (EDT)
        (envelope-from speakup@clul.router5.com)
Message-ID: <MTAwMDAzNC5jbHVs.1716723135@quikprotect>
Date: Sun, 26 May 2024 08:32:06 -0300
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Subject: Re: gentoo dracut puzzle
Content-Language: pt-BR
To: speakup@linux-speakup.org
References: <a65a8a6f-4230-3bd9-153c-8edef21e74da@panix.com>
 <MTAwMDA0MS5jbHVs.1716645692@quikprotect>
 <91bea563-a99b-e67e-5b2b-94d8b918be3d@panix.com>
From: Cleverson Casarin Uliana <speakup@clul.router5.com>
In-Reply-To: <91bea563-a99b-e67e-5b2b-94d8b918be3d@panix.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi, by reading the script you wrote to install Gentoo, I notice you 
created /boot inside /mnt. You should create it inside /mnt/gentoo 
instead, since it is in /mnt/gentoo that you are installing the System.

Best,
Cleverson

