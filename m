Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E55C9231E71
	for <lists+speakup@lfdr.de>; Wed, 29 Jul 2020 14:20:25 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 11CBD1C055F; Wed, 29 Jul 2020 08:20:25 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8CBC71C06AF;
	Wed, 29 Jul 2020 08:19:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id E66EB1C047E; Wed, 29 Jul 2020 08:19:41 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 6C9261C047A
 for <speakup@linux-speakup.org>; Wed, 29 Jul 2020 08:19:40 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 9E8F214A6;
 Wed, 29 Jul 2020 14:19:38 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2yM3dG0QQnhW; Wed, 29 Jul 2020 14:19:38 +0200 (CEST)
Received: from function (unknown [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id EC929148D;
 Wed, 29 Jul 2020 14:19:37 +0200 (CEST)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1k0l3Y-0051na-9a; Wed, 29 Jul 2020 14:19:36 +0200
Date: Wed, 29 Jul 2020 14:19:36 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCHv2] staging/speakup: Move out of staging
Message-ID: <20200729121936.6ajd3b6vc5oox2aw@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 speakup@linux-speakup.org
References: <20200729003531.907370-1-samuel.thibault@ens-lyon.org>
 <20200729120533.GA2883831@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200729120533.GA2883831@kroah.com>
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
Cc: speakup@linux-speakup.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Greg KH, le mer. 29 juil. 2020 14:05:33 +0200, a ecrit:
> On Wed, Jul 29, 2020 at 02:35:31AM +0200, Samuel Thibault wrote:
> > The nasty TODO items are done.
> > 
> > Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
> 
> Now applied, thanks for all of the work so far.
> 
> I will be glad to merge patches for this subsystem to Linus if you want
> me to collect them.  If so, feel free to forward them on to me, or send
> me a pull request.

Ok!

Thanks,
Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
