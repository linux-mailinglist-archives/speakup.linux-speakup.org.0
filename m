Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CBF6D1DEDF6
	for <lists+speakup@lfdr.de>; Fri, 22 May 2020 19:15:01 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0F62E1C0D56; Fri, 22 May 2020 13:15:01 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EDF941C0D5B;
	Fri, 22 May 2020 13:13:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id E839E1C0D4E; Fri, 22 May 2020 13:13:49 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id A02911C07F4
 for <speakup@linux-speakup.org>; Fri, 22 May 2020 13:13:48 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 69A153968;
 Fri, 22 May 2020 19:13:17 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xn3rcvaificZ; Fri, 22 May 2020 19:13:15 +0200 (CEST)
Received: from function (unknown [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 7B3002E76;
 Fri, 22 May 2020 19:13:15 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1jcBEO-00HA74-1l; Fri, 22 May 2020 19:13:12 +0200
Date: Fri, 22 May 2020 19:13:12 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] taging: speakup: remove volatile
Message-ID: <20200522171312.s2ciifuxozwav2ym@function>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6ab4139ec78928961a19e5fdbda139bb8cff9cb5.camel@perches.com>
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

Joe Perches, le ven. 22 mai 2020 09:36:05 -0700, a ecrit:
> On Fri, 2020-05-22 at 13:34 +0300, Dan Carpenter wrote:
> > On Fri, May 22, 2020 at 02:46:28PM +0530, MugilRaj wrote:
> > > fix checkpatch.pl warning, which is Use of volatile is usually wrong: see
> > > Documentation/process/volatile-considered-harmful.rst
> > > Signed-off-by: MugilRaj <dmugil2000@gmail.com>
> > 
> > Please put a blank before the Signed-off-by line.
> > 
> > Probably there should be a space between your first and last name.  It's
> > supposed to your legal name like for signing a legal document so use
> > whatever is appropriate legal documents in your country.
> > 
> > Also the Documentation/process/volatile-considered-harmful.rst explains
> > that people often use "volatile" when they should be using locking for
> > synchronization.  That seems to be the case here.  So the correct fix is
> > to add locking.  That's a little bit complicated to do and requires
> > testing.
> > 
> > If we apply this patch, then we have silenced the warning so now someone
> > will have to look for the bug.  But if we leave it as-is, then everyone
> > will know that the code is buggy.  So let's leave it as-is until we are
> > able to fix the bug.
> > 
> > It's always better to have easy to find bugs, than hidden bugs.
> 
> And better still to comment known opportunities to
> improve the code so the next time someone tries to
> remove this volatile, there's a comment right there
> showing what's necessary instead.

Actually I don't think adding the suggestion is a good thing if it's
only a "rule-of-thumb-replace-volatile-with-lock".

Actually possibly volatile might not even be needed because there could
be already a lock protecting this.

Put another way: I don't think putting any hint here would help, on the
contrary, somebody has to really look at what protection is needed,
without getting influenced by rules-of-thumb.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
