Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1EBB428C128
	for <lists+speakup@lfdr.de>; Mon, 12 Oct 2020 21:09:44 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B20A8380BC8; Mon, 12 Oct 2020 15:09:43 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=DfFo4/h8;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8E0B4380BD5;
	Mon, 12 Oct 2020 15:09:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 1269E380BC2; Mon, 12 Oct 2020 15:09:42 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id E2F5A380BB8
 for <speakup@linux-speakup.org>; Mon, 12 Oct 2020 15:09:41 -0400 (EDT)
Received: from darkstar.machine.fr (sfa89-1-78-208-157-71.fbx.proxad.net
 [78.208.157.71])
 by darkstar.slint.fr (Postfix) with ESMTPSA id C4A76BE27E
 for <speakup@linux-speakup.org>; Mon, 12 Oct 2020 20:08:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1602526133; bh=hVq+dCNZ53Zp2QUVhFYY6dZgmNCwWC0DqcrLW9RT8RM=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=DfFo4/h8U9j5D8LjwqxtoSJr+ckodsroxB6yV9Zd/xuCIQlYQJ6aqiFm4ttqtgpup
 W065OSK22np2sWLNLA/xaIXUyGpvmeE+AfBdvZIOd8XKOIbVH/c5OrppV+fAra7GsM
 /DDsTUieohDf8bkeRIk+PcVVFNTgAQpXe+hPPfnHTJzpTrU4nPD1cF1ZZNnEOHlEFy
 SEIDU+7f0xCxKWmvZk9tpncxBFjD0cG+3FtN2ycx3p9/rLBQDtbHTxiITRzQiPYdc0
 8H73EflThX1Gu1ruw48egJtk7vAIiItq/+2HsESrQqZeGqXg+LZFckzJ8UQmv2tkBp
 xskWs6c+vTSuw==
Subject: Re: Linux 5.9 is out with speakup
To: speakup@linux-speakup.org
References: <20201012132922.mghdcuf5zotung5w@function>
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
Message-ID: <b5735876-ba5e-7d0a-be49-6a705d760a90@slint.fr>
Date: Mon, 12 Oct 2020 21:09:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201012132922.mghdcuf5zotung5w@function>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

SGVsbG8sCgpMZSAxMi8xMC8yMDIwIMOgIDE1OjI5LCBTYW11ZWwgVGhpYmF1bHQgYSDDqWNyaXTC
oDoKPiBMaW51eCA1LjkgaXMgb3V0LCBpbiB3aGljaCBzcGVha3VwIGlzIGV4cG9zZWQgbWFpbmxp
bmUgYW5kIG5vdCBpbgo+IHN0YWdpbmcgYW55IG1vcmUhCgpUaGFua3MgU2FtdWVsLCBrZWVwIHVw
IHRoZSBnb29kIHdvcmshCkRpZGllcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAu
b3JnCmh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3Bl
YWt1cAo=
