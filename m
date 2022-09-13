Return-Path: <speakup+bounces-736-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5691E5B6C84
	for <lists+speakup@lfdr.de>; Tue, 13 Sep 2022 13:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1663069682;
	bh=l+c5Bjy/sowI9YCg8uI4gwEavxmgWhYlOiA9zWC7RUc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=rISLQ7vdtmZee9GO/BfRqFogsvviNtZM1zHxUxXw8O9MfaF/+J52VLJuIaRYLPiTa
	 A/tql9az/jx1AJm/Lg8FepxMT7dhvgb5PTNyOH02unS/KNsHZxQURaLCpTxKhK6g+8
	 zrUmYOjigE49ewkIuc2735AYJWtLcy9rnCUhLkJA=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A8E62380BD4; Tue, 13 Sep 2022 07:48:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1663069682;
	bh=l+c5Bjy/sowI9YCg8uI4gwEavxmgWhYlOiA9zWC7RUc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=rISLQ7vdtmZee9GO/BfRqFogsvviNtZM1zHxUxXw8O9MfaF/+J52VLJuIaRYLPiTa
	 A/tql9az/jx1AJm/Lg8FepxMT7dhvgb5PTNyOH02unS/KNsHZxQURaLCpTxKhK6g+8
	 zrUmYOjigE49ewkIuc2735AYJWtLcy9rnCUhLkJA=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8AB20380906
	for <lists+speakup@lfdr.de>; Tue, 13 Sep 2022 07:48:02 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1663069673;
	bh=l+c5Bjy/sowI9YCg8uI4gwEavxmgWhYlOiA9zWC7RUc=;
	h=Date:From:To:Subject:From;
	b=quuVVCLF+brE5l771dIp9MV6N3sQBcCQniMmUJARWC2K87Loly/HPqmqlgyWUBQGc
	 63F4+0TEsoHOBZg+wxhnVnatbnAlyu8YJfs0GEomDHvJ6D3v9zw/MMmHRIlht4VPt9
	 WKtqalxqYO0CQq8381vfPsNzJILsNfokTNmKobzQ=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7AE16380906; Tue, 13 Sep 2022 07:47:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1663069673;
	bh=l+c5Bjy/sowI9YCg8uI4gwEavxmgWhYlOiA9zWC7RUc=;
	h=Date:From:To:Subject:From;
	b=quuVVCLF+brE5l771dIp9MV6N3sQBcCQniMmUJARWC2K87Loly/HPqmqlgyWUBQGc
	 63F4+0TEsoHOBZg+wxhnVnatbnAlyu8YJfs0GEomDHvJ6D3v9zw/MMmHRIlht4VPt9
	 WKtqalxqYO0CQq8381vfPsNzJILsNfokTNmKobzQ=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5D4203800B7
	for <speakup@linux-speakup.org>; Tue, 13 Sep 2022 07:47:53 -0400 (EDT)
Date: Tue, 13 Sep 2022 07:47:53 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: speakup, espeakup, and asian languages?
Message-ID: <b806ee0e-afd3-6fd1-fd69-f31314457a10@reisers.ca>
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

Hi folks: I have been studying Mandarin for the last couple of months
but find it is sometimes very difficult to determine the pronunciation
of certain words. I have also been thinking it would be nice if
speakup and espeakup could read chinese or any asian language for that
matter. So I wondered if there were any blinks actually using them
with Mandarin and might have some pointers and experiences to share.

   Kirk


