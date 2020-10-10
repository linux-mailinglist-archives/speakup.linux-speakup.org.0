Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id A9A2128A13B
	for <lists+speakup@lfdr.de>; Sat, 10 Oct 2020 21:46:17 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 43744380BB4; Sat, 10 Oct 2020 15:46:17 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1FCD9380B44;
	Sat, 10 Oct 2020 15:46:15 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C0492380B32; Sat, 10 Oct 2020 15:46:14 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 9A68A380B2E
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 15:46:14 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 8AF05573
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 21:46:13 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LzkDeeibh-4P for <speakup@linux-speakup.org>;
 Sat, 10 Oct 2020 21:46:13 +0200 (CEST)
Received: from function (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr
 [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 10A4525D
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 21:46:13 +0200 (CEST)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1kRKom-002QV9-5P
 for speakup@linux-speakup.org; Sat, 10 Oct 2020 21:46:12 +0200
Date: Sat, 10 Oct 2020 21:46:12 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Flushing issue (was: So, where'd the volume controls get to?)
Message-ID: <20201010194612.ut6md7liw4e47ky7@function>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Kirk Reiser, le sam. 10 oct. 2020 14:56:38 -0400, a ecrit:
> The voice doesn't flush quickly enough to be able to move up and down
> with either the review keys or arrow keys so it generates a jumbling
> of voices which is completely unusable when moving quickly.

Ok.  Which versions of espeakup and espeak-ng do you use exactly?  I
do remember fixing some things in that regard, and it was then working
fine.  When I'm testing with the versions of Debian 10 for instance,
when I move around extremely quickly, the espeak-ng speech synthesis
doesn't even have the time to speak anything (since I interrupt it
extremely quickly)

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
