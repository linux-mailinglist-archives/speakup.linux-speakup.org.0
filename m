Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 89727B4024
	for <lists+speakup@lfdr.de>; Mon, 16 Sep 2019 20:17:25 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0176B1C44AC; Mon, 16 Sep 2019 14:17:24 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 001471C446E;
	Mon, 16 Sep 2019 14:17:23 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A4ADA1C4412; Mon, 16 Sep 2019 14:17:21 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by befuddled.reisers.ca (Postfix) with ESMTPS id F193B1C3663
 for <speakup@linux-speakup.org>; Mon, 16 Sep 2019 14:17:20 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
 by mailbackend.panix.com (Postfix) with ESMTP id 46XDww0thbz1NS2
 for <speakup@linux-speakup.org>; Mon, 16 Sep 2019 14:17:20 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
 id 46XDwv722wzcbR; Mon, 16 Sep 2019 14:17:19 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by panix1.panix.com (Postfix) with ESMTP id 46XDwv6cxyzcbQ
 for <speakup@linux-speakup.org>; Mon, 16 Sep 2019 14:17:19 -0400 (EDT)
Date: Mon, 16 Sep 2019 14:17:19 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: Re: [Lynx-dev] lynx fails to load page (fwd)
Message-ID: <alpine.NEB.2.21.1909161417050.3387@panix1.panix.com>
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



-- 


---------- Forwarded message ----------
Date: Mon, 16 Sep 2019 14:08:47
From: David Woolley <forums@david-woolley.me.uk>
To: lynx-dev@nongnu.org
Subject: Re: [Lynx-dev] lynx fails to load page

On 16/09/2019 18:58, Jude DaShiell wrote:
> http://ix.io/1TLJ

This appears to be a kernel mode failure.  Lynx doesn't run in kernel mode, and
if speakup does, it should defend itself against user mode program errors.

>
> This crashes when speakup-ng is running with lynx.  I haven't yet tried it
> with other browsers.
>
>


_______________________________________________
Lynx-dev mailing list
Lynx-dev@nongnu.org
https://lists.nongnu.org/mailman/listinfo/lynx-dev

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
