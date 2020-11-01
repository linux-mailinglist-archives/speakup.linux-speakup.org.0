Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id CD5BC2A21E7
	for <lists+speakup@lfdr.de>; Sun,  1 Nov 2020 22:29:31 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6DC80380F6B; Sun,  1 Nov 2020 16:29:31 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=RqjwhRsQ;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 38EE5380F1F;
	Sun,  1 Nov 2020 16:29:31 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 09836380F11; Sun,  1 Nov 2020 16:29:30 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id A03B2380EEA
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 16:29:29 -0500 (EST)
Received: from [192.168.0.11] (sfa89-1-78-208-157-71.fbx.proxad.net
 [78.208.157.71])
 by darkstar.slint.fr (Postfix) with ESMTPSA id 79D1BBE27E
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 21:28:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1604262516; bh=/CB/HqkaDPwDpcwqt92hW0lsXPws7JkJVaQv9WRGedI=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=RqjwhRsQBX3dvHbIVUy+Q4npTfZitMiv3wtkYzMcxOkPYa45veGXBO6/XoH+z3tCN
 qiDup5Zd84C10UcR2EkzfB2v3Jnca3NMW+ltIhrau6KwMgtemi7vduecTC1KoH/2Hz
 nxMh9Kfkcu0QE7LNfNbWVUmbJ7pahTJHEF9E7Ik3bCJ4Sv698eQjN5MAe9SYMfIG0Y
 JUbfhTXH6ujcvpsIG/3zKide8Ki9QUARr79XcLHoB3gsJ9QbCmmewFG8QouGvEOXdq
 yuRQRVUPiPVAnQ95WnE7wSaOvrLbZwtrYA8zh9h+NA12Kq4VRC7/C5qcsdBTg2WFFT
 R8U0ICDyY+JLw==
Subject: Re: speakup crashes with kernel 5.4.69
To: speakup@linux-speakup.org
References: <m3o8l6sge6.wl-covici@ccs.covici.com>
 <20201101205909.zz2ihrr6zmucrfbq@function>
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
Message-ID: <5123cc09-8314-7bb4-82dd-5511b53b3703@slint.fr>
Date: Sun, 1 Nov 2020 22:28:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201101205909.zz2ihrr6zmucrfbq@function>
Content-Language: en-US
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

Hi,
Le 01/11/2020 =E0 21:59, Samuel Thibault a =E9crit=A0:
> John Covici, le mar. 13 oct. 2020 04:02:09 -0400, a ecrit:
>> Hi.  When I just tried to boot with kernel 5.4.69, it did come up, but
>> soon crashed with a lot of kernel: basd schedule from idle thread.
> =

> Ok, I see the concern. Would you be able to try the attached patch?
> =

> Samuel

Does this issue affect/can this patch be applied against/ 5.4.62/5.4.72?

I ask as Slint currently includes 5.4.62 but I was about to upgrade to 5.5.=
72
(and no Slint user complained so far. Maybe only some uses cases or
hard synths are in concern?)

Didier

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
