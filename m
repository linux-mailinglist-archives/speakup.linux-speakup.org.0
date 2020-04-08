Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (unknown [IPv6:2001:470:1d:288:8e89:a5ff:fe59:6a4d])
	by mail.lfdr.de (Postfix) with ESMTP id 058C21A270D
	for <lists+speakup@lfdr.de>; Wed,  8 Apr 2020 18:20:32 +0200 (CEST)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 647E14280480; Wed,  8 Apr 2020 12:20:13 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=cableone.net header.i=@cableone.net header.b="PxuaDn58";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 1FF834280509
	for <lists+speakup@lfdr.de>; Wed,  8 Apr 2020 12:18:19 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CCF011C579D; Wed,  8 Apr 2020 12:18:18 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=cableone.net header.i=@cableone.net header.a=rsa-sha1 header.s=20180516 header.b=PxuaDn58;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6A3381C57F4;
	Wed,  8 Apr 2020 12:16:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id DC8751C0129; Wed,  8 Apr 2020 12:16:32 -0400 (EDT)
Received: from mail.cableone.net (mail2.cableone.syn-alias.com [69.168.106.66])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 142931C0129
 for <speakup@linux-speakup.org>; Wed,  8 Apr 2020 12:16:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha1; d=cableone.net; s=20180516; c=relaxed/simple; 
 q=dns/txt; i=@cableone.net; t=1586362581;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=IqRwL9MA7PBMZTKBjYC1z8bFKXI=;
 b=PxuaDn58ouQ4bRxNXtC4tgFR6xe9H2ihtO2xw7i4VbyiP1IG5TpPIntIBWKftx5w
 y+96eWF/bmJlSaSfouQVhfZmctxOow/hnRJ+fNgh1z/pyMZDE/i8EupwsexX3H5i
 AeE4Zzkdhq7YEDPvbayYfsHtHwvZr4Z3nqy7IwUmQph+/K25yFm6j2zZ9EYtcwi+
 N66OFv/TyJOoE9Lk4root4IlFH0jFe1sES6xdNb13QfEt+Q3F4zz7Y3tvWtMVSNC
 H9rC/6fDFifTpjKOcB5MchmWkYZTGiF+r1OjHtGDdKvYMKGKOMR1cu3gpk3sUXTr
 UC3SRwiIM3f46AS2j8SqCQ==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=EuCsUhUA c=1 sm=1 tr=0
 a=83sKN6Zl7IuxNZWA8nrnjA==:117 a=83sKN6Zl7IuxNZWA8nrnjA==:17
 a=KGjhK52YXX0A:10 a=cl8xLZFz6L8A:10 a=P7xTaY_ng_sA:10
 a=r77TgQKjGQsHNAKrUKIA:9 a=fxJcL_dCAAAA:8 a=lrNvW2i8h_J9R0P1QR8A:9
 a=wPNLvfGTeEIA:10 a=LwE7R6pCFlH8wZhcImkA:9 a=DKOFUVYgRh9mvBms:21
 a=_W_S_7VecoQA:10 a=pHzHmUro8NiASowvMSCR:22 a=6VlIyEUom7LUIeUMNQJH:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
X-Authed-Username: Z2xlbm5lcnZpbkBjYWJsZW9uZS5uZXQ=
Authentication-Results: smtp02.lapis.bos.sync.lan
 smtp.user=glennervin@cableone.net; auth=pass (LOGIN)
Received: from [160.3.126.27] ([160.3.126.27:49473] helo=NUCPPYH)
 by mail.cableone.net (envelope-from <glennervin@cableone.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=DHE-RSA-AES256-SHA) 
 id C8/8C-04467-5D8FD8E5; Wed, 08 Apr 2020 12:16:21 -0400
Message-ID: <001401d60dc1$0b9d8490$7001a8c0@NUCPPYH>
From: "Glenn K0LNY" <glennervin@cableone.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Installing eSpeakup
Date: Wed, 8 Apr 2020 11:16:21 -0500
Organization: Home
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.3790.1830
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
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
Reply-To: Glenn K0LNY <GlennErvin@cableone.net>,
 "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hi,
I keep trying different distros on this netbook, an Asus 701 with little success.
I did get Ubuntu 11.04 working with Orca.
I want to try something newer, so I downloaded Ubuntu Server 14.10, and it will come without the GUI.
So if I can get it talking with eSpeakup, I will try to install Mate or Gnome.
But what are the proper steps to get espeakup going in the CLI after it boots up?
perhaps just apt-get install espeakup?
Or will I need to get something going first?
I have had no luck with Talking Arch or Vinux 4.1.
Thanks.

Glenn


--------------------------------------------------------------------------------


-- 
Ubuntu-accessibility mailing list
Ubuntu-accessibility@lists.ubuntu.com
https://lists.ubuntu.com/mailman/listinfo/ubuntu-accessibility
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
