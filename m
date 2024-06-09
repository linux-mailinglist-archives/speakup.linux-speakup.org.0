Return-Path: <speakup+bounces-1135-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 214B2901893
	for <lists+speakup@lfdr.de>; Mon, 10 Jun 2024 00:59:00 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=xZ8cWK0F;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 84E62C81C9D; Sun, 09 Jun 2024 18:58:59 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 65378C80FE8
	for <lists+speakup@lfdr.de>; Sun, 09 Jun 2024 18:58:59 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6E656C80FEF; Sun, 09 Jun 2024 18:58:51 -0400 (EDT)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1AABBC80FE8
	for <speakup@linux-speakup.org>; Sun, 09 Jun 2024 18:58:51 -0400 (EDT)
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id D23BC320A1
	for <speakup@linux-speakup.org>; Sun,  9 Jun 2024 22:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1717973897;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=mpz1N7NcVAMQETmDv0uKn7BVR1ZcYh9vualSVmVcyTI=;
	b=xZ8cWK0FfxccprIxy3hSmm9v6fBKPNWg/cQ3WxidfGsC3bw66DuxuKmAMQZheq5guZBvbz
	alygCINZ5vCPFPO4oX20ys6CVJtJDgIUl4OVui/zqCF3TyO0cB4ea5C6P5NlxWv9CJ71EG
	jZzYe9ZuTKOh829GuhCwCSfJvR5gKjgCWKb29aN1CoGvKF8ErffzPgxwfoyBd+YhDIGHwf
	L/mnVe9kbbWOYfsgRSCDrIuU5A/i5NoGCUJ/IksHokT3GVNe9R9k2GqW4yco7YRvGae0nb
	1ac92FRo2C+rWhTjHQREGrsQdblEm4EbLSVcANhHdGFcQ5Wij9ZnAf85OoXOqw==
Content-Type: multipart/alternative;
 boundary="------------XuPM63ffrjlmOZSsxVrXU001"
Message-ID: <cf268ee9-f565-4db7-bc3c-c2e098605cb0@jasonjgw.net>
Date: Sun, 9 Jun 2024 18:58:17 -0400
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
Subject: Re: gentoo dracut puzzle
To: speakup@linux-speakup.org
References: <a65a8a6f-4230-3bd9-153c-8edef21e74da@panix.com>
 <MTAwMDA0MS5jbHVs.1716645692@quikprotect>
 <a5a6e2fd-fbd9-8c1f-87d2-ecf227d3f402@panix.com>
 <MTAwMDAxOC5jbHVs.1717947444@quikprotect>
 <7e945c59-8b40-6a07-e67c-357dbe70b1a4@panix.com>
Content-Language: en-US, en-AU-large, en-US-large
From: "Jason J.G. White" <jason@jasonjgw.net>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <7e945c59-8b40-6a07-e67c-357dbe70b1a4@panix.com>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.
--------------XuPM63ffrjlmOZSsxVrXU001
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 9/6/24 18:19, Jude DaShiell wrote:
> Earlier today I wiped debian off the system and tried booting into gentoo
> directly.  Result, total silence.  It was as if no disk had been booted at
> all.  Should I have run grub-install before doing that or did the dracut
> process take care of that detail earlier for me?

Dracut only builds the initial ram disk image; it doesn't install Grub 
or any other boot loader.

The way I have mine set up (running Arch Linux), there is a unified 
kernel image built by dracut-ukify. The Unified Kernel Image is loaded 
directly by the UEFI firmware, so there is no boot loader at all. So 
far, it has worked reliably.


--------------XuPM63ffrjlmOZSsxVrXU001
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 9/6/24 18:19, Jude DaShiell wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:7e945c59-8b40-6a07-e67c-357dbe70b1a4@panix.com">
      <pre>Earlier today I wiped debian off the system and tried booting into gentoo
directly.  Result, total silence.  It was as if no disk had been booted at
all.  Should I have run grub-install before doing that or did the dracut
process take care of that detail earlier for me?  </pre>
    </blockquote>
    <p>Dracut only builds the initial ram disk image; it doesn't install
      Grub or any other boot loader.</p>
    <p>The way I have mine set up (running Arch Linux), there is a
      unified kernel image built by dracut-ukify. The Unified Kernel
      Image is loaded directly by the UEFI firmware, so there is no boot
      loader at all. So far, it has worked reliably.</p>
    <p><br>
    </p>
  </body>
</html>

--------------XuPM63ffrjlmOZSsxVrXU001--

