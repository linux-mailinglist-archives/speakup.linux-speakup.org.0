Return-Path: <speakup+bounces-1465-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 85150C3D43A
	for <lists+speakup@lfdr.de>; Thu, 06 Nov 2025 20:41:39 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=crosslink.net header.i=cstrobel@crosslink.net header.a=rsa-sha256 header.s=zoho header.b=F2EGScB0;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DA596381FDD; Thu, 06 Nov 2025 14:41:38 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BCD01381983
	for <lists+speakup@lfdr.de>; Thu, 06 Nov 2025 14:41:38 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AC933381976; Thu, 06 Nov 2025 14:41:31 -0500 (EST)
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com [136.143.188.12])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F42303818F3
	for <speakup@linux-speakup.org>; Thu, 06 Nov 2025 14:41:30 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; t=1762458083; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=m+QbRx/sCQEQBv0UYweATl43n0Kva3BNsFNVh5W4xuMI3yJ5XujJDRYcI0jpyL5n60eWOpVBxdXHn9Aw4JBi411r02wq3/dGrkDc6ALXYnxe3m8Rea24atE041sl/R9p+Im4dlY1U3y07Gl/vdFiHYDBSUukzb4x2orfO0G6+oM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1762458083; h=Content-Type:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=7zEtNm2mXPX8gFeNx/J/XYHBujJpZMlDeNX/HJYxLr0=; 
	b=AXrMqKtexDecsWpT5bb2WeGgHPkkxGPJpwm/SZLbCAc0zB5fkYTdvNR6XPwbWMtViRVO1TDCGTnwL5S1pXP3ZwrqZxben1EZ15BqKsgBWdmcc1/tetGdaGwV6CoR9UWHQ+ofamZUTI/6GNb/bdSDrhwjllB9mJygG7s9Ex2+XAQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=crosslink.net;
	spf=pass  smtp.mailfrom=cstrobel@crosslink.net;
	dmarc=pass header.from=<cstrobel@crosslink.net>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1762458083;
	s=zoho; d=crosslink.net; i=cstrobel@crosslink.net;
	h=Content-Type:Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:References:From:From:In-Reply-To:Message-Id:Reply-To:Cc;
	bh=7zEtNm2mXPX8gFeNx/J/XYHBujJpZMlDeNX/HJYxLr0=;
	b=F2EGScB0yPs0LxMX5VkRmEel2ATNv+ZcejjOpjGfqr9HU6ap60eASdu6kl+kb5xH
	gEMyHUz/UCJRAzyNnUqRZcE1PDt+3JZCd/y4rdqcJGc2DFbXeDKILG1UVu0W+gsdJYH
	u/lggF4dEoS4T/5veE+Wfl7atva0SMlRggIUpn1Y=
Received: by mx.zohomail.com with SMTPS id 1762458080789579.845057176965;
	Thu, 6 Nov 2025 11:41:20 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------DqqdClTnZF6lbOO0A9SQh0fb"
Message-ID: <419c2114-dcc4-445c-bb8f-4a1fc95a8db9@crosslink.net>
Date: Thu, 6 Nov 2025 14:41:20 -0500
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
Subject: Re: enable espeakup for debian
To: speakup@linux-speakup.org
References: <IA2PR84MB3952FFF80EE8FFE8B416E285DAC2A@IA2PR84MB3952.NAMPRD84.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Chevelle <cstrobel@crosslink.net>
In-Reply-To: <IA2PR84MB3952FFF80EE8FFE8B416E285DAC2A@IA2PR84MB3952.NAMPRD84.PROD.OUTLOOK.COM>
X-ZohoMailClient: External
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.
--------------DqqdClTnZF6lbOO0A9SQh0fb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

If you are using a fresh install of Trixie, your root user may not have 
access to audio. You can try this work-around.
to summarize:

sudo apt install pulseaudio
Now if you type 'amixer' it will work.
sudo apt purge pulseaudio
Now 'amixer' and speakup still worked.

See
https://lists.debian.org/debian-accessibility/2025/09/msg00031.html
If you are using some other version of Debian, I'm not sure.
On 11/6/25 12:45 PM, crisspro wrote:
> Hello.
>
>
> I enabled espeakup service with systemctl enable espeakup, butn 
> doesn’t announce anything., espeakup is runing.
>
> How enable espeakup correctly?. I have a second question, is possible 
> get espeakup for grub menu? I need this to load other OS or load 
> snapshot.
>
>

--------------DqqdClTnZF6lbOO0A9SQh0fb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    If you are using a fresh install of Trixie, your root user may not
    have access to audio. You can try this work-around.<br>
    to summarize:
    <pre style="margin: 0em;">sudo apt install pulseaudio
Now if you type 'amixer' it will work.
sudo apt purge pulseaudio
Now 'amixer' and speakup still worked.
</pre>
    See<br>
    <a class="moz-txt-link-freetext"
href="https://lists.debian.org/debian-accessibility/2025/09/msg00031.html">https://lists.debian.org/debian-accessibility/2025/09/msg00031.html</a><br>
    If you are using some other version of Debian, I'm not sure.
    <div class="moz-cite-prefix">On 11/6/25 12:45 PM, crisspro wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:IA2PR84MB3952FFF80EE8FFE8B416E285DAC2A@IA2PR84MB3952.NAMPRD84.PROD.OUTLOOK.COM">Hello.
      <br>
      <br>
      <br>
      I enabled espeakup service with systemctl enable espeakup, butn
      doesn’t announce anything., espeakup is runing.
      <br>
      <br>
      How enable espeakup correctly?. I have a second question, is
      possible get espeakup for grub menu? I need this to load other OS
      or load snapshot.
      <br>
      <br>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------DqqdClTnZF6lbOO0A9SQh0fb--

