Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EDF9F12D874
	for <lists+speakup@lfdr.de>; Tue, 31 Dec 2019 12:43:15 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 06F861C46C1; Tue, 31 Dec 2019 06:43:12 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=rednote.net header.i=@rednote.net header.b="NDqgHRl8";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B01071C46CA;
	Tue, 31 Dec 2019 06:41:48 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C38F91C0145; Tue, 31 Dec 2019 06:41:36 -0500 (EST)
Received: from opera.rednote.net (opera.rednote.net
 [IPv6:2600:3c03::f03c:91ff:fe70:e783])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 0E5541C0145
 for <speakup@linux-speakup.org>; Tue, 31 Dec 2019 06:41:32 -0500 (EST)
Received: from rednote.net (localhost [127.0.0.1])
 by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id xBVBfTOS184661
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
 for <speakup@linux-speakup.org>; Tue, 31 Dec 2019 11:41:29 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net xBVBfTOS184661
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rednote.net;
 s=default; t=1577792489;
 bh=tGWJdWrsdTy2++97byDRKs9TklUIjMnxluqccIHLOk0=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=NDqgHRl81m7kGngCcDazK4/CGuEujiBDNUZBECLmfwKbUQ+H+7Kx1y0NmZeQApCkH
 arbccRsw46HxtwftOIUMFM7DOCBBjKJc3htSsbuko2vnfPHzoNDKwuery7WW0cFTvq
 WdIouwWs5/xd3zBQ8fm0M2xNfCSkhlLpyC7EDPgU=
Received: (from janina@localhost)
 by rednote.net (8.15.2/8.15.2/Submit) id xBVBfT9d184660
 for speakup@linux-speakup.org; Tue, 31 Dec 2019 06:41:29 -0500
Date: Tue, 31 Dec 2019 06:41:29 -0500
From: Janina Sajka <janina@rednote.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup locking box on latest linux 5.3.15-1
Message-ID: <20191231114129.GA1937@rednote.net>
References: <alpine.DEB.2.21.1912222137490.31217@befuddled.reisers.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1912222137490.31217@befuddled.reisers.ca>
X-Operating-System: Linux opera.rednote.net 5.0.17-300.fc30.x86_64
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Kirk:

I think I'm also seeing this on my Arch system.

The behavior is speech dies, and there seems no way to get it back short
of a reboot.

Best,

Janina

Kirk Reiser writes:
> Hello folks: It appears the bug that visited speakup back in late
> August is back and active. In kernel version 5.3.15-1 built on
> 2019-12-07. It can very easily be reproduced by hitting the next-word
> or previous-word functions quickly in series. In fact it is veryd
> ifficult to not trigger the bug. This is in debian sid BTW. My
> machines are amd64 based so I'm not sure if it's active on Intel
> processors.
> 
>   Kirk
> 
> 
> 
> 
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

-- 

Janina Sajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
