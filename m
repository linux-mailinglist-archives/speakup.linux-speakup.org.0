Return-Path: <speakup+bounces-971-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 05B9373D79D
	for <lists+speakup@lfdr.de>; Mon, 26 Jun 2023 08:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1687759975;
	bh=hHPlByjmyb45UrbUQfO4EMEDqeivaictzl+RIeIKjRQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=HziPHVAZcJPNHY0YunvGcZ8t6wscJhk5vZjpcfhiotHwcH7TG/dj1WIc7s+NHPeZE
	 +vOlEVn/lXjNFIjsp3YbxFlIPDY6R143dtaUvt9BIwif9C0d+Fs+me/5FDLzY8uUKP
	 YavLasFeRl6LNak15HCN87A0jq/l9/G5e0nZ2UOQ=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 21F0938238C; Mon, 26 Jun 2023 02:12:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1687759975;
	bh=hHPlByjmyb45UrbUQfO4EMEDqeivaictzl+RIeIKjRQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=HziPHVAZcJPNHY0YunvGcZ8t6wscJhk5vZjpcfhiotHwcH7TG/dj1WIc7s+NHPeZE
	 +vOlEVn/lXjNFIjsp3YbxFlIPDY6R143dtaUvt9BIwif9C0d+Fs+me/5FDLzY8uUKP
	 YavLasFeRl6LNak15HCN87A0jq/l9/G5e0nZ2UOQ=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F41D438238C
	for <lists+speakup@lfdr.de>; Mon, 26 Jun 2023 02:12:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1687759967;
	bh=hHPlByjmyb45UrbUQfO4EMEDqeivaictzl+RIeIKjRQ=;
	h=Date:From:To:Subject:From;
	b=Ys33l07/eBDKdnCp6q5fq8u/zAqMbvIg/p60QLUJWIZxAhpBsOgyeD3cYTfsoBHez
	 pHjGV7HPM6rez2M0cps5VDai0qrnXfz7Qd80qNAX+K+8eC0qpqOMnkuBnZ+xMKeaxC
	 6XGZDXnQrkn8QXPjvaiMtCOKBqGsQU1jgIB+W370=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3FB2738238C; Mon, 26 Jun 2023 02:12:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1687759967;
	bh=hHPlByjmyb45UrbUQfO4EMEDqeivaictzl+RIeIKjRQ=;
	h=Date:From:To:Subject:From;
	b=Ys33l07/eBDKdnCp6q5fq8u/zAqMbvIg/p60QLUJWIZxAhpBsOgyeD3cYTfsoBHez
	 pHjGV7HPM6rez2M0cps5VDai0qrnXfz7Qd80qNAX+K+8eC0qpqOMnkuBnZ+xMKeaxC
	 6XGZDXnQrkn8QXPjvaiMtCOKBqGsQU1jgIB+W370=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1F47A38233F
	for <speakup@linux-speakup.org>; Mon, 26 Jun 2023 02:12:47 -0400 (EDT)
Date: Mon, 26 Jun 2023 02:12:47 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: subscription removals
Message-ID: <adfc1e8c-9442-395e-e835-0615d7a01778@reisers.ca>
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

Hi everybody, over the past few days a lot of timeouts have caused the
list software to remove a lot of folks with gmail accounts. If any of
you have gmail accounts might check to see if you are still receiving
speakup mail or other people you may know with them.

I've checked and gmail delivery to individual people I've corresponded
with are working just fine.

We return you to your previous entertainment and "Sorry for the
inconvenience!"

