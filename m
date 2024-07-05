Return-Path: <speakup+bounces-1156-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 30AC7928F48
	for <lists+speakup@lfdr.de>; Sat,  6 Jul 2024 00:19:07 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=dBxlvNfQ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7B9DAC81C97; Fri, 05 Jul 2024 18:19:06 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5E63FC80BA6
	for <lists+speakup@lfdr.de>; Fri, 05 Jul 2024 18:19:06 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5C52CC80FEF; Fri, 05 Jul 2024 18:18:58 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 18A6EC80BA4
	for <speakup@linux-speakup.org>; Fri, 05 Jul 2024 18:18:58 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WG7G83Tlzz4Qx5;
	Fri,  5 Jul 2024 18:18:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1720217936; bh=RftxLN1BUauPPbpXbRYiNvVliCMF+MLNIUoaJPZRfeI=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=dBxlvNfQMX2PY8QLp69pPA4DqAh/UIE3eY9KDFOD0U1cHlQxymRfKEYeaMWISHDlV
	 TYa2ZxYst/mzF4PLbUgU+fs1fud0LFyk3oZu5xAgAeCBU6cr9NUkNSwn973USwP7w1
	 AvNuHOdumuQK3UDSrzkjDBH0D3Ul22umtNCQEwok=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WG7G827rpzcbc; Fri,  5 Jul 2024 18:18:56 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WG7G824qkzcbC;
	Fri,  5 Jul 2024 18:18:56 -0400 (EDT)
Date: Fri, 5 Jul 2024 18:18:56 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: criss <crisspro@hotmail.com>, speakup@linux-speakup.org
Subject: Re: Espeakup not working in Arch
In-Reply-To:  <CH2PR12MB4133D2FC94966A833CD563A7DADF2@CH2PR12MB4133.namprd12.prod.outlook.com>
Message-ID: <c7174777-3d9e-cbbf-1083-9d10a7f66779@panix.com>
References:  <CH2PR12MB4133D2FC94966A833CD563A7DADF2@CH2PR12MB4133.namprd12.prod.outlook.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

did you install alsa-utils along with espeakup?  If not, espeakup won't
work.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Fri, 5 Jul 2024, criss wrote:

> Hello.
>
>
> after install espeakup in arch, I enable the service "systemctl enable
> espeakup", but when run Arch, espeakup not speak. espeakup.service is runing.
> is there another configuration?
>
>
> regards.
>
>
>

