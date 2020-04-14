Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8861A1A706E
	for <lists+speakup@lfdr.de>; Tue, 14 Apr 2020 03:10:27 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AD33F1C73BE; Mon, 13 Apr 2020 21:10:26 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6FECB1C73C1;
	Mon, 13 Apr 2020 21:09:39 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id DECF31C57DB; Mon, 13 Apr 2020 21:09:34 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id AC2DA1C57B0
 for <speakup@linux-speakup.org>; Mon, 13 Apr 2020 21:09:33 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 39CFD1021
 for <speakup@linux-speakup.org>; Tue, 14 Apr 2020 03:08:52 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GGWVHub-jCUL for <speakup@linux-speakup.org>;
 Tue, 14 Apr 2020 03:08:36 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id B7EF1F08
 for <speakup@linux-speakup.org>; Tue, 14 Apr 2020 03:08:26 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1jOA3j-00FvbS-HX
 for speakup@linux-speakup.org; Tue, 14 Apr 2020 03:08:15 +0200
Date: Tue, 14 Apr 2020 03:08:15 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup soon out of staging?
Message-ID: <20200414010815.t6jtwgzrreauztgg@function>
References: <0e72318b-5271-b55d-c340-0ea13a9d46b0@slint.fr>
 <Pine.LNX.4.64.2004131750320.13363@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.2004131750320.13363@server2.shellworld.net>
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

Chime Hart, le lun. 13 avril 2020 17:54:04 -0700, a ecrit:
> Will these eventual changes ever mean I could run an
> apt install speakup
> Like most other packages?

No, in the Debian case this will be a non-event because Debian was
already including the speakup module in its standard kernel.

What you need, however, is to either configure a hardware synth, or
install a software synth such as espeakup.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
