Return-Path: <speakup+bounces-1288-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 122C0AAED00
	for <lists+speakup@lfdr.de>; Wed,  7 May 2025 22:24:41 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=HwapXmqk;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CB3F638298A; Wed, 07 May 2025 16:24:37 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AB50838298A
	for <lists+speakup@lfdr.de>; Wed, 07 May 2025 16:24:37 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BECFB38298D; Wed, 07 May 2025 16:24:30 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 55A09382163
	for <speakup@linux-speakup.org>; Wed, 07 May 2025 16:24:30 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Zt6Dp6pFQz18HY
	for <speakup@linux-speakup.org>; Wed,  7 May 2025 16:24:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1746649466; bh=fjNknnFnkzC9U7HcfyAU/E3Fr9HXXPnNS5j1KR29f4w=;
	h=Date:From:To:Subject;
	b=HwapXmqkrV2jVTGkxhlJv8YLoN1XnHejeEfchAWho6SAJXeJWH8hq2oX0jeU/Kbbh
	 16hm6CyDPOhOTBzDEJg+41wFIWeSk6z1tzGbjvt9Ks0MP3O9fc0ZCjuuRy2yA+8h7V
	 9AtnvpBoOkGyOsoGg6CJwNNSr4A/9IP+ARpABYH4=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Zt6Dp6Yjczcbd; Wed,  7 May 2025 16:24:26 -0400 (EDT)
Date: Wed, 7 May 2025 16:24:26 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: pipe-viewer for youtube
Message-ID: <aBvBerA_sTfcYFKX@panix.com>
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
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

In the configuration file for pipe-viewer subscription files are specified.  
The man page and pipe-viewer --tricks makes no mention of this and fails to 
describe how to subscribe in pipe-viewer to a playing channel.  For those that 
have no clue what I'm writing about, pipe-viewer once installed is a youtube 
video player and other video services player that can be run from the command 
line and it doesn't show youtube ads when playing either.
I don't have the developer's email address or I'd ask him how to do this and 
perhaps would have posted his technique for doing this using pipe-viewer here.


