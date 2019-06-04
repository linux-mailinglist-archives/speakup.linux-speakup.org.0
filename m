Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5D1B434E3B
	for <lists+speakup@lfdr.de>; Tue,  4 Jun 2019 19:02:25 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 80E541C6B6D; Tue,  4 Jun 2019 13:02:24 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=slint.fr header.i=@slint.fr header.b="dGpECCyU";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8F32A1C6B88;
	Tue,  4 Jun 2019 13:01:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C6F5B1C6B3D; Tue,  4 Jun 2019 13:01:52 -0400 (EDT)
Received: from split.o2switch.cloud (split.o2switch.cloud [109.234.163.63])
 by befuddled.reisers.ca (Postfix) with ESMTPS id E281C1C5B68
 for <speakup@linux-speakup.org>; Tue,  4 Jun 2019 13:01:50 -0400 (EDT)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamScore: s
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
 score=1.202, required 5, autolearn=disabled, DKIM_INVALID 0.10,
 DKIM_SIGNED 0.10, SPF_HELO_NONE 0.00, SPF_NONE 0.00,
 URIBL_BLOCKED 1.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
 Service Provider for details
X-MailPropre-MailScanner-ID: 35F3B100729.A3E74
X-MailPropre-MailScanner-Information: Please contact the ISP for more
 information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
 s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
 :Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=V5C24ufoDN580bYGVyRV+joeustpjYj2ltFpcQr8ZKo=; b=dGpECCyU8QeQ239Wm7X7k0b/VG
 tl9E0K9B/9wBOrgkgw5c2v0hDFBunS4ukKb14W+zg8Qx8KUPha3DTPcjxMt0RsWj0S+EQ+vHIw2os
 ygXCUZNAhxKnb1gLEAg+5Hcfgy5G8WxqHkYzvMeAvi4K/WxFiGh9q6SB1N3ICGvvcZgI=;
Subject: Re: Can An Application Automaticly Switch Among Cursoring
 on-and-Highlight Tracking?
To: speakup@linux-speakup.org
References: <Pine.LNX.4.64.1906040854270.4358@server2.shellworld.net>
From: Didier Spaier <didier@slint.fr>
Openpgp: preference=signencrypt
Message-ID: <8d3bff92-b1c0-d6bd-c375-3e1e31d14c69@slint.fr>
Date: Tue, 4 Jun 2019 19:01:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.1906040854270.4358@server2.shellworld.net>
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
Only way I can think of is to programmatically simulate the key presses for toggling, as I can't find any related parameter in /sys/accessibility/speakup to echo the value on.
Dider

On in teh /sys/acces 04/06/2019 18:00, Chime Hart wrote:
> Hi All: A majority of the time I keep an option as "cursoring on" however, as an example, alsamixer works a bit better in hightlight tracking. 1 of our Linux experts is trying to write me a Podcast client, however, in "kersoring" it says nothing while arrowing. Would their be something simple to tell Speakup to switch to this other mode? Sort of like writing set files in Vocal-Eyes for a specific application? Thanks so much in advance-and-will be back with another inquiree
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
