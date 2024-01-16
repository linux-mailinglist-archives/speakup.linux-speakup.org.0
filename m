Return-Path: <speakup+bounces-1063-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 99E0782F32A
	for <lists+speakup@lfdr.de>; Tue, 16 Jan 2024 18:28:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1705426125;
	bh=BpBL7JC+QYjicG8/uY5RJFE115M4Ts8ileGdkG8cpHI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=HJ6ae47KyLI8bu5/SomNfXiDL+JgKdQYYGyRsXWmlgUXV7nGcAi/Iw26ZQztI+6BK
	 sGUXTePcpudCIo1VOaW5NN0PXjgbqtp1956YoUKXviZh2PeVYCtXK+8fktnlGMOJRR
	 8dAL1Wg2pqBGzdSj9FXUpTyGshyu9ayI2SL998JE=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 82DC238212C; Tue, 16 Jan 2024 12:28:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1705426125;
	bh=BpBL7JC+QYjicG8/uY5RJFE115M4Ts8ileGdkG8cpHI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=HJ6ae47KyLI8bu5/SomNfXiDL+JgKdQYYGyRsXWmlgUXV7nGcAi/Iw26ZQztI+6BK
	 sGUXTePcpudCIo1VOaW5NN0PXjgbqtp1956YoUKXviZh2PeVYCtXK+8fktnlGMOJRR
	 8dAL1Wg2pqBGzdSj9FXUpTyGshyu9ayI2SL998JE=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5E37C38212C
	for <lists+speakup@lfdr.de>; Tue, 16 Jan 2024 12:28:45 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1705426117;
	bh=BpBL7JC+QYjicG8/uY5RJFE115M4Ts8ileGdkG8cpHI=;
	h=Date:From:To:Subject:From;
	b=dWfxZJaa0B869mNAIP+X95UBcEpfqYHHFOA5sqGAnFGRgZZ3WXqHtWltTXGJ8smbu
	 /Io1qdMC2W5DlhQswnpD0yQgaSAgOQ2Ip3n/WJFji6GXdKJ8j6AxRy8JLJVoEpOxet
	 J8XgU6iyL9beEPQABWRAHfchaNKzUpMMrkkhCG5Q=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D99E438228F; Tue, 16 Jan 2024 12:28:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1705426117;
	bh=BpBL7JC+QYjicG8/uY5RJFE115M4Ts8ileGdkG8cpHI=;
	h=Date:From:To:Subject:From;
	b=dWfxZJaa0B869mNAIP+X95UBcEpfqYHHFOA5sqGAnFGRgZZ3WXqHtWltTXGJ8smbu
	 /Io1qdMC2W5DlhQswnpD0yQgaSAgOQ2Ip3n/WJFji6GXdKJ8j6AxRy8JLJVoEpOxet
	 J8XgU6iyL9beEPQABWRAHfchaNKzUpMMrkkhCG5Q=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B7E4038206B
	for <speakup@linux-speakup.org>; Tue, 16 Jan 2024 12:28:37 -0500 (EST)
Date: Tue, 16 Jan 2024 12:28:37 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: Thoughts on the website and domain?
Message-ID: <7b6c8aad-7ff9-e768-cc91-fd31b8c886d7@reisers.ca>
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

Hello everybody: The linux-speakup.org domain needs to be renewed in
the next few weeks and so I figured I should ask for peoples opinions
on what to do. First of all, does anyone know whether the speakup
website is used or useful for any purpose these days? All of speakup's
code repos have been moved and there hasn't been any new material
added to the site in years as far as I know. The mailing list, this
list, could continue under my reisers.ca domain so the list itself
does not need to be affected because occasionally there is some
discussion which I believe is useful here on the list.

I would like to hear opinions if folks have them.

   Kirk


