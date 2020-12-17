Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7D63A2DD8F0
	for <lists+speakup@lfdr.de>; Thu, 17 Dec 2020 19:59:49 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8AF7D380F4E; Thu, 17 Dec 2020 13:59:48 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4C84F380F2D;
	Thu, 17 Dec 2020 13:59:47 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 19EA4380C19; Thu, 17 Dec 2020 13:59:46 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id E80C3380BF2
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 13:59:45 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 6E377161C
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 19:59:44 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WUEw67zbe4dL for <speakup@linux-speakup.org>;
 Thu, 17 Dec 2020 19:59:43 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id B7A281619
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 19:59:43 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1kpyV4-007r0F-QY
 for speakup@linux-speakup.org; Thu, 17 Dec 2020 19:59:42 +0100
Date: Thu, 17 Dec 2020 19:59:42 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Efficiently using terminal with screenreader
Message-ID: <20201217185942.ilfu5kbg2lmcwidi@function>
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
 <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
 <20201216130002.GA5313@rednote.net>
 <Pine.LNX.4.64.2012161636510.3602815@server2.shellworld.net>
 <53240DEC-4237-4D6C-9820-30DE24C3904E@icloud.com>
 <f1d6bafe-2326-cd8f-5889-191a2cd7b2e6@math.wisc.edu>
 <20201217184038.h7b764gsfxtjag4i@function>
 <B7379CEB-D226-42D2-B99A-46558F5B7D4D@speedpost.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <B7379CEB-D226-42D2-B99A-46558F5B7D4D@speedpost.net>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
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

WmFjaGFyeSBLbGluZSwgbGUgamV1LiAxNyBkw6ljLiAyMDIwIDEwOjU1OjEzIC0wODAwLCBhIGVj
cml0Ogo+IGJ1dCBkb2VzbuKAmXQgc3VwcG9ydCB1c2luZyBzeW50aHMgaW4gbmF0aXZlIFVTQiBt
b2RlLgoKRG9uJ3QgdGhlc2Ugc2ltcGx5IGV4cG9zZSBhIC9kZXYvdHR5VVNCMCBwb3J0PwoKU2Ft
dWVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwZWFr
dXAgbWFpbGluZyBsaXN0ClNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKaHR0cDovL2xpbnV4LXNw
ZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCg==
