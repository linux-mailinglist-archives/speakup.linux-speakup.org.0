Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 26CA72AC5DF
	for <lists+speakup@lfdr.de>; Mon,  9 Nov 2020 21:20:40 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 75D50380F24; Mon,  9 Nov 2020 15:20:39 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7FBF0380ECD;
	Mon,  9 Nov 2020 15:20:38 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id DC2BC380BA0; Mon,  9 Nov 2020 15:20:37 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B73A4380987
 for <speakup@linux-speakup.org>; Mon,  9 Nov 2020 15:20:37 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 4DFC2D3E
 for <speakup@linux-speakup.org>; Mon,  9 Nov 2020 21:20:35 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rahIVrKElri3 for <speakup@linux-speakup.org>;
 Mon,  9 Nov 2020 21:20:34 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr
 (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 7C493533
 for <speakup@linux-speakup.org>; Mon,  9 Nov 2020 21:20:34 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1kcDeT-00FG7o-Bw
 for speakup@linux-speakup.org; Mon, 09 Nov 2020 21:20:33 +0100
Date: Mon, 9 Nov 2020 21:20:33 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Another speakup cut and paste bug and park
Message-ID: <20201109202033.d7e4c46662wdvj65@function>
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
> If you have the park function and cut and paste it selects the wrong
> text. In fact the text it pastes isn't even on the screen but the
> "mark text" spoken and an address of some sort. This should be easily
> reproduced.

And yet I didn't figure out how to reproduce it. Would you have an exact
reproduction scenario?

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
