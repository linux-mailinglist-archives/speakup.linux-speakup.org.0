Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EDFD8B5807
	for <lists+speakup@lfdr.de>; Wed, 18 Sep 2019 00:33:31 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8692F1C4453; Tue, 17 Sep 2019 18:33:31 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E63EC1C446F;
	Tue, 17 Sep 2019 18:33:07 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 880971C4437; Tue, 17 Sep 2019 18:33:06 -0400 (EDT)
Received: from hurricane.the-brannons.com (hurricane.the-brannons.com
 [71.19.155.94])
 by befuddled.reisers.ca (Postfix) with ESMTP id 9B1FF1C3551
 for <speakup@linux-speakup.org>; Tue, 17 Sep 2019 18:33:05 -0400 (EDT)
Received: from localhost (97-115-96-182.ptld.qwest.net [97.115.96.182])
 by hurricane.the-brannons.com (Postfix) with ESMTPSA id CA3287B20F
 for <speakup@linux-speakup.org>; Tue, 17 Sep 2019 15:33:02 -0700 (PDT)
From: Chris Brannon <chris@the-brannons.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: help fixing speakup hang problem w smp kernels
References: <alpine.LNX.2.21.9999.1909081006120.8372@io.coolip.net>
 <CAOtcWM23S7PhQzyQ+Cdpbd8gTAiKCuc6DdSrrMZx+0=WASBUXQ@mail.gmail.com>
Date: Tue, 17 Sep 2019 15:33:02 -0700
In-Reply-To: <CAOtcWM23S7PhQzyQ+Cdpbd8gTAiKCuc6DdSrrMZx+0=WASBUXQ@mail.gmail.com>
 (Okash Khawaja's message of "Tue, 17 Sep 2019 22:47:11 +0100")
Message-ID: <87impqh7tt.fsf@cmbmachine.messageid.invalid>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Okash Khawaja <okash.khawaja@gmail.com> writes:

> Hi Kelly,
>
> Thanks very much for pointing this out :) If you could capture kernel
> dump of this hang that will be a great starting point of the
> investigation.

Quite plausibly the hangs reported by Kelly are the same as those
experienced by the person who reported in on IRC.  Deedra posted a link
to the dump from one of those yesterday.  Others in the Arch community
are noticing the same issue.  As far as I know, everyone who has
reported about recent hangs is using a 5.2 kernel.

For those on Arch, switching to the linux-lts package (4.19 kernel) will
fix it for now.

-- Chris
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
