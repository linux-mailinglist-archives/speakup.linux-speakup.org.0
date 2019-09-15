Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 09346B3AD1
	for <lists+speakup@lfdr.de>; Mon, 16 Sep 2019 14:56:09 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DAEBE1C381C; Mon, 16 Sep 2019 08:56:06 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hjXExtf/";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1AFDB1C4455;
	Mon, 16 Sep 2019 08:54:52 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 3B6571C4363; Sun, 15 Sep 2019 14:42:46 -0400 (EDT)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
 [209.85.210.46])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 0BA541C42B8
 for <speakup@linux-speakup.org>; Sun, 15 Sep 2019 14:42:45 -0400 (EDT)
Received: by mail-ot1-f46.google.com with SMTP id c10so33717439otd.9
 for <speakup@linux-speakup.org>; Sun, 15 Sep 2019 11:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Gx+rYzzGDeHRnBeRwlQ4w3kWo3tKj4SZh14IROBu6h8=;
 b=hjXExtf/3RduAc31bPc9VvqfGCUWJiKR33f+857uWDFHOc9PK894zfo96HGccoH9Dl
 gncsWnch7EC4mU8KV8tF33aVTYcZdKqaOT48iViBNLDlPOHaYY4SEB1eXBBB+OgQf4P1
 9ohtxSqoNFkUOS5MstWZdJY08+dWfa5EoRAkfb49H8uITSQNQABVUFuIxBDgMhmFjh0l
 nwJeGt7R3iavD/blgfqK2pThWyxaDEykucFwhDJStNjUFfvKQ4Zbzyt8LZ9HUZSt7Z98
 69DqV3Z2YGnv2CTocwxto6iBjApdc76yzAdpbSOIg+EAORU3Ke02+gzNYaZwKr9/H4JF
 Ilcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gx+rYzzGDeHRnBeRwlQ4w3kWo3tKj4SZh14IROBu6h8=;
 b=svLbI274nU6wvVzfOdWBSCDAuF22b+AvCQDDLhCx/rPp4OqKzJaQuUtrY3hB31O17s
 rNZiyf628gu+r/6Ov1T3bOwTYEfwi8kF2d+srHMvef9RsPn7gh79Y6DfgkIdf2zc93JO
 M0eexcD7i2O/q2jrN/7c/wfk7EA93F1yTUWw5NQZtr4aXlhkR/1dfnOUCpILv5LNOwuq
 wjuSrLWYgzgcsN67W+Ful+h0nKmPWxqugzbgP3lDOkarLWBcsSFvo3axpHgHyd6VoDls
 NO3EdeCsJn4wshG430PxnxPabzoKzrtqVwt8Y3tP6BmJn5rulRfdH0goiV6Kx62dh9D5
 y1ng==
X-Gm-Message-State: APjAAAXrqh8V9f7dKfkBrt0ZM1LCWFq4htr9QVZtU6OBxGMXeX6YjDAo
 SPo1k9Wf9KRm+b63fQSFxkuDFNWVKv07Qmn99qo=
X-Google-Smtp-Source: APXvYqx7LtVegLs/013AIpPTrc2+YSenHMlYYbAvPFVEqCeaT2dZwhIvKZv30WJnEcSe8uDS5CvNCPNhpD+di2da1xg=
X-Received: by 2002:a9d:621a:: with SMTP id g26mr6843287otj.236.1568572902170; 
 Sun, 15 Sep 2019 11:41:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190712092319.wmke4i7zqzr26tly@function>
 <20190713004623.GA9159@gregn.net> <20190725035352.GA7717@gregn.net>
 <875znqhia0.fsf@cmbmachine.messageid.invalid>
 <m3sgqucs1x.wl-covici@ccs.covici.com>
 <CAOtcWM0qynSjnF6TtY_s7a51B7JweDb7jwdxStEmPvB9tJFU4Q@mail.gmail.com>
 <20190821222209.GA4577@gregn.net>
 <CAOtcWM0Jzo+wew-uiOmde+eZXEWZ310L8wXscWjJv5OXqXJe6Q@mail.gmail.com>
 <20190909025429.GA4144@gregn.net>
 <CAOtcWM0P=w-iBZzwekVrSpp7t2WO9RA5WP956zgDrNKvzA+4ZA@mail.gmail.com>
 <20190915134300.GA552892@kroah.com>
In-Reply-To: <20190915134300.GA552892@kroah.com>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Sun, 15 Sep 2019 19:41:30 +0100
Message-ID: <CAOtcWM2MD-Z1tg7gdgzrXiv7y62JrV7eHnTgXpv-LFW7zRApjg@mail.gmail.com>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Approved-At: Mon, 16 Sep 2019 08:54:49 -0400
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
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

On Sun, Sep 15, 2019 at 2:43 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Sat, Sep 14, 2019 at 10:08:35PM +0100, Okash Khawaja wrote:
> > On Mon, Sep 9, 2019 at 3:55 AM Gregory Nowak <greg@gregn.net> wrote:
> > >
> > > On Sun, Sep 08, 2019 at 10:43:02AM +0100, Okash Khawaja wrote:
> > > > Sorry, I have only now got round to working on this. It's not complete
> > > > yet but I have assimilated the feedback and converted subjective
> > > > phrases, like "I think..." into objective statements or put them in
> > > > TODO: so that someone else may verify. I have attached it to this
> > > > email.
> > >
> > > I think bleeps needs a TODO, since we don't know what values it accepts, or
> > > what difference those values make. Also, to keep things uniform, we
> > > should replace my "don't know" for trigger_time with a TODO. Looks
> > > good to me otherwise. Thanks.
> >
> > Great thanks. I have updated.
> >
> > I have two questions:
> >
> > 1. Is it okay for these descriptions to go inside
> > Documentation/ABI/stable? They have been around since 2.6 (2010). Or
> > would we prefer Documentation/ABI/testing/?
>
> stable is fine.
>
> thanks,
>
> greg k-h

Thanks Samuel and Greg.

I have attached the descriptions. There are still some files marked
with TODO, whose descriptions are incomplete or missing.

Thanks,
Okash
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
