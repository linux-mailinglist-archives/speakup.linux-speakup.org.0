Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6CB4DB57C6
	for <lists+speakup@lfdr.de>; Tue, 17 Sep 2019 23:50:28 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 64B521C42E2; Tue, 17 Sep 2019 17:50:26 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="rV7j4hpa";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6FAA11C446F;
	Tue, 17 Sep 2019 17:48:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 20BB71C4437; Tue, 17 Sep 2019 17:48:34 -0400 (EDT)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 57E081C3551
 for <speakup@linux-speakup.org>; Tue, 17 Sep 2019 17:48:27 -0400 (EDT)
Received: by mail-ot1-f44.google.com with SMTP id 21so4442222otj.11
 for <speakup@linux-speakup.org>; Tue, 17 Sep 2019 14:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=Lf22UZ+HhEOQ96FVU2XByvTSsbEivWzNzYvrXYxMk0w=;
 b=rV7j4hpaEUan+I161QN2CnmN3KkreU0AeWlhueVB6T6ysET89ve6znQSFKrjYij/eF
 rVZrW8yE3dZ6cVFrqlwMACLNGw+nm3qylNSD32JPG+4kk7FFG8OjHR/ussQULgboGSmE
 KwdRL3F4Mv9JGDPWAKXwoCb4Q58J2+TZhcAr8SJgpSZpiaoK0pcFnp5kkLBvkXNLDxv5
 5ZLJ75zgwA8sQYEcmlgg5f6hoFP1MHdmE9EPxpm2sQUsAA2QhQUK5UBYkk3DarKsE9sO
 VIfVSAMYdUYE2dSvCNRsEdTIf5PSEzMY6UhIAdm00Egt7Z5pTYxO4JFyH+0GjzGVBDEF
 wrTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=Lf22UZ+HhEOQ96FVU2XByvTSsbEivWzNzYvrXYxMk0w=;
 b=jZWGh3p2CDAe8x5E1wduJYP7k/l5SocdtrYNLsUhY5mXzDqYj2rEK7p0OF4AZs9Inh
 w6lWcDDnqN+p0d/LSZj9UqHuz1lt/RPKOq4KeKAMRFKD077N3Wykt8lw9HWLCeEOhWgh
 2EyFM+MIqzUZkoOgpDjlzRCBFzCte+9eyLNZsEW8QYXVZRGxaGcgxDYIo1M5XysEP/3O
 S//dRGbIeFSMlAiBmB0Op0WoohgwgPUagWizppmmKCX0pdtIX6M8Lf5FMF9dJq5zBVhM
 XkLZNvoj3LiUDisY1bo0SrWbSRG6te0WEkFV79CHyAoSyHCfyIKGmcmMNIpew+jDwFzX
 ze4w==
X-Gm-Message-State: APjAAAWAPIMptDupUOoU3BrCyVvKRVUXCdzdIZh7PsD2LiPybjUXOSzE
 pg+L2lBy6HRCYGHvwOFzoH7s8UK5TBQLBZP9IcT8vg==
X-Google-Smtp-Source: APXvYqxtnZ3LiLb6atK6dJgf7zR/Jh/fHly2zMslp6iJT6CAT1qO/3QDKIeJ+cYGWOPWJCnjMMUXrW5MIHlAhZ2ATEU=
X-Received: by 2002:a9d:7419:: with SMTP id n25mr813104otk.328.1568756842679; 
 Tue, 17 Sep 2019 14:47:22 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LNX.2.21.9999.1909081006120.8372@io.coolip.net>
In-Reply-To: <alpine.LNX.2.21.9999.1909081006120.8372@io.coolip.net>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Tue, 17 Sep 2019 22:47:11 +0100
Message-ID: <CAOtcWM23S7PhQzyQ+Cdpbd8gTAiKCuc6DdSrrMZx+0=WASBUXQ@mail.gmail.com>
Subject: Re: help fixing speakup hang problem w smp kernels
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 kprescott@coolip.ne
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

Hi Kelly,

Thanks very much for pointing this out :) If you could capture kernel
dump of this hang that will be a great starting point of the
investigation.

Best regards,
Okash

On Sun, Sep 8, 2019 at 3:24 PM Kelly Prescott <kprescott@coolip.net> wrote:
>
> I will start with the disclaimer that I know a little C, but I am by no
> means a kernel developer nor any other kind of developer.
> I do it for fun or on small projects I need for myself.
>
> I have noticed that now that ArchLinux has moved to the Linux 5.x series,
> my system seems to hang with speakup much more than it ever did before.
> I do not get the frequent hangs on my Ubuntu 16,4 and 18.4 systems.
> I get them, just not as frequently.
> I now have 3 archlinux machines, 2 laptops and one desktop where I can
> make the machine hang with in 5 minutes of trying.
> I do this by making sure the machine is busy doing something, network
> activity, logging etc. Then I opena large file and review the screen with
> Speakup making my keystrokes faster and faster until the machine hangs.
> It is also interesting that in my desktop machine when I installed a
> 4-port network card, the hangs became so bad I had to take it out.
> When I ran the machine without speakup, they went away, so It was not the
> network card.
>
> Like I said, I can now reliably produce a hang.
> I know I am not qualified to fix it, but I would like to offer my
> assistance in providing dumps to assist others in helping find the
> problem.'
>
> I am going to try to get the dumps logged to a serial console and then
> saved to files.
> With that said, What information do I need to provide to make this
> meaningful.
> What I would like is some instruction and pointers so I can accurately
> help and not just put out useless noise.
>
> As we move toward taking the kernel out of staging, I think we need to fix
> this as it results in a total hang of the machine.
>
> I am willing to grant machine access, make and send crash information, run
> tests, or anything else I can do to help get this resolved.
>
> If someone will reply with what needs to be done from my side, I would be
> happy to get started.
>
> Thanks.
>
> -- Kelly Prescott
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
