Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 07AB0669D9
	for <lists+speakup@lfdr.de>; Fri, 12 Jul 2019 11:23:58 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1F0D31C42E5; Fri, 12 Jul 2019 05:23:55 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 198561C3760;
	Fri, 12 Jul 2019 05:23:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 5E78E1C31FA; Fri, 12 Jul 2019 05:23:30 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id F0AA41C32AE
 for <speakup@linux-speakup.org>; Fri, 12 Jul 2019 05:23:28 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 80491918D;
 Fri, 12 Jul 2019 11:23:25 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RzIOWer-JWEV; Fri, 12 Jul 2019 11:23:24 +0200 (CEST)
Received: from function (212.99.1.109.rev.sfr.net [109.1.99.212])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id B71A7918A;
 Fri, 12 Jul 2019 11:23:24 +0200 (CEST)
Received: from samy by function with local (Exim 4.92)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1hlrlv-0007Ty-DQ; Fri, 12 Jul 2019 11:23:19 +0200
Date: Fri, 12 Jul 2019 11:23:19 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: speakup@linux-speakup.org
Subject: [HELP REQUESTED from the community] Was: Staging status of speakup
Message-ID: <20190712092319.wmke4i7zqzr26tly@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 speakup@linux-speakup.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Okash Khawaja <okash.khawaja@gmail.com>, devel@driverdev.osuosl.org,
 Kirk Reiser <kirk@reisers.ca>,
 Simon Dickson <simonhdickson@gmail.com>,
 linux-kernel@vger.kernel.org,
 Christopher Brannon <chris@the-brannons.com>
References: <20190315130035.6a8f16e9@narunkot>
 <20190316031831.GA2499@kroah.com>
 <20190706200857.22918345@narunkot>
 <20190707065710.GA5560@kroah.com> <20190712083819.GA8862@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712083819.GA8862@kroah.com>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: devel@driverdev.osuosl.org, Simon Dickson <simonhdickson@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hello,

To readers of the linux-speakup: could you help on this so we can get
Speakup in mainline?  Neither Okash or I completely know what user
consequences the files in /sys/accessibility/speakup/ have, so could
people give brief explanations for each file (something like 3-6 lines
of explanation)?

The i18n/ files have been already documented in section 14.1 of the
spkguide.txt, so we do not need help for them.

Thanks!
Samuel

Greg KH, le ven. 12 juil. 2019 10:38:19 +0200, a ecrit:
> Can you make up a patch to create a
> drivers/staging/speakup/sysfs-speakup file with the needed information?
> That way it will be much easier to determine exactly what these sysfs
> files do and my review can be easier, and perhaps not needed at all :)
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
