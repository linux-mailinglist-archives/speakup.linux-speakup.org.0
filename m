Return-Path: <speakup+bounces-250-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C78FC3D3D3D
	for <lists+speakup@lfdr.de>; Fri, 23 Jul 2021 18:12:21 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 98441380F30; Fri, 23 Jul 2021 12:12:20 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=pcdesk.net header.i=@pcdesk.net header.a=rsa-sha256 header.s=pcdesk20210713 header.b=FeLD3HMn;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 84D87380B3F
	for <lists+speakup@lfdr.de>; Fri, 23 Jul 2021 12:12:20 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D4D25380C71; Fri, 23 Jul 2021 12:12:15 -0400 (EDT)
Received: from mail.pcdesk.net (mail.pcdesk.net [69.28.94.151])
	by befuddled.reisers.ca (Postfix) with UTF8SMTPS id 5DC38380AC8
	for <speakup@linux-speakup.org>; Fri, 23 Jul 2021 12:12:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pcdesk.net;
	s=pcdesk20210713; t=1627056733;
	bh=8XGRk5sto/862Pzi9e8LMHzxF5i3ifI2AtyCa4JQG30=; l=590;
	h=To:From:Subject:Date;
	b=FeLD3HMnjkWrTdVMRDk2Q5yfewlvX8jrRrhYKpUfNGkjuU2auXFMhN0p9lgRuWHp9
	 CZNICBD0beTiPyWhJNSN8AkWyRogX0jCXgIwiIxpAvNXWVqg1NiCxnS368LS4aSEtz
	 O96jmJcrx/4cZNUGzotTluTfinb7IE1ciq/LaqvPx2TEazqbQRj6NTrmmntjhxeRBJ
	 NBiLHu1SH7HK/o5auwlVfeJTih/Xwp6vDDOzte2GSfDlmoE/wMDZmGi/hIEJGdjRX9
	 h2547odkm56ucg7zb/QopLEq4Mve2ntHZLP7grDPmuFIkA/Yyo2G5BBTB3AJDjkdiT
	 ktGxGqQKAtayw==
Original-Subject: Speakup on Arch Linux
Original-From: "Joseph C. Lininger" <joe@pcdesk.net>
To:
  "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "Joseph C. Lininger" <joe@pcdesk.net>
Subject: Speakup on Arch Linux
Message-ID: <c5c14706-16d7-c9bf-9b1e-b72e52b37889@pcdesk.net>
Date: Fri, 23 Jul 2021 12:12:12 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.6.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Good day all,
I saw a couple of messages earlier about ALSA issues on Arch Linux with 
espeakup. I can't find them now though. The latest versions of alsa, 
speakup, linux kernel, etc. cause the speach to lag while typing. Is 
there a workaround to this, packages I should not upgrade right now, 
etc? I can revert my system to a previous state, but I need to know how 
to avoid this problem when I go to update packages going forward. Also, 
anyone know if a fix is in the works? Obviously just permanently using 
older package versions isn't a good solution.

Thanks in advance.
Joe

