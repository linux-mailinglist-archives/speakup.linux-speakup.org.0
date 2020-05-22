Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 021271DEE2D
	for <lists+speakup@lfdr.de>; Fri, 22 May 2020 19:26:37 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 887881C0D60; Fri, 22 May 2020 13:26:36 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 953751C0D8D;
	Fri, 22 May 2020 13:26:07 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 78BDA1C0D50; Fri, 22 May 2020 13:26:05 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B3D431C0D4C
 for <speakup@linux-speakup.org>; Fri, 22 May 2020 13:26:04 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 9D2733BA9;
 Fri, 22 May 2020 19:25:33 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f7N5Eo55GPMW; Fri, 22 May 2020 19:25:32 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 6214F3B89;
 Fri, 22 May 2020 19:25:32 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1jcBQJ-00HAVN-9Y; Fri, 22 May 2020 19:25:31 +0200
Date: Fri, 22 May 2020 19:25:31 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] taging: speakup: remove volatile
Message-ID: <20200522172531.va2hi6jqog3a6473@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Joe Perches <joe@perches.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 MugilRaj <dmugil2000@gmail.com>, devel@driverdev.osuosl.org,
 Kirk Reiser <kirk@reisers.ca>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
 Chris Brannon <chris@the-brannons.com>
References: <1590138989-6091-1-git-send-email-dmugil2000@gmail.com>
 <20200522103406.GK30374@kadam>
 <6ab4139ec78928961a19e5fdbda139bb8cff9cb5.camel@perches.com>
 <20200522171312.s2ciifuxozwav2ym@function>
 <162676bb69044efadd31daa9ea49fc6fb9664297.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162676bb69044efadd31daa9ea49fc6fb9664297.camel@perches.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
 MugilRaj <dmugil2000@gmail.com>, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Joe Perches, le ven. 22 mai 2020 10:22:03 -0700, a ecrit:
> > Put another way: I don't think putting any hint here would help, on the
> > contrary, somebody has to really look at what protection is needed,
> > without getting influenced by rules-of-thumb.
> 
> checkpatch newbies/robots will submit this change again otherwise.

Ah, ok, right.

I don't think removing volatiles is a thing for newbies, 

> Comment wording can always be improved.

I'd then suggest

/* TODO: determine what proper synchronization "volatile" should be
 * replaced with.  */

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
