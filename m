Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id D973F1AF53A
	for <lists+speakup@lfdr.de>; Sat, 18 Apr 2020 23:47:24 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5277A1C73BD; Sat, 18 Apr 2020 17:47:24 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=MrROzIul;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D50691C73DC;
	Sat, 18 Apr 2020 17:47:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id AC41E1C57B4; Sat, 18 Apr 2020 17:47:12 -0400 (EDT)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [IPv6:2600:3c03:e000:9b::c])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 0A0851C0B50
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 17:47:11 -0400 (EDT)
Received: from [IPv6:2601:85:c380:11f6::d23] (unknown
 [IPv6:2601:85:c380:11f6::d23])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (Client did not present a certificate)
 by svr.jasonjgw.net (Postfix) with ESMTPSA id E7D69323FF;
 Sat, 18 Apr 2020 21:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
 s=mail; t=1587246429;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2tx+MW4e9BP43fgrAwfgliYD9Y0H8OXeohKLPf0wFZQ=;
 b=MrROzIulY+M3lYa3S8o8TFRALuNHToGdgu7Ioq+r6GBAj721gFRHSO6WnA7n1Ornwo3fv0
 zqtrqKhFE0fatXjLxcrDH2CFm6ZgeLYttbgb1YnvuWyaG8ZECJRQ0s+w9q/+He1B3SE8dy
 omq2Nt8EK0q35I1yy0SKrVAK2MnsO4I=
Subject: Re: log file noise
To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>, Chris Zenchenko <old78rpm@gmail.com>
References: <006d01d6158d$a10093f0$e301bbd0$@gmail.com>
From: Jason White <jason@jasonjgw.net>
Message-ID: <272d3036-9319-8265-2526-91a53800324b@jasonjgw.net>
Date: Sat, 18 Apr 2020 17:47:08 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <006d01d6158d$a10093f0$e301bbd0$@gmail.com>
Content-Language: en-US
Authentication-Results: svr.jasonjgw.net;
 auth=pass smtp.auth=jason smtp.mailfrom=jason@jasonjgw.net
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4


On 4/18/20 10:28 AM, Chris Zenchenko wrote:
> Not exactly a Speakup issue but I'm wondering if anyone has figured out a
> way to read through log files minus the date and time.

The journalctl -o short option may be useful if the logs are created by 
systemd-journald.


_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
