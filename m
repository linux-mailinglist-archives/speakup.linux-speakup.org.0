Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 05BF17442F
	for <lists+speakup@lfdr.de>; Thu, 25 Jul 2019 06:04:34 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 54F6A1C4389; Thu, 25 Jul 2019 00:04:32 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 047701C43C4;
	Thu, 25 Jul 2019 00:04:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A8BB61C3651; Thu, 25 Jul 2019 00:04:10 -0400 (EDT)
Received: from hurricane.the-brannons.com (hurricane.the-brannons.com
 [71.19.155.94])
 by befuddled.reisers.ca (Postfix) with ESMTP id DD71A1C31F1
 for <speakup@linux-speakup.org>; Thu, 25 Jul 2019 00:04:09 -0400 (EDT)
Received: from localhost (unknown [IPv6:2602:61:7344:8d00::a00b:8ad9])
 by hurricane.the-brannons.com (Postfix) with ESMTPSA id F151A77888;
 Wed, 24 Jul 2019 21:04:08 -0700 (PDT)
From: Chris Brannon <chris@the-brannons.com>
To: Gregory Nowak <greg@gregn.net>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
References: <20190315130035.6a8f16e9@narunkot>
 <20190316031831.GA2499@kroah.com> <20190706200857.22918345@narunkot>
 <20190707065710.GA5560@kroah.com> <20190712083819.GA8862@kroah.com>
 <20190712092319.wmke4i7zqzr26tly@function>
 <20190713004623.GA9159@gregn.net> <20190725035352.GA7717@gregn.net>
Date: Wed, 24 Jul 2019 21:04:07 -0700
In-Reply-To: <20190725035352.GA7717@gregn.net> (Gregory Nowak's message of
 "Wed, 24 Jul 2019 20:53:52 -0700")
Message-ID: <875znqhia0.fsf@cmbmachine.messageid.invalid>
MIME-Version: 1.0
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Gregory Nowak <greg@gregn.net> writes:

> keymap
> I believe this is the currently active kernel keymap. I'm not sure of
> the format, probably what dumpkeys(1) and showkey(1) use. Echoing
> different values here should allow for remapping speakup's review
> commands besides remapping the keyboard as a whole.

AFAIK the Speakup keymap is just for remapping keys to Speakup
functions.  It's a binary format, not related to dumpkeys etc.  You need
a special program to compile a textual keymap into something that can be
loaded into /sys/accessibility/speakup/keymap.  I may have source for
that lying around here somewhere.  This is "here there be dragons"
territory.  I think the only specification of the format is in the
source code.

-- Chris
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
