Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EFBEF8E6F1
	for <lists+speakup@lfdr.de>; Thu, 15 Aug 2019 10:38:10 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 039D51C4427; Thu, 15 Aug 2019 04:38:07 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OE//3Nqf";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DB9081C440D;
	Thu, 15 Aug 2019 04:37:49 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 1F6431C43D1; Thu, 15 Aug 2019 04:37:42 -0400 (EDT)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
 [209.85.210.45])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 34AD51C43C7
 for <speakup@linux-speakup.org>; Thu, 15 Aug 2019 04:37:38 -0400 (EDT)
Received: by mail-ot1-f45.google.com with SMTP id b1so4319141otp.6
 for <speakup@linux-speakup.org>; Thu, 15 Aug 2019 01:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=HR5y3emsPe4v1KhXMc8qT4gQRKIXI2wh14Bm1VJ4yNk=;
 b=OE//3Nqf60BfmdpvU1pQq7EQtvzjy0R7No7f2b5JTvfiMsCk6PBcesOx5n901VGrGQ
 zewWH4MC+3E5X8AQ0IU9q4sYLe8PEv7szMDuZJqZXgX0bHHyPXveT3BLro+Yk7J9t6Ry
 PgePRZAwIIu8pIP1gTufLZOxjjfP9LSPLVnNIOb2AxFxbgR+RwMDJt42015cN6njhTaD
 QMbKAWeqc6XNLKV2FrI2SbpKGA2Uh2X8O2tbiccqv0Ki1wQFIyPLCQhZqsfnDBRdU0Jj
 JiEIKaJL9TZe6So+h4ioh7mNYNb6iUjSTIlNmS4HnFkMLP2pOQ7kVeNDFbMJFaKG3VFQ
 juLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=HR5y3emsPe4v1KhXMc8qT4gQRKIXI2wh14Bm1VJ4yNk=;
 b=n+W5DTcUeT2jX6lVx5MzexI8I/gRyx85eFCqiclkOzpFzz966dXwIrfMjjrX4r8OKR
 27EsamI5TqiOGTEcfPLYwsG0wLaQ8DjOFcHDLKfj5pBIeV5DYDNxjRAn9c78JccovIeZ
 Kjziy1Cry1OLa4mO99Fsd6nOkTBcHwO2wRNmU1X2bN9cPjSbjpooCA4tz6MQYkvoGk4c
 9Bic4oKBPbuRk5i683LqIYlS9vR69kFYBYRwo4JKRD7Q/kwufe7PU+OpFiFuFQyYnkCC
 KZTml5p0JwPKsmpNzZMyCAInqXLMSXfTjTGUr7mRoguKIOULpPJYzQ505AnbMhea+1Jm
 Bs/w==
X-Gm-Message-State: APjAAAVQZeWPmvPVKK4mx2D7BDafzFghqpnw4CLv5HJ4/R1Pnijv2FTx
 cFFGRqTIMV/O/+dRXHgwoVoYTwKb6+k+J2AYjOoLmzn6
X-Google-Smtp-Source: APXvYqwKzQ8fV7Z3R9vBkToO7WzBGG1ZDiNYQDfgnZU/mGiv9RsW9fG3kSr3l62y59JEeqVGGbKBgfBztkgCMQ+Hf1Y=
X-Received: by 2002:a9d:76da:: with SMTP id p26mr372967otl.311.1565858197007; 
 Thu, 15 Aug 2019 01:36:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190721180431.7ce1f716@narunkot>
 <20190724070600.6gbugq7y6xztosd2@function>
 <CAOtcWM2K-ch9yJaL5C+-ZGPn4hu=ntGDT926_pPsr9Hz74zijA@mail.gmail.com>
 <20190813080826.5gemx4vok2e6zcg3@function>
 <CAOtcWM0OPjtcY=rnSSn2us7kWPG7MDe=Jfh+WAVSGLjibQGUxw@mail.gmail.com>
 <20190814083104.fh7a6t4kosxpzoe3@function>
 <CAOtcWM2n8kMxROwuXrf0YzCf8zsnDSy9VbWRBQJsg3kvyqO4vQ@mail.gmail.com>
 <20190814215134.dl5pywebjghezslx@function>
 <Pine.LNX.4.64.1908141832440.26398@server2.shellworld.net>
 <20190814231603.GA5329@gregn.net>
In-Reply-To: <20190814231603.GA5329@gregn.net>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Thu, 15 Aug 2019 09:36:25 +0100
Message-ID: <CAOtcWM2K4NFHg0enkzy+EJmzouQXdwPsOZ=38ByJY+8=iRgqmg@mail.gmail.com>
Subject: Re: Linux Open Source Presentation
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 Gregory Nowak <greg@gregn.net>, 
 Samuel Thibault <samuel.thibault@ens-lyon.org>, Kirk Reiser <kirk@reisers.ca>,
 klewellen@shellworld.net
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Yes, I think so too that it will be recorded. I have asked them for
confirming.

thanks,
Okash


On Thu, 15 Aug 2019, 00:16 Gregory Nowak, <greg@gregn.net> wrote:

> The web site for the conference seems to state the presentation will
> be recorded.
>
> Greg
>
>
> On Wed, Aug 14, 2019 at 06:33:58PM -0400, Karen Lewellen wrote:
> > Will this presentation be recorded or preserved in some way?  Would like
> to
> > share   it with some general Linux users groups.
> > Karen
>
>
> --
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> skype: gregn1
> (authorization required, add me to your contacts list first)
> If we haven't been in touch before, e-mail me before adding me to your
> contacts.
>
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
