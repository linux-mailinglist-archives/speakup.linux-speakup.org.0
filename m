Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 1AAF01290F7
	for <lists+speakup@lfdr.de>; Mon, 23 Dec 2019 03:46:59 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ACE121C46B5; Sun, 22 Dec 2019 21:46:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1577069215;
	bh=rpNZutp6J4MUGKHa8En40U8XWQzJULyV4MEw8WfwSrc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=B7ebCRvyL78X7+U3XiOLMZ6XhZqTwvhumfNDLG10+4PdXN/00Sqgp7O1GH865o6dH
	 kJ/D76E8CgJEuwxspeSkjwu644cDotJk9uwHJT4TcrHacWsmCWvZBHTLImwH8JUBeV
	 4ytzlKohdogz/QmijNI9T2/mf50vUbBDcG2WmyNM=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BDD8E1C46A2;
	Sun, 22 Dec 2019 21:46:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1577069203;
	bh=rpNZutp6J4MUGKHa8En40U8XWQzJULyV4MEw8WfwSrc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=Z2Bj3C2ieXytNFynr67fVFB86e6JdRmPRV3tiBGOc2RVci1CpZRg4dAzSIv6i8yCj
	 bD5U+1/egNP1SBv1DweNW6q2Hmk1bCrkgd2MgwdQzxH+n4VeQwTft1Yx/R+kxsL9fO
	 yN6bufQAuD3PoJDDMt/Kd65nuxwVJG1v9AIPmYXc=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A60581C469A; Sun, 22 Dec 2019 21:46:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1577069182;
 bh=xhwrCJ8Xoujoe8bKGVXlA5SOcfUUmtFzZXgR/ZGxOB0=;
 h=Date:From:To:Subject:From;
 b=nB4FLYN+lif3U1UzgDUHvu3KzHTuN08Qk3Gb5vFOdSE5YnCdwMVPC3Ma27plJx3fn
 Jud7KzNOJ5bCma7hgakqLaiCmOeyyBI7/QENTJ3pUygzHLVEy6eaPLQ0pOUSz0vkWg
 ClJ+44gntIlB3j+E2urMYBLDsNoB6/y8uWyPklY0=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 67E081C0B50
 for <speakup@linux-speakup.org>; Sun, 22 Dec 2019 21:46:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1577069178;
 bh=xhwrCJ8Xoujoe8bKGVXlA5SOcfUUmtFzZXgR/ZGxOB0=;
 h=Date:From:To:Subject:From;
 b=piZlUyCv6A1Bfv+oqss8ExdKHD2xk8pud8bZRGF0in4PH4tKLiRSxW/H60abXppD9
 /5v0ZoKHWFC4hqUKj3DCZH+FZz4GlEpLgwXW9Djaz8Sb4sQyMxlas8c/RQHb6+Ygw6
 hPcbyIABtMzTaVO1OYY3V8p/lhdecHu+naGaCrCs=
Date: Sun, 22 Dec 2019 21:46:18 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: speakup locking box on latest linux 5.3.15-1
Message-ID: <alpine.DEB.2.21.1912222137490.31217@befuddled.reisers.ca>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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

Hello folks: It appears the bug that visited speakup back in late
August is back and active. In kernel version 5.3.15-1 built on
2019-12-07. It can very easily be reproduced by hitting the next-word
or previous-word functions quickly in series. In fact it is veryd
ifficult to not trigger the bug. This is in debian sid BTW. My
machines are amd64 based so I'm not sure if it's active on Intel
processors.

   Kirk




_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
