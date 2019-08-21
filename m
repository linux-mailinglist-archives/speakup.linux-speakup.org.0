Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 69F1D98068
	for <lists+speakup@lfdr.de>; Wed, 21 Aug 2019 18:42:13 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E447C1C43E6; Wed, 21 Aug 2019 12:42:11 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bNl2JxK9";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 59BB41C4414;
	Wed, 21 Aug 2019 12:40:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id D67601C361D; Wed, 21 Aug 2019 12:40:41 -0400 (EDT)
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by befuddled.reisers.ca (Postfix) with ESMTPS id EBE4E1C324B
 for <speakup@linux-speakup.org>; Wed, 21 Aug 2019 12:40:39 -0400 (EDT)
Received: by mail-oi1-f196.google.com with SMTP id v12so2055135oic.12
 for <speakup@linux-speakup.org>; Wed, 21 Aug 2019 09:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sxCC5PNKFq1qlMlDHX2114JmkBHkuOiSN9kijvV45PM=;
 b=bNl2JxK9BfMRTnsM4weeTx56/CjtDoDrOyTngIhjMguPbCGnPkzn/7nZLdVuQwqdnU
 /BoK7QZm4kB21Vjv6YeZVPLzmlWCYj1zWh+OL7Mc2+w/+lQy620mJhfCJaZa5n+LAEJL
 PIQbxTPSyRZKVnkgiKbCS62O+dMvWqbBoDtnmfq5sPqPi09RD9CmDD37K9HqHbgfe97R
 pwzNItpK+lTulH3AJB8BlJjiUNnMa3gLind9oPrEADRSg9ckrLMf0G6J91ncw5nX+EmI
 Fk3I4X+90jSRhqhzD+RGdkFBRFkGXwqPfPX4Xctgb/UIT3319MTqjUsnoUa+6+4rVjgV
 pTcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sxCC5PNKFq1qlMlDHX2114JmkBHkuOiSN9kijvV45PM=;
 b=rwbMpfRXHjB5BWKQuHuA28ifYhuddxmEXQ+GQjOSCBEjTT3G0qgd4J9eeoBsq5xr0a
 kQSU4V/A9IJRKMmckRW4RmvWY/ot0BY/uxRZf1MhUOtZ8MXaet7jwdcaT41TPWjdZxtH
 g40c441ePvuteD+HLsuaodI+W3ebAoRDSFet7yPLcYQc1iVPFUF5o3Tueo26dgKolDYw
 U8smzKS0TqGxi0bXizE32Hwle1lKcH2blSmV7KqCrV6pqzJtEIlGF4nfnF7FDug5wqZT
 Td8zVSTVMuVoPHWCOqkQVmIAlmdFprp3IuOUAjLqeZ9KQoiHu3oL/2lTWA42OhpFSiAo
 BTDA==
X-Gm-Message-State: APjAAAUEBHkTJXCt6haYih181eJLwnkXbfkxsPME+0gI48rtiq3JD9Zd
 zHKLHCV8RcvXel1UjB6hAfECC4SFRIaVdx1FaSFbWoXgwS4=
X-Google-Smtp-Source: APXvYqxHIoe+PIEIlnKGzCMCFlcO6qhjhxZbk8ZDmvMG8MgTWgDKHiZYxnzNVxw78jlsDE9DqcOG70I9ndAioOPJCA4=
X-Received: by 2002:aca:5f45:: with SMTP id t66mr647829oib.111.1566405576805; 
 Wed, 21 Aug 2019 09:39:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190315130035.6a8f16e9@narunkot>
 <20190316031831.GA2499@kroah.com>
 <20190706200857.22918345@narunkot> <20190707065710.GA5560@kroah.com>
 <20190712083819.GA8862@kroah.com> <20190712092319.wmke4i7zqzr26tly@function>
 <20190713004623.GA9159@gregn.net> <20190725035352.GA7717@gregn.net>
 <875znqhia0.fsf@cmbmachine.messageid.invalid>
 <m3sgqucs1x.wl-covici@ccs.covici.com>
In-Reply-To: <m3sgqucs1x.wl-covici@ccs.covici.com>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Wed, 21 Aug 2019 09:39:25 -0700
Message-ID: <CAOtcWM0qynSjnF6TtY_s7a51B7JweDb7jwdxStEmPvB9tJFU4Q@mail.gmail.com>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 Gregory Nowak <greg@gregn.net>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 John Covici <covici@ccs.covici.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

On Thu, Jul 25, 2019 at 3:49 AM John Covici <covici@ccs.covici.com> wrote:
>
> I think the program is genmap, I  have it in my init sequence, but I
> am not sure it does anything at this point.
>
> On Thu, 25 Jul 2019 00:04:07 -0400,
> Chris Brannon wrote:
> >
> > Gregory Nowak <greg@gregn.net> writes:
> >
> > > keymap
> > > I believe this is the currently active kernel keymap. I'm not sure of
> > > the format, probably what dumpkeys(1) and showkey(1) use. Echoing
> > > different values here should allow for remapping speakup's review
> > > commands besides remapping the keyboard as a whole.
> >
> > AFAIK the Speakup keymap is just for remapping keys to Speakup
> > functions.  It's a binary format, not related to dumpkeys etc.  You need
> > a special program to compile a textual keymap into something that can be
> > loaded into /sys/accessibility/speakup/keymap.  I may have source for
> > that lying around here somewhere.  This is "here there be dragons"
> > territory.  I think the only specification of the format is in the
> > source code.
> >
> > -- Chris
> > _______________________________________________
> > Speakup mailing list
> > Speakup@linux-speakup.org
> > http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
> --
> Your life is like a penny.  You're going to lose it.  The question is:
> How do
> you spend it?
>
>          John Covici wb2una
>          covici@ccs.covici.com
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup


Hi Greg N,

Would like to send this as a patch as Greg K-H suggested? If not, I
can do that with your email in Authored-by: tag?

Thanks,
Okash
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
