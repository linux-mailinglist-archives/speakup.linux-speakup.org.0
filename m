Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D84B02A2653
	for <lists+speakup@lfdr.de>; Mon,  2 Nov 2020 09:43:57 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5A0B6380F3F; Mon,  2 Nov 2020 03:43:57 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7F44B380F2F;
	Mon,  2 Nov 2020 03:43:53 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 4EBB7380F19; Mon,  2 Nov 2020 03:43:52 -0500 (EST)
Received: from covici.com (debian-2.covici.com [166.84.7.93])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 35EEB380F12
 for <speakup@linux-speakup.org>; Mon,  2 Nov 2020 03:43:52 -0500 (EST)
Received: from ccs.covici.com (ccs.covici.com [70.109.53.110])
 (authenticated bits=0)
 by covici.com (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTPSA id 0A28iPlm010084
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
 for <speakup@linux-speakup.org>; Mon, 2 Nov 2020 03:44:27 -0500
Received: from ccs.covici.com (localhost [127.0.0.1])
 by ccs.covici.com (8.15.2/8.15.2) with ESMTPS id 0A28hltR012006
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
 for <speakup@linux-speakup.org>; Mon, 2 Nov 2020 03:43:47 -0500
Received: (from covici@localhost)
 by ccs.covici.com (8.15.2/8.15.2/Submit) id 0A28hl11012005;
 Mon, 2 Nov 2020 03:43:47 -0500
Date: Mon, 02 Nov 2020 03:43:47 -0500
Message-ID: <m3wnz4p2rg.wl-covici@ccs.covici.com>
From: John Covici <covici@ccs.covici.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup crashes with kernel 5.4.69
In-Reply-To: <20201102071203.GC8027@gregn.net>
References: <m3o8l6sge6.wl-covici@ccs.covici.com>
 <20201101205909.zz2ihrr6zmucrfbq@function>
 <5123cc09-8314-7bb4-82dd-5511b53b3703@slint.fr>
 <20201101214000.u6al47enhggqputs@function>
 <20201102071203.GC8027@gregn.net>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL/10.8 EasyPG/1.0.0 Emacs/26
 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Organization: Covici Computer Systems
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
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
Reply-To: covici@ccs.covici.com, "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Did you use speakup-r in my case that seemed to trigger the problem --
I am testing the patch now and will let you know soon.

On Mon, 02 Nov 2020 02:12:03 -0500,
Gregory Nowak wrote:
> =

> On Sun, Nov 01, 2020 at 10:40:00PM +0100, Samuel Thibault wrote:
> > Didier Spaier, le dim. 01 nov. 2020 22:28:46 +0100, a ecrit:
> > > Le 01/11/2020 =E0 21:59, Samuel Thibault a =E9crit=A0:
> > > > John Covici, le mar. 13 oct. 2020 04:02:09 -0400, a ecrit:
> > > >> Hi.  When I just tried to boot with kernel 5.4.69, it did come up,=
 but
> > > >> soon crashed with a lot of kernel: basd schedule from idle thread.
> > > > =

> > > > Ok, I see the concern. Would you be able to try the attached patch?
> > > =

> > > Does this issue affect/can this patch be applied against/ 5.4.62/5.4.=
72?
> > =

> > Yes, not much has changed in the 5.4 series.
> > =

> > > I ask as Slint currently includes 5.4.62 but I was about to upgrade t=
o 5.5.72
> > > (and no Slint user complained so far. Maybe only some uses cases or
> > > hard synths are in concern?)
> > =

> > It's specific to the ltlk and spkout synths.
> =

> I'm using a ltlk on a machine running 5.4.70, and on another running
> 5.8.14 sometimes, and haven't run into this issue. Does this effect
> only the 5.4.x series of kernels, or later ones through 5.9.x?
> Is there something I can do to
> force the problem to happen, so as to test the patch properly?
> =

> Greg
> =

> =

> -- =

> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> skype: gregn1
> (authorization required, add me to your contacts list first)
> If we haven't been in touch before, e-mail me before adding me to your co=
ntacts.
> =

> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> =


-- =

Your life is like a penny.  You're going to lose it.  The question is:
How do
you spend it?

         John Covici wb2una
         covici@ccs.covici.com
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
