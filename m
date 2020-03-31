Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id DE9E819A06D
	for <lists+speakup@lfdr.de>; Tue, 31 Mar 2020 23:06:26 +0200 (CEST)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id C0F14428046E; Tue, 31 Mar 2020 17:06:25 -0400 (EDT)
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 856A54280502
	for <lists+speakup@lfdr.de>; Tue, 31 Mar 2020 17:02:56 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 758C61C57C9; Tue, 31 Mar 2020 17:02:56 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DCA941C73C6;
	Tue, 31 Mar 2020 17:01:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 67F451C57AE; Tue, 31 Mar 2020 17:01:26 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 8CDEE1C0129
 for <speakup@linux-speakup.org>; Tue, 31 Mar 2020 17:01:22 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id BDCB22F33;
 Tue, 31 Mar 2020 23:01:15 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MPeLkAHGjvCI; Tue, 31 Mar 2020 23:01:14 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id D0CA91CA8;
 Tue, 31 Mar 2020 23:01:14 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1jJO0X-00HQbc-MN; Tue, 31 Mar 2020 23:01:13 +0200
Date: Tue, 31 Mar 2020 23:01:13 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: trouble booting debian10.3 with speakup
Message-ID: <20200331210113.5aejgk5kfwcau7s7@function>
References: <E1jJNjh-0001Je-B6@rings.ka0vba.ampr.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1jJNjh-0001Je-B6@rings.ka0vba.ampr.org>
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
Cc: ka0vba@dicom.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

D. Curtis Willoughby, le mar. 31 mars 2020 14:43:49 -0600, a ecrit:
> I'll skip the gory details of how I had to boot the usb stick.
> If you really want them, I can provide.

That could have its importance, yes. I have heard that e.g. unetbootin
does horrible hacks which could very well have impact over what actually
happens in the installer. Normally all you need to do to write the usb
stick is a mere "dd" command, nothing more.

>  They included "fb=false", "graphics=no", or "graphics=none",

They should not be needed at all, 's' is enough to stay in text mode.

> and always ending up with "debconf/priority=medium".

Note that you can also change that from within the installer: at the
first menu, type character '<' to get back to the main menu, from which
you can choose "Change debconf priority".

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
