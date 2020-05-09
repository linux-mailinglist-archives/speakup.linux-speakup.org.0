Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F33D81CC424
	for <lists+speakup@lfdr.de>; Sat,  9 May 2020 21:34:11 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 546691C57CA; Sat,  9 May 2020 15:34:10 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F188C1C57B7;
	Sat,  9 May 2020 15:33:00 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 05F821C57B4; Sat,  9 May 2020 15:32:51 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 08C531C0129
 for <speakup@linux-speakup.org>; Sat,  9 May 2020 15:32:46 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id A992123D0
 for <speakup@linux-speakup.org>; Sat,  9 May 2020 21:32:40 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bZzc7PmewTH5 for <speakup@linux-speakup.org>;
 Sat,  9 May 2020 21:32:39 +0200 (CEST)
Received: from function (unknown [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 7D76F23CA
 for <speakup@linux-speakup.org>; Sat,  9 May 2020 21:32:39 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1jXVDC-00BYJc-BS
 for speakup@linux-speakup.org; Sat, 09 May 2020 21:32:38 +0200
Date: Sat, 9 May 2020 21:32:38 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: acsint support in espeakup
Message-ID: <20200509193238.fpzna4j2k2rwwi4b@function>
References: <de1e60e2-1ebc-77c2-3e90-0d0adfa6b532@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <de1e60e2-1ebc-77c2-3e90-0d0adfa6b532@gmail.com>
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

Alexander Epaneshnikov, le sam. 09 mai 2020 21:28:30 +0300, a ecrit:
> hello everyone. i started working on espeakup source code and found
> support for something called acsint <https://github.com/eklhad/acsint>
> As I understand, this is another kernel space screen reader.

More precisely, it exposes some kernel support to userland, to intercept
the keyboard presses, the printed text, etc.

> it's support in espeakup looks strange and unfinished to me.

IIRC it's completely independent from speakup, although it uses the same
kind of interception tools in the kernel.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
