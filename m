Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id A62E228A072
	for <lists+speakup@lfdr.de>; Sat, 10 Oct 2020 14:46:20 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AF2AC380ED2; Sat, 10 Oct 2020 08:46:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1602333977;
	bh=kocgqLoO27C6htusYR5K7Pmd2J1kjyBakf/dq5KbzP8=;
	h=Date:From:To:Subject:ReSent-Date:ReSent-From:ReSent-To:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=gDxI94ANnoZ+Qgi+d0dCY+dQQ47NZtd7OMq3e7XtzuIP9AZuGGiO+yWJwwvKeEdat
	 PQ57CXok9SvsQo6SX6zsO6CS1l+yG9bD0umiigaFJgFFMZl4/INbnmrgVky5DKibOP
	 7bbuBI37cGiFI7mTGknDBnt7Vc4MzIBdojjmkCKs=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C3D52380BD9;
	Sat, 10 Oct 2020 08:46:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1602333975;
	bh=kocgqLoO27C6htusYR5K7Pmd2J1kjyBakf/dq5KbzP8=;
	h=Date:From:To:Subject:ReSent-Date:ReSent-From:ReSent-To:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=yCMuDr/Z7p8NIMoxHaWcEfkmlsHjXYLBMTCsF2Hk9G1DhbaORhvqxjXqxwZ1nE3Uz
	 eIMIf+nyJu+MzetNYYyhyq8U3oDhdypfgWseUO8rsP5SKNrn/qu9Dkx+b8ixWq1jnT
	 dRp4sOpBDvmJ0wD4ec9Y4h+iXGzu4qlPcaoLbCfg=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 29E0E380B0C; Fri,  9 Oct 2020 19:50:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1602287450;
 bh=O9y+KyagG9y7XftMPTrfECAoLXd2q/butNf/PTUOYxE=;
 h=Date:From:To:Subject:ReSent-Date:ReSent-From:ReSent-To:From;
 b=d7BnvLIzGZ8wJGaZwolM/WHTjDaSipo9ZLEIQoAijiV4u6HCim0VSqTxaNgkyWghE
 K5riRDD2gHlXWdDogywMArvUVYymr1i1kRoxwnSEiSlsywH2YpcGFCNYWNL6E3hhtD
 A9Z7o7k4N9A0M2Su/PLhAJV9nOJLbrnYjLhtdtHM=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 171F838097F
 for <speakup@linux-speakup.org>; Fri,  9 Oct 2020 19:50:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1602287450;
 bh=O9y+KyagG9y7XftMPTrfECAoLXd2q/butNf/PTUOYxE=;
 h=Date:From:To:Subject:ReSent-Date:ReSent-From:ReSent-To:From;
 b=d7BnvLIzGZ8wJGaZwolM/WHTjDaSipo9ZLEIQoAijiV4u6HCim0VSqTxaNgkyWghE
 K5riRDD2gHlXWdDogywMArvUVYymr1i1kRoxwnSEiSlsywH2YpcGFCNYWNL6E3hhtD
 A9Z7o7k4N9A0M2Su/PLhAJV9nOJLbrnYjLhtdtHM=
Date: Fri, 9 Oct 2020 11:19:01 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: So, where'd the volume controls get to?
Message-ID: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
ReSent-Date: Fri, 9 Oct 2020 19:50:37 -0400 (EDT)
ReSent-From: Kirk Reiser <kirk@reisers.ca>
ReSent-To: speakup@linux-speakup.org
ReSent-Subject: So, where'd the volume controls get to?
ReSent-Message-ID: <alpine.DEB.2.23.453.2010091950370.11818@befuddled.reisers.ca>
ReSent-User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
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

Hello Samuel et al: The latest version of speakup appears to have
replaced the volume controls with inflection controls. I don't really
have a problem with this if the volume controls have just been moved
to another key combination but I haven't been able to find where they
are now. I may also be out to lunch but I don't remember any
discussion about moving them or the reason for doing so here on the
list. Can someone clarify the situation for me please?

BTW, a lot of people use the volume controls so I hope they haven't
been arbitrarily removed.

IMO espeakup is still entirely brain dead so a lot of us still have to
use very old versions from back before espeak-en to get decent
performence. It's just an observation.

   Kirk


_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
