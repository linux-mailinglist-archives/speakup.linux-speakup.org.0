Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 90B672D67E9
	for <lists+speakup@lfdr.de>; Thu, 10 Dec 2020 21:03:11 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 59936381038; Thu, 10 Dec 2020 15:03:10 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0E08338100C;
	Thu, 10 Dec 2020 15:03:10 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 8BC1A380EB0; Thu, 10 Dec 2020 15:03:08 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 6B50F380BC8
 for <speakup@linux-speakup.org>; Thu, 10 Dec 2020 15:03:08 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 24279D18;
 Thu, 10 Dec 2020 21:03:07 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id whk9VzjqCmXX; Thu, 10 Dec 2020 21:03:06 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr
 (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 8088AA25;
 Thu, 10 Dec 2020 21:03:06 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1knS9Z-00AfPJ-Pf; Thu, 10 Dec 2020 21:03:05 +0100
Message-Id: <20201210200123.451204785@ens-lyon.org>
User-Agent: quilt/0.65
Date: Thu, 10 Dec 2020 21:01:23 +0100
From: samuel.thibault@ens-lyon.org
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [patch 0/3] speakup: simplify relation between line disc and synth
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
Cc: speakup@linux-speakup.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

This series reworks the relation between the speakup line discipline and the
speakup synthesizers. This is probably fixing a few minor issues, but since it
is invasive it'll better wait for 5.11.

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
