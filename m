Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2B5C72316E8
	for <lists+speakup@lfdr.de>; Wed, 29 Jul 2020 02:46:57 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 55AA11C0347; Tue, 28 Jul 2020 20:37:59 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7FF6B1C0446;
	Tue, 28 Jul 2020 20:36:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 544C41C02DD; Tue, 28 Jul 2020 20:36:28 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 6E11B1C0170
 for <speakup@linux-speakup.org>; Tue, 28 Jul 2020 20:36:26 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 59C08A608;
 Wed, 29 Jul 2020 02:36:24 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8TYzVrFxfY_g; Wed, 29 Jul 2020 02:36:23 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id C7FF2A5BF;
 Wed, 29 Jul 2020 02:36:23 +0200 (CEST)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1k0a51-003o5G-4E; Wed, 29 Jul 2020 02:36:23 +0200
Date: Wed, 29 Jul 2020 02:36:23 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] staging/speakup: Move out of staging
Message-ID: <20200729003623.d42ljafn6sd7y2be@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Joe Perches <joe@perches.com>, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org, speakup@linux-speakup.org
References: <20200728211208.691249-1-samuel.thibault@ens-lyon.org>
 <c4cb56cca7928f92d642aef467244db434bff26f.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c4cb56cca7928f92d642aef467244db434bff26f.camel@perches.com>
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
Cc: gregkh@linuxfoundation.org, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Joe Perches, le mar. 28 juil. 2020 17:24:47 -0700, a ecrit:
> On Tue, 2020-07-28 at 23:12 +0200, Samuel Thibault wrote:
> > diff --git a/MAINTAINERS b/MAINTAINERS
> []
> > @@ -16077,6 +16077,15 @@ Q:	https://patchwork.kernel.org/project/linux-sparse/list/
> >  B:	https://bugzilla.kernel.org/enter_bug.cgi?component=Sparse&product=Tools
> >  F:	include/linux/compiler.h
> >  
> > +SPEAKUP CONSOLE SPEECH DRIVER
> > +M:	William Hubbs <w.d.hubbs@gmail.com>
> > +M:	Chris Brannon <chris@the-brannons.com>
> > +M:	Kirk Reiser <kirk@reisers.ca>
> > +M:	Samuel Thibault <samuel.thibault@ens-lyon.org>
> > +L:	speakup@linux-speakup.org
> > +W:	http://www.linux-speakup.org/
> > +F:	drivers/accessibility/speakup/
> 
> S:? 	Supported / Maintained / Odd Fixes ?

Ah, yes.  I should have read the documentation at the top, instead of
assuming that "S:" standed for the reason for being in "S"taging.

Submitted a v2.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
