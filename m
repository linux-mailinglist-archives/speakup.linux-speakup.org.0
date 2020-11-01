Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B13032A21EB
	for <lists+speakup@lfdr.de>; Sun,  1 Nov 2020 22:36:22 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 49FF5380F48; Sun,  1 Nov 2020 16:36:22 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=Z6IWDBe0;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D1345380F23;
	Sun,  1 Nov 2020 16:36:20 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id CB30F380F12; Sun,  1 Nov 2020 16:36:19 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id A9EF4380EEC
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 16:36:19 -0500 (EST)
Received: from [192.168.0.11] (sfa89-1-78-208-157-71.fbx.proxad.net
 [78.208.157.71])
 by darkstar.slint.fr (Postfix) with ESMTPSA id 3BF89BE27E
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 21:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1604262928; bh=G99jTC7r6XnQrEpShvioaXz5tOFaaz1jFf4cvfn0wMs=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=Z6IWDBe03d8ExTbBwJo6CD2gpUplJjUxMecePZwwa2EvXI2LYJPXTeSduyZ/v2C9V
 R/9KVpDzYDc06mdwdz1iWMCEeL40TPxWk017hFLkb6IA5GQs4jLOugnOM8slOv3ZXa
 VNGSIU5UlNX/PurUdBngfsZQh6kFuQYawhWrzxvkvepinWuoxAH5Fj4YxpsQLS1ush
 qQSfsXD/Fnqjntu6qLyJEmuw4DHuOrdmQk8OMGZuRk4b3s9Bq2DbtyQE5ap0yipANR
 2DtfICWwaWYiyDYFI12/Z07+KNmApL3kSEVYOJFdPRx3wUfh2tC94aGIPCkFzO0VHP
 id//7NPEgmHvg==
Subject: Re: speakup crashes with kernel 5.4.69
To: speakup@linux-speakup.org
References: <m3o8l6sge6.wl-covici@ccs.covici.com>
 <20201101205909.zz2ihrr6zmucrfbq@function>
 <5123cc09-8314-7bb4-82dd-5511b53b3703@slint.fr>
From: Didier Spaier <didier@slint.fr>
Autocrypt: addr=didier@slint.fr; prefer-encrypt=mutual; keydata=
 mQENBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAG0H0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj6JAT8EEwEKACkCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCXcBjnwUJGlHqEgAKCRDVAgLvYMA+6v/ICAC8Oa2zXOne
 zyuFrPtNsciJWYwWamW+g5TNaY9NPnyMRNKDi7IcP6PoDwHRI8YBgo+Z9w0qFKQ/WVSI/O6s
 gm7LnOX7OEHjnub4sjrr5PHcsPRjm6iJFIgGgD+waz0K5fxcc65ti3lgHLH1tkhORyiT5EFp
 0VllWDQfPHw5avm9oopJv1FuPfZhSlFT6QhjD2ARmOrxfFBjELQZjDidckOYf/8Stoh+aK5F
 5q69DpF+bSZzOtCht+S6LT+Im5zqMgq1Dfqb3FpnVO3MyhSLeGI2nB+OFNTBGByRFKHYRsHc
 VaQBjtfsr4HnC0UR2P/bDIk/oxLnIN9nHJuL6btcf9M6
Message-ID: <3ea9c55d-07af-4e23-42b8-de7ae441af41@slint.fr>
Date: Sun, 1 Nov 2020 22:35:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <5123cc09-8314-7bb4-82dd-5511b53b3703@slint.fr>
Content-Language: fr
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
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Le 01/11/2020 =E0 22:28, Didier Spaier a =E9crit=A0:
> ask as Slint currently includes 5.4.62 but I was about to upgrade to 5.5.=
72
please read "to 5.4.72"
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
