Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 981501D4060
	for <lists+speakup@lfdr.de>; Thu, 14 May 2020 23:46:21 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DADE51C0BE1; Thu, 14 May 2020 17:46:20 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7FB501C0C72;
	Thu, 14 May 2020 17:45:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7EB851C0B32; Thu, 14 May 2020 17:45:41 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id E924E1C0B22
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 17:45:39 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id C9F7AF476
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 23:45:38 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RJlv1BapvbkV for <speakup@linux-speakup.org>;
 Thu, 14 May 2020 23:45:37 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id A866FF475
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 23:45:37 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1jZLfc-00Awgb-Fq
 for speakup@linux-speakup.org; Thu, 14 May 2020 23:45:36 +0200
Date: Thu, 14 May 2020 23:45:36 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: calling all dectalk users
Message-ID: <20200514214536.l34etv744ydn6vsk@function>
References: <20200514022100.GA6582@gregn.net>
 <Pine.LNX.4.64.2005141023131.14733@server2.shellworld.net>
 <20200514204058.GA6486@gregn.net>
 <Pine.LNX.4.64.2005141735240.20179@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.2005141735240.20179@server2.shellworld.net>
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

Karen Lewellen, le jeu. 14 mai 2020 17:37:47 -0400, a ecrit:
> I wonder how Linux users discover all these steps, if not on this list?

It is documented in the Debian installation manual

The accessibility wiki
https://wiki.debian.org/accessibility

contains a pointer to the precise chapter
https://www.debian.org/releases/stable/i386/ch05s02

> Out of curiosity, the install would not find a dectalk connected via USB why
> exactly?

Because USB autodetection is still on the speakup TODO list.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
