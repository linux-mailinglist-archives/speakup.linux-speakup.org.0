Return-Path: <speakup+bounces-1469-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 44779CDF4A8
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 06:32:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1766812935;
	bh=nXINjaasO90eKnX9r/aExRYw790eBHvpCBDWjq9h6VE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=HHwEV0f7OTEt40cZB01+TZRdDKqJUmR1IMCRHjlP0MLnowuzYSC6JiQvTVQ7p9Mbe
	 /fSO6Pfh88yDKjUSvheRnVVRi+t+A5ddj+IKfle52PAlerWOuni4A9Hq/Dlv1xpwA3
	 YSKtIbJaWGSlErzFFmGcFLdJoMkVmfs+q+HUCwbU=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9F9CB38157C; Sat, 27 Dec 2025 00:22:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1766812935;
	bh=nXINjaasO90eKnX9r/aExRYw790eBHvpCBDWjq9h6VE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=HHwEV0f7OTEt40cZB01+TZRdDKqJUmR1IMCRHjlP0MLnowuzYSC6JiQvTVQ7p9Mbe
	 /fSO6Pfh88yDKjUSvheRnVVRi+t+A5ddj+IKfle52PAlerWOuni4A9Hq/Dlv1xpwA3
	 YSKtIbJaWGSlErzFFmGcFLdJoMkVmfs+q+HUCwbU=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7A5E3380979
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 00:22:15 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1766812929;
	bh=nXINjaasO90eKnX9r/aExRYw790eBHvpCBDWjq9h6VE=;
	h=Date:From:To:Subject:From;
	b=yfa1cFxXNcE7ROajMF4stDf3bE9o/81B2+OV5+I9HZKEaSNtai99DE6YiECvv7SCw
	 x18C3IXr3Gi2rpWom6m070G3HsC4g00o3gmOanRC/FrrhJ72G3oGM/BMyQ+q8i1PUN
	 SBHbdNjLODTgNkyZYyV92rmgebfBtvPrElDeoVvE=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A006E380969; Sat, 27 Dec 2025 00:22:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1766812929;
	bh=nXINjaasO90eKnX9r/aExRYw790eBHvpCBDWjq9h6VE=;
	h=Date:From:To:Subject:From;
	b=yfa1cFxXNcE7ROajMF4stDf3bE9o/81B2+OV5+I9HZKEaSNtai99DE6YiECvv7SCw
	 x18C3IXr3Gi2rpWom6m070G3HsC4g00o3gmOanRC/FrrhJ72G3oGM/BMyQ+q8i1PUN
	 SBHbdNjLODTgNkyZYyV92rmgebfBtvPrElDeoVvE=
Received: from localhost (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 80AC338092A
	for <speakup@linux-speakup.org>; Sat, 27 Dec 2025 00:22:09 -0500 (EST)
Date: Sat, 27 Dec 2025 00:22:09 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: testing this very bad boy
Message-ID: <8bc5253d-1849-f79b-6943-c13a8e397b4f@reisers.ca>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I don't think freeing null pointers is a good thing in today's day.

   me


