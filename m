Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 139F334EEE
	for <lists+speakup@lfdr.de>; Tue,  4 Jun 2019 19:33:15 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 416721C6B71; Tue,  4 Jun 2019 13:33:14 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=slint.fr header.i=@slint.fr header.b="JMBHY5XZ";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0C8CA1C6B89;
	Tue,  4 Jun 2019 13:32:59 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id E70421C6B3D; Tue,  4 Jun 2019 13:32:56 -0400 (EDT)
Received: from pause.o2switch.cloud (pause.o2switch.cloud [109.234.163.75])
 by befuddled.reisers.ca (Postfix) with ESMTPS id CF78D1C5B68
 for <speakup@linux-speakup.org>; Tue,  4 Jun 2019 13:32:55 -0400 (EDT)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamScore: s
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
 score=1.202, required 5, autolearn=disabled, DKIM_INVALID 0.10,
 DKIM_SIGNED 0.10, SPF_HELO_NONE 0.00, SPF_NONE 0.00,
 URIBL_BLOCKED 1.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
 Service Provider for details
X-MailPropre-MailScanner-ID: 97C9F10077C.A6222
X-MailPropre-MailScanner-Information: Please contact the ISP for more
 information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
 s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
 :Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZaQ4r8V5EA9WfW6SLgE4y6LSbIiu6w1+GtocWqhAeAo=; b=JMBHY5XZPyJ875ihrT/iYwkrR7
 NeK2iDAA6hL6hTWeU3bWz0/i19sU0mxEvVBG2zJHVETjWRzFrENt0/kWypz7VgNgHIgXJk8drNY6C
 7uoHC7OwD/h6k/WraC/5DFGxN8mHnFoDH2reAns3qEdqksHTM9yQ6ksSeEfXHuIPUOAU=;
Subject: Re: Are Their Any Ways of Running ChromeVox in a Console?
To: speakup@linux-speakup.org
References: <Pine.LNX.4.64.1906040900190.4430@server2.shellworld.net>
From: Didier Spaier <didier@slint.fr>
Openpgp: preference=signencrypt
Message-ID: <2f7733d6-1e7b-afb4-34ac-65afcb6de171@slint.fr>
Date: Tue, 4 Jun 2019 19:32:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.1906040900190.4430@server2.shellworld.net>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - fox.o2switch.net
X-AntiAbuse: Original Domain - linux-speakup.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - slint.fr
X-Get-Message-Sender-Via: fox.o2switch.net: authenticated_id: didier@slint.fr
X-Authenticated-Sender: fox.o2switch.net: didier@slint.fr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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

Hi Chime,

yes, I happened  to try the stuff provided by Kirk today with his help and could check that it still works (binaries from 2016, chrome from ChromeOS).

It is also possible to use the voices linked to by Speech-Dispactcher in Chromevox installed as a Chromium add-on.

Unfortunately these voices won't work with speakup if you use espeakup. However you can have all using speechd-up. There is also fenrir.

All this said, I wouldn't rule out that your issue can be solved through a proper setting of speakup itself.

Best,
Didier



On 04/06/2019 18:04, Chime Hart wrote:
> I remember Kirk wrote a way of running Chromevox but I think it was mostly an interface to a graphical setup? On a laptop, I have been enjoying Voxin for a number of years, however, now I hear double speech, while arrowing down, I hear some of a previous line mixed with the current line. An Android speech which I enjoy on a Chrome Book, sound wonderful, so I wonder if I can enjoy that with Speakup? Thanks so much in advance
> Chime
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> 
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
