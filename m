Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 8D8921C811
	for <lists+speakup@lfdr.de>; Tue, 14 May 2019 13:58:28 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C3C731C6B38; Tue, 14 May 2019 07:58:27 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=slint.fr header.i=@slint.fr header.b="UMFBghhK";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 936511C6B56;
	Tue, 14 May 2019 07:58:20 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C1A8B1C438E; Tue, 14 May 2019 07:58:18 -0400 (EDT)
Received: from mta01.o2sgrey.fr (mta01.o2sgrey.fr [109.234.163.27])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 039531C42E9
 for <speakup@linux-speakup.org>; Tue, 14 May 2019 07:58:16 -0400 (EDT)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
 score=0.2, required 5, autolearn=disabled, DKIM_INVALID 0.10,
 DKIM_SIGNED 0.10)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
 Service Provider for details
X-MailPropre-MailScanner-ID: 6CF6D1006DD.A60CB
X-MailPropre-MailScanner-Information: Please contact the ISP for more
 information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
 s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
 :Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QxjoHFJhc9QsD2ABXjh/W6Q8cabyfysj1HVCB6JQwMc=; b=UMFBghhKJy0RyHu5oaPHhrPIDk
 EFKx2+pec/0xe1vFtfraTgsCFvOVkiP5TaqW9DFG9iKluXH0QnxfZGKFdqB7x1UO+NkfhD4lo28fa
 tRzpU8PinsrVMfQkXqdDL8Lmvdcex/O5w6ZtDiEW2U+5dg8PaUlCYXEhJeHVenPXxKFI=;
Subject: Re: Speakup in Linux Open Source Summit
To: speakup@linux-speakup.org
References: <20190328065758.0e9e22e8@narunkot>
 <20190328072849.kzskubg7odjviggh@function> <20190329110435.73055c5b@narunkot>
 <20190329150458.tw3anliht2ygum53@function> <20190330000206.GA4764@gregn.net>
 <20190330070217.5ndkklpfvjkt5gse@function>
 <20190401092906.GB14459@rednote.net>
 <20190401122626.2qfq5x36u4rqqpua@function>
 <CAOtcWM1xNZ+g8fcLiwdaUEi_p=MBTzGRkd6oj6o1z3SH8=exbA@mail.gmail.com>
 <20190514074912.597ad058@narunkot> <20190514070431.uzd6ob2bz3re22m3@function>
From: Didier Spaier <didier@slint.fr>
Openpgp: preference=signencrypt
Message-ID: <a8d5c701-5b8f-e493-ae45-9c6d54de0561@slint.fr>
Date: Tue, 14 May 2019 13:58:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514070431.uzd6ob2bz3re22m3@function>
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

On 14/05/2019 09:04, Samuel Thibault wrote:
> Okash Khawaja, le mar. 14 mai 2019 07:49:12 +0100, a ecrit:
>> Today I received confirmation that our proposal for speakup
>> presentation at Linux Open Source Summit has been accepted :) Thanks
>> everyone for the suggestions and comments.

Good, keep up the hard work!

And the next step will be to make speakup able to recognize
characters in a framebuffer :D

Didier
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
