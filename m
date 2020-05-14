Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id C98C21D2E2F
	for <lists+speakup@lfdr.de>; Thu, 14 May 2020 13:23:50 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9FBE51C0818; Thu, 14 May 2020 07:23:49 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 76ACC1C0AD9;
	Thu, 14 May 2020 07:22:35 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 5FE6F1C0828; Thu, 14 May 2020 07:22:28 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 225401C080D
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 07:22:26 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 492B2A1
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 13:22:21 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NQDXo8teFR02 for <speakup@linux-speakup.org>;
 Thu, 14 May 2020 13:22:19 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 5CB493A24
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 13:22:19 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1jZBwP-008U68-Tj
 for speakup@linux-speakup.org; Thu, 14 May 2020 13:22:17 +0200
Date: Thu, 14 May 2020 13:22:17 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: calling all dectalk users
Message-ID: <20200514112217.a6wnuys6d4joepjo@function>
References: <20200514022100.GA6582@gregn.net>
 <Pine.LNX.4.64.2005132206150.8251@server2.shellworld.net>
 <20200514075051.izikiby5hcvbx6kk@function>
 <Pine.LNX.4.64.2005140319240.11727@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.2005140319240.11727@server2.shellworld.net>
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

Chime Hart, le jeu. 14 mai 2020 03:22:34 -0700, a ecrit:
> Hi Sam: I didn't notice any changes in intonation. I just ran them again.

Do you know if your dectalk usually support intonation change? These
were really the documented way to change it. Perhaps you can emphasize
the change:

echo "[:dv ap 112 pr 50] First test [:dv ap 112 pr 200] Second test [:dv ap 113] Third test" >> /sys/accessibility/speakup/synth_direct

would make even more of a difference

samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
