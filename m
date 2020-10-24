Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 320E5297B91
	for <lists+speakup@lfdr.de>; Sat, 24 Oct 2020 11:06:19 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BB39D380EE4; Sat, 24 Oct 2020 05:06:18 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4429F380EA8;
	Sat, 24 Oct 2020 05:06:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A6383380BC2; Sat, 24 Oct 2020 05:06:15 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 8286B380997
 for <speakup@linux-speakup.org>; Sat, 24 Oct 2020 05:06:15 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 53F6A3B0
 for <speakup@linux-speakup.org>; Sat, 24 Oct 2020 11:06:11 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K2FF7GL9k2nq for <speakup@linux-speakup.org>;
 Sat, 24 Oct 2020 11:06:10 +0200 (CEST)
Received: from function (unknown [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 76F8E1D0
 for <speakup@linux-speakup.org>; Sat, 24 Oct 2020 11:06:10 +0200 (CEST)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1kWFV3-009Huw-Ld
 for speakup@linux-speakup.org; Sat, 24 Oct 2020 11:06:09 +0200
Date: Sat, 24 Oct 2020 11:06:09 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Cut-and-Paste Kernel Errors
Message-ID: <20201024090609.huv2mvwikpjkl66i@function>
References: <57a81192-89a4-1671-f440-884f2d4129c@hubert-humphrey.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <57a81192-89a4-1671-f440-884f2d4129c@hubert-humphrey.com>
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

Chime Hart, le ven. 23 oct. 2020 19:01:28 -0700, a ecrit:
> I get these kernel hunt announcements about task hung

Please report the announcement to the list so we can have a look at the
bug. You can find it somewhere in /var/log/kernel.log

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
