Return-Path: <speakup+bounces-1235-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0E4CEA1AA70
	for <lists+speakup@lfdr.de>; Thu, 23 Jan 2025 20:40:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1737661232;
	bh=vFHjTDY811fZKEWIP7aMpmmHQFUaO4iQw2fp9Dgumf0=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=ymtgP7kglRbclCMCMtwtG/zOyMAEm15MHKukOGoxswqGPTfe6GGpcEuIwvebkQu4w
	 uobWDwfclP2UuHqLgfujvH1KChY1yOI2ecf079XxNTcSRcV8H0zCWYw07jKgtvOoHZ
	 Pzxy1iqjeh88WOFEQFPwxvbcQd9+jvjdGEcEBPrY=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B5EBF38228F; Thu, 23 Jan 2025 14:40:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1737661232;
	bh=vFHjTDY811fZKEWIP7aMpmmHQFUaO4iQw2fp9Dgumf0=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=ymtgP7kglRbclCMCMtwtG/zOyMAEm15MHKukOGoxswqGPTfe6GGpcEuIwvebkQu4w
	 uobWDwfclP2UuHqLgfujvH1KChY1yOI2ecf079XxNTcSRcV8H0zCWYw07jKgtvOoHZ
	 Pzxy1iqjeh88WOFEQFPwxvbcQd9+jvjdGEcEBPrY=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 97029381940
	for <lists+speakup@lfdr.de>; Thu, 23 Jan 2025 14:40:32 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1737661225;
	bh=vFHjTDY811fZKEWIP7aMpmmHQFUaO4iQw2fp9Dgumf0=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=vsIDzMXYFtTUXM/FIiv0DzWIUd0Ljwzpi2raph4O4iwlbgTdnqhvPNFcBxqRmKgCf
	 3mBc7cVDLkwU8HtxDrsHMxAB/Lmo0ogsIV8Mf4ZSGBS10e4ee+oaX0Nhbecajr/n+h
	 LtbdP7D6Rk/FTTeu13eObyO5NKR9ETWHvv47vqH4=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C2A10381940; Thu, 23 Jan 2025 14:40:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1737661225;
	bh=vFHjTDY811fZKEWIP7aMpmmHQFUaO4iQw2fp9Dgumf0=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=vsIDzMXYFtTUXM/FIiv0DzWIUd0Ljwzpi2raph4O4iwlbgTdnqhvPNFcBxqRmKgCf
	 3mBc7cVDLkwU8HtxDrsHMxAB/Lmo0ogsIV8Mf4ZSGBS10e4ee+oaX0Nhbecajr/n+h
	 LtbdP7D6Rk/FTTeu13eObyO5NKR9ETWHvv47vqH4=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A0D6D3818A0;
	Thu, 23 Jan 2025 14:40:25 -0500 (EST)
Date: Thu, 23 Jan 2025 14:40:25 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: Jude DaShiell <jdashiel@panix.com>
cc: speakup@linux-speakup.org
Subject: re: good old speakup
In-Reply-To: <Z5Ipi7m8qI19IGbu@panix.com>
Message-ID: <990e0f10-486a-1fe0-2a80-f3b4bc39c32e@reisers.ca>
References: <Z5Ipi7m8qI19IGbu@panix.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Um, I had/have an old Asus 720 Chromebook which I used to use. My
guess is that speakup is on it which you can check by modprobing
speakup_soft as root from the console. It seems to me that I had to
blacklist the hda intel driver to get it to be used by espeakup but
it's been a long time and I just don't remember anymore. See if
espeak-ng will work.

   Kirk

On Thu, 23 Jan 2025, Jude DaShiell wrote:

> I have been trying to get speakup working on a virtualized containerized debian bookworm environment on an acer spin #713 chromebook without success.
> Has anyone managed to get speakup talking on a chromebook yet?
> I'm thinking google which installs this version of linux on chromebooks may have ripped out the necessary speakup kernel support.
> How I'm writing anything on the chromebook in terminal is by using a screen reader called tdsr.
> My other linux tower computer died last year so I'm down to this chromebook.
>

