Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 527EA268D41
	for <lists+speakup@lfdr.de>; Mon, 14 Sep 2020 16:19:17 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B8A021C0745; Mon, 14 Sep 2020 10:19:16 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6CAB31C0742;
	Mon, 14 Sep 2020 10:17:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 599551C0707; Mon, 14 Sep 2020 10:16:36 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 631B41C033D
 for <speakup@linux-speakup.org>; Mon, 14 Sep 2020 10:16:18 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
 by mailbackend.panix.com (Postfix) with ESMTP id 4BqpLl5BG9z1Xsp
 for <speakup@linux-speakup.org>; Mon, 14 Sep 2020 10:16:15 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
 id 4BqpLl5spSzcbc; Mon, 14 Sep 2020 10:16:15 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by panix1.panix.com (Postfix) with ESMTP id 4BqpLl5MpdzcbW
 for <speakup@linux-speakup.org>; Mon, 14 Sep 2020 10:16:15 -0400 (EDT)
Date: Mon, 14 Sep 2020 10:16:15 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Speech stops responding on Talking Arch
In-Reply-To: <4212af47-2452-fbcc-a376-1a48e5aa9d7c@mm.st>
Message-ID: <alpine.NEB.2.23.451.2009141008490.24318@panix1.panix.com>
References: <4212af47-2452-fbcc-a376-1a48e5aa9d7c@mm.st>
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

Something like this happened in slint with espeak in use.  I solved it
by using speechd-up for speech output.  My guess is this isn't an espeak
problem but what espeak uses for output speech-dispatcher by default in
slint.  Another solution would be to switch to use of fenrir though
fenrir passes ansi drawing characters straight through to the output for
now other than that it's well developed.  If you run nmtui with espeak
then run  nmtui with fenrir you'll be able to hear the difference
passing ansi drawing characters through to the output makes.
That might be speechd-el rather than speech-dup espeak uses on slint.  I
just had coffee this morning having been a week without so the brain
will probably work better later.

On Mon, 14 Sep 2020, Cleverson Casarin Uliana wrote:

> Date: Mon, 14 Sep 2020 08:22:03
> From: Cleverson Casarin Uliana <clul@mm.st>
> Reply-To: Speakup is a screen review system for Linux.
>     <speakup@linux-speakup.org>
> To: Speakup is a screen review system for Linux. <speakup@linux-speakup.org>
> Subject: Speech stops responding on Talking Arch
>
> Hi all, there is a bug I couldn't yet reproduce reliably on the Talking Arch
> live image. It apears to manifest when I type several characters quickly, or
> when I press speakup review commands when the screen is changing. The speech
> simply gets muted, and any command to try restarting espeakup via systemCTL,
> or even trying to make espeak speak something, doesn't work. Still, the shell
> responds to commands such as poweroff.
>
> Does anyone know this problem? Is it possible to resume speech without turning
> off the system completely?
>
> FYI, the Talking Arch image was generated last 09 september, and my machine is
> a HP 246G7 laptop with a Logitech USB keyboard attached.
>
> Thanks,
> Cleverson
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
>

-- 

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
