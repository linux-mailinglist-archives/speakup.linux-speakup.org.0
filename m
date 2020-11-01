Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id CBFA12A21DD
	for <lists+speakup@lfdr.de>; Sun,  1 Nov 2020 22:24:02 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 65ABA380F12; Sun,  1 Nov 2020 16:24:02 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BC69F380F21;
	Sun,  1 Nov 2020 16:23:59 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C4A85380F0E; Sun,  1 Nov 2020 16:23:58 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id A204F380EE7
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 16:23:58 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 8F00794B
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 22:23:57 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3u03skGaATNs for <speakup@linux-speakup.org>;
 Sun,  1 Nov 2020 22:23:57 +0100 (CET)
Received: from function (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr
 [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 0E3BA7A2
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 22:23:57 +0100 (CET)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1kZKpP-009swg-Pr
 for speakup@linux-speakup.org; Sun, 01 Nov 2020 22:23:55 +0100
Date: Sun, 1 Nov 2020 22:23:55 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: reading cursor sync bug
Message-ID: <20201101212355.gqplxxbpn2hauceq@function>
References: <alpine.DEB.2.23.453.2010312053480.568552@befuddled.reisers.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.23.453.2010312053480.568552@befuddled.reisers.ca>
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

Hello,

Kirk Reiser, le sam. 31 oct. 2020 21:02:27 -0400, a ecrit:
> when one moves from console to console the reading cursor stays where
> it was most of the time instead of being sync'd to the screen cursor
> upon accessing the console.

So the reading position should be always forgotten when switching
between consoles if parking is not enabled?

(I don't see anything in the source code that would implement this,
that'd explain why it doesn't happen :) )

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
