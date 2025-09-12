Return-Path: <speakup+bounces-1332-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5CEB3B53F60
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 02:02:49 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=crosslink.net header.i=cstrobel@crosslink.net header.a=rsa-sha256 header.s=zoho header.b=jsyCI140;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9F4C0382B7B; Thu, 11 Sep 2025 20:02:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7D8A5382A93
	for <lists+speakup@lfdr.de>; Thu, 11 Sep 2025 20:02:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4D27F382A7D; Thu, 11 Sep 2025 20:02:39 -0400 (EDT)
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com [136.143.188.12])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B4E63382A67
	for <speakup@linux-speakup.org>; Thu, 11 Sep 2025 20:02:38 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; t=1757635355; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=PoA63zmsuXSK8FnCsztnW4+a0JLufcLRLp/E/2YWClZefwpacBkQ+MXgiMBrdh6Jobnl5S60ReBUO8ei2mKY/nJ3CnRfE8VBLQ2fgjMATdt+U5wOmow1QMq2Owk9cCE6h0wnRrpZRcw2DdVvPeB1GVDegULSruCR2x2VLzaXBdc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1757635355; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=lOfVmnsv+512oI+kuG03aB4mY7cmYh+hP83NzpJyL1k=; 
	b=crmtxNg1ei3/BU3Q+Um72uY59TKusLsN7jyIyOxhTQgS25Oq+KoZQMxgANrTmvzEeNSjMhIMS9UkEHRMZib/buzJTAEY22NxGVbE97kz8WvANCP7VxhKjJKMZB074GA7VCp7/zWuXyVIfQ3PulomNwUn9yXWsVoFq/xzNGLmhxw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=crosslink.net;
	spf=pass  smtp.mailfrom=cstrobel@crosslink.net;
	dmarc=pass header.from=<cstrobel@crosslink.net>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1757635355;
	s=zoho; d=crosslink.net; i=cstrobel@crosslink.net;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To:Cc;
	bh=lOfVmnsv+512oI+kuG03aB4mY7cmYh+hP83NzpJyL1k=;
	b=jsyCI140IAn6SOAdWDApSWzfgGpr6/qrqBPmf/YWMbntCJcK7McW7MG+W9hpihin
	zsKjl3ePkENt5I3av4c4QTBWhbbAj3/kQUI3iFcBcu1QEwasVt9gd/SY29r+C6nZaAO
	52f8KJpMBdK9ol8PrmNO8p4++SDvtQplZJj3ERCI=
Received: by mx.zohomail.com with SMTPS id 1757635353083328.9010067527598;
	Thu, 11 Sep 2025 17:02:33 -0700 (PDT)
Message-ID: <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
Date: Thu, 11 Sep 2025 20:02:32 -0400
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: "your browser is not supported anymore" both lynx and elinks,
 what now?
To: speakup@linux-speakup.org
References: <202509111603.58BG3W3p018143@nfbcal.org>
Content-Language: en-US
From: Chevelle <cstrobel@crosslink.net>
In-Reply-To: <202509111603.58BG3W3p018143@nfbcal.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

W3m doesn't support Javascript.  Browsh claims to support Javascript, 
but I've never used it.

You should be able to search with Lynx using https://lite.duckduckgo.com 
or possibly https://searx.org.



On 9/11/25 12:03 PM, Brian Buhrow wrote:
> 	hello.  Does this w3 browser work with javascript?  If not, is ther a text based browser
> which works with javascript?  I know elinks says it works with javascript, but it doesn't
> implement the DOM model, so most pages with javascript don't work with it.
> -thanks
> -Brian
>
>

