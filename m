Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A24BA95C0D
	for <lists+speakup@lfdr.de>; Tue, 20 Aug 2019 12:13:32 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D6BEC1C373E; Tue, 20 Aug 2019 06:13:31 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 159D51C4413;
	Tue, 20 Aug 2019 06:12:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A03D51C373E; Tue, 20 Aug 2019 06:12:38 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 723831C31F7
 for <speakup@linux-speakup.org>; Tue, 20 Aug 2019 06:12:37 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
 by mailbackend.panix.com (Postfix) with ESMTP id 46CRRx4wwXz1M6X
 for <speakup@linux-speakup.org>; Tue, 20 Aug 2019 06:12:29 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
 id 46CRRx3d9BzcbR; Tue, 20 Aug 2019 06:12:29 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by panix1.panix.com (Postfix) with ESMTP id 46CRRx3D0lzcbQ
 for <speakup@linux-speakup.org>; Tue, 20 Aug 2019 06:12:29 -0400 (EDT)
Date: Tue, 20 Aug 2019 06:12:29 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Can I Run Speakup WithIn Chrome OS?
In-Reply-To: <Pine.LNX.4.64.1908191311420.26530@server2.shellworld.net>
Message-ID: <alpine.NEB.2.21.1908200608420.12337@panix1.panix.com>
References: <Pine.LNX.4.64.1908191311420.26530@server2.shellworld.net>
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

The Fenrir screen reader may work better since speakup is in kernel
space and android is probably not true Linux.  The reason for that is
fenrir doesn't live in kernel space.  Usual way to pull fenrir is pip3
install fenrirscreenreader if your chromebook has pip3 on it.  Then it's
a matter of getting fenrir set up.

On Mon, 19 Aug 2019, Chime Hart wrote:

> Date: Mon, 19 Aug 2019 16:23:02
> From: Chime Hart <chime@hubert-humphrey.com>
> Reply-To: Speakup is a screen review system for Linux.
>     <speakup@linux-speakup.org>
> To: speakup@linux-speakup.org
> Subject: Can I Run Speakup WithIn Chrome OS?
>
> Well, its really nice owning a ChromeBook, nice-and-light weight, with quite
> good Android sounding speech. However, ChromeVox seems to be missing many of
> the well-thought out reading commands which we use in a flat review in
> Speakup. So, considering there are at least 2 types of Linux versions you can
> run inside of a ChromeBook, I wondered if there were a way of running Speakup,
> maybe from a VM Shell? I would certainly wanna keep the speech the way it is,
> but use the functions of Speakup. An only challenge I can think of, Chrome
> Books don't use nor have a num pad, so unless there were a way of an
> alternative keyboard configuration? Also, the fact that we can alter the
> sources list-and-Speakup is supposedly included? I use flat review probably
> more than anything, but an only way of sort of looking around a screen in
> Chrome OS is with a sticky kees option. So this is quite in reverse of when
> Kirk ran ChromeVox in Linux. Thanks so much in advance
> Chime
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
