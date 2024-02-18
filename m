Return-Path: <speakup+bounces-1079-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5D7F785980B
	for <lists+speakup@lfdr.de>; Sun, 18 Feb 2024 18:09:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1708276164;
	bh=Mf0tC+iwowXF16fhrYqO1AOYLtf1Q2RKRcB7uQY/DLk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=vO22ULuW8VakGBeAHIKiF4hXM3BQVx9ZXW+sD5mGuWsoAnDCFtgHXhcUAexE8GHLv
	 C1yxs7TUjiQF03V38nEWTv1Rs5gTgT8tAOIWSKBYHYhyHXCKzwXtoosnz2hH7i3mgN
	 A+w4joOq3bFpuR5l2Yhh1ujUU5q/kei/AZW7rKoA=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 05C44382775; Sun, 18 Feb 2024 12:09:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1708276163;
	bh=Mf0tC+iwowXF16fhrYqO1AOYLtf1Q2RKRcB7uQY/DLk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=rxtKHcEMIcwurBZu5tvhxn/puBTFSYtykrhiqkAWrx/Eo8h+X/VgCa3/QqO+zIfsu
	 MptvpMcq80JyNLYmWtfTWj2G1msrwP8iQL8peOu4swNcfMkjAidRaOJbSNI4+Ctb8S
	 7Lihrv17ejXzJS7/M2WttoXLjAuQYFEyX8Ng2UKw=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D18763820EE
	for <lists+speakup@lfdr.de>; Sun, 18 Feb 2024 12:09:23 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1708276156;
	bh=Mf0tC+iwowXF16fhrYqO1AOYLtf1Q2RKRcB7uQY/DLk=;
	h=Date:From:To:Subject:From;
	b=CYZHzmMldBcHj0nEpKqGLYbL3roDx3oDvYm3eIlGgL0XRggQcjDqjGq8vbLZp/Rj/
	 W/MDF/0mMq2A5ZhwSaWuclDxf71nPnEM05RpuB83bF7sMHGcEL5QhrCoHloi4ndBYO
	 DP44fKtIZukw8W39v5AN0egHX0EwsE+Ka/2pnz14=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 33B10382111; Sun, 18 Feb 2024 12:09:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1708276156;
	bh=Mf0tC+iwowXF16fhrYqO1AOYLtf1Q2RKRcB7uQY/DLk=;
	h=Date:From:To:Subject:From;
	b=CYZHzmMldBcHj0nEpKqGLYbL3roDx3oDvYm3eIlGgL0XRggQcjDqjGq8vbLZp/Rj/
	 W/MDF/0mMq2A5ZhwSaWuclDxf71nPnEM05RpuB83bF7sMHGcEL5QhrCoHloi4ndBYO
	 DP44fKtIZukw8W39v5AN0egHX0EwsE+Ka/2pnz14=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0F52F38208B
	for <speakup@linux-speakup.org>; Sun, 18 Feb 2024 12:09:16 -0500 (EST)
Date: Sun, 18 Feb 2024 12:09:15 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: Domain expiration
Message-ID: <76018e2b-1c58-9a09-2e24-bc2c91697d88@reisers.ca>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello everybody: I have decided after poking around with my domain
registrar that I'm going to allow the domain linux-speakup.org to
expire. My current registrar wants to much money yearly to continue
with them and transferring the domain to my other registrar is more
work than I wish to put in. I am almost 72 years old and so
registering for any length of time really isn't worth it to me.

I will keep this list going as speakup@reisers.ca and Chris Brannon
will continue to archive the list. I will also put a link on the
reisers.ca webpage to point to the old sites directory so at least for
quite a while that will also remain.

I will make the switch over on March 1st although it'd be more amusing
to do it on the day of the command March 4th! I'll send out a note
once the switch is complete and hopefully you won't have to do
anything except move from speakup@linux-speakup.org to
speakup@reisers.ca when posting a message.

   Kirk


