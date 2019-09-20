Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 680A8B8E66
	for <lists+speakup@lfdr.de>; Fri, 20 Sep 2019 12:20:28 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D92231C46AC; Fri, 20 Sep 2019 06:20:24 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="u+dOqgXq";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 426DE1C445F;
	Fri, 20 Sep 2019 06:20:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id B900F1C43D9; Fri, 20 Sep 2019 06:20:07 -0400 (EDT)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 5E07A1C3220
 for <speakup@linux-speakup.org>; Fri, 20 Sep 2019 06:20:06 -0400 (EDT)
Received: by mail-ot1-f54.google.com with SMTP id g13so5734048otp.8
 for <speakup@linux-speakup.org>; Fri, 20 Sep 2019 03:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BMy5oZwzaSi5YDfs1liS0DaI7vPop4R9fEaoU4PLnkE=;
 b=u+dOqgXqwLIk4ijIcH+Lh2Xp7CRSFHdQtnuAf3xgmziguzmDOjjbBtSHpMNmIP5mAH
 zW4CMOH0Pj+C0XhoqeX9X6iDvuE3nrtGZis4ernkiiBftEmJ6E450hVDs328gTpLzCx3
 UAOwihCQO1rxiQp8tj5HHaNOULxyVu7UbpTGWZrvGEvDzCmQAjuUOX6qmf4EI+MrURyA
 nGJA2LBD+Y+csBQVHe1zc7sGi6vP1jvXRmUA1xR468Wfa/NVftgqoVCCtwEvwIvVH82h
 VD02sc2aAQ1xhfYCSQ8q5Uquzt6VN/w68szq6rk/bLQUF72Vy+VYuFH7AHmxxiHdEKao
 g4uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BMy5oZwzaSi5YDfs1liS0DaI7vPop4R9fEaoU4PLnkE=;
 b=QUQ8Jje+5D0ubh1clJpbFNVsvSDHRejgF/p04glwseEpQ+V1uIwOOZ2h0E8igtgZp8
 IJ55hKSosm35lRSsTTIXVYG1Dpd3CDNS1oZYY6kqXivNtgQago1kiAIvfPELWVUxcbBQ
 UDg6eEi0xBx0w4DlEbRe9WGfFwnZKiKFjNAdfU33Zwx3B3TJiMjTs84JFz9+Oiw/+jP+
 tmVTr0S5QXiCTsuwdCraitz3pwPP47yiglvqF5eXoHV7MLlzMC5Ei92WTDKd4QtHe1PG
 9kUldT3irr/THTKURA0maeQBPCIst3ho4Kstcd4SjJwLiAaLpawW7M8tm4dWDejRaRmE
 1t+Q==
X-Gm-Message-State: APjAAAWksA86BmZoN5qNVC51b90zRTdYC1cM0iCS0N1BpuvUG/kPnPFf
 o+B0KcaQbAf+tX9BjPwSTUTGjGWiFdWSfyoaFKE=
X-Google-Smtp-Source: APXvYqzS1DBqjwuNikUvKoQL0j2CZpd6p+BrdFHsj/I9aTB8Jig4txY6GcSj0J9XA9WKUheSk03PzvdnBVOM28gIPys=
X-Received: by 2002:a05:6830:1e84:: with SMTP id
 n4mr9719021otr.141.1568974744502; 
 Fri, 20 Sep 2019 03:19:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAOtcWM0P=w-iBZzwekVrSpp7t2WO9RA5WP956zgDrNKvzA+4ZA@mail.gmail.com>
 <20190915134300.GA552892@kroah.com>
 <CAOtcWM2MD-Z1tg7gdgzrXiv7y62JrV7eHnTgXpv-LFW7zRApjg@mail.gmail.com>
 <20190916134727.4gi6rvz4sm6znrqc@function>
 <20190916141100.GA1595107@kroah.com>
 <20190916223848.GA8679@gregn.net> <20190917080118.GC2075173@kroah.com>
 <20190918010351.GA10455@gregn.net> <20190918061642.GB1832786@kroah.com>
 <20190918203032.GA3987@gregn.net> <20190920074611.GB518462@kroah.com>
In-Reply-To: <20190920074611.GB518462@kroah.com>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Fri, 20 Sep 2019 11:18:53 +0100
Message-ID: <CAOtcWM2271YEVCc=0O8QApyUhSJx+uA_vfnXyUnGHfjugzGoyg@mail.gmail.com>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
 Gregory Nowak <greg@gregn.net>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 linux-kernel@vger.kernel.org, John Covici <covici@ccs.covici.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

On Fri, Sep 20, 2019 at 8:46 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Sep 18, 2019 at 01:30:33PM -0700, Gregory Nowak wrote:
> > > Extra line between each attribute (before the "What:" line) would be
> > > nice.
> >
> > In a previous post above, you wrote:
> > On Mon, Sep 16, 2019 at 04:11:00PM +0200, Greg Kroah-Hartman wrote:
> > > Anyway, please put the Description: lines without a blank after that,
> > > with the description text starting on that same line.
> >
> > I understood that to mean that the description text should start on
> > the same line, and the blank lines after the description text should
> > be removed. I've put them back in. Someone more familiar with the
> > speakup code will have to dig into it to resolve the TODO items I
> > suppose.
>
> No problem, this looks good to me.  If someone wants to turn this into a
> patch adding it to the drivers/staging/speakup/ directory, I'll be glad
> to take it and it will allow others to fill in the TODO entries easier.

Thank you. I'll create a patch soon.
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
