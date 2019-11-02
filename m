Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id C1DF1ECDDD
	for <lists+speakup@lfdr.de>; Sat,  2 Nov 2019 10:39:10 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 707861C46EA; Sat,  2 Nov 2019 05:39:09 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gbMu+anP";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1703C1C46F0;
	Sat,  2 Nov 2019 05:38:21 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A849B1C46CB; Sat,  2 Nov 2019 05:38:06 -0400 (EDT)
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 183FE1C46C7
 for <speakup@linux-speakup.org>; Sat,  2 Nov 2019 05:38:04 -0400 (EDT)
Received: by mail-ot1-x344.google.com with SMTP id u13so10474209ote.0
 for <speakup@linux-speakup.org>; Sat, 02 Nov 2019 02:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ueo+b72K2pYE5qGgh3oVIzpmjvxXGQPLFgWRE6uQDss=;
 b=gbMu+anPnTWo2F034WcniURCLtAD8IxiiQCA6e4YjtnTVbvso10F6O18PnrgDBY0v5
 xfffpKsS9Lah0bL3svibl/cF7p2es9/D61WFkY1CHC7LunbAo51p8BAS+idZPQnLXAO3
 uMQpYHfHef1j8JQ3UZY9zXPCSrwjyp1qVTN2944CTZldFdeBMxdIb2IhPZxkEMBANab9
 Dkj48LGxd5sYulWDNo14d6+BHsFrvgSaLdOYleaJjo71Mdp1FFR08XeYeiPTGsTFA95p
 Ta/wIHaMDmKaonk6L0rxENKjNgb3xYn1KwOpBw/d9LPV1eDQ/IiMN3saz0GrkC2eF1e5
 NDPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ueo+b72K2pYE5qGgh3oVIzpmjvxXGQPLFgWRE6uQDss=;
 b=pKeeBbrMefUXCbNhftyz9ep1jLHwd41QbEjfANaxSr/w3myrkSt5K8xJpub73w3c0M
 NsFtphlSngBz+m99SbR2FJX3/9GHzL0TidoyegIHhFoQ+8avs+FdD3vGPBtW5MeojWfr
 +JfhR/KoAPeW7o2lNpeI7epYd9kB05BhSW3DmtZvCTI6p1AdDStg478Grbb+0118WVTJ
 SbMHPKupRYUbwMTx68Smp/oqTFiZWkDG/UOQsGRb5nqnhrQ5hKhGm6Mjzl7X/KlGpjeE
 bO1iYGz9XcXjOQ+wVUZR8Qt/EZbtr6WnGwfvS4WShSdByVLSCthdyhzbffl1OMBY9SVU
 rWOQ==
X-Gm-Message-State: APjAAAUCNRb2vjzoS/TBlGCmru+IhLpzSEvb+Vd9xvFszeVtdFnRjbtr
 lu0NiJIe6QDJSagsBNkoMZbFeO/xaL2aN1NjsgU=
X-Google-Smtp-Source: APXvYqyf/QFd5s3GpIH/i9e57uYpNCGAFhD/TQVgkDMbKXBGyyrZkBYzxHU2cfEOEzY6G4/Lm6qk9SbrZa6xjMpODo0=
X-Received: by 2002:a9d:6949:: with SMTP id p9mr12096850oto.328.1572687482470; 
 Sat, 02 Nov 2019 02:38:02 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LNX.2.21.9999.1909081006120.8372@io.coolip.net>
 <CAOtcWM23S7PhQzyQ+Cdpbd8gTAiKCuc6DdSrrMZx+0=WASBUXQ@mail.gmail.com>
 <87impqh7tt.fsf@cmbmachine.messageid.invalid>
 <CAOtcWM1_234zvRCwFeG3p6=t751y-sBa3whiz4P-i-oADXneOw@mail.gmail.com>
In-Reply-To: <CAOtcWM1_234zvRCwFeG3p6=t751y-sBa3whiz4P-i-oADXneOw@mail.gmail.com>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Sat, 2 Nov 2019 09:37:51 +0000
Message-ID: <CAOtcWM3viSGs4BNYyMA_rLc8kidNmYVg6H7+XfxRbYqMeao-AA@mail.gmail.com>
Subject: Re: help fixing speakup hang problem w smp kernels
To: kprescott@coolip.net, deedra Waters <deedra@the-brannons.com>
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
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hi,

Would it be possible to supply vmlinux file with debug symbols? If
speakup was out of kernel then speakup.ko and speakup_soft.ko with
debug symbols.

In general, the stack trace only tells part of the story. As Samuel
pointed out here [1] we also need corresponding binaries to know the
point of failure.

Thanks,
Okash

[1] https://github.com/bytefire/speakup/issues/10#issuecomment-548924921


On Wed, Oct 2, 2019 at 9:31 AM Okash Khawaja <okash.khawaja@gmail.com> wrote:
>
>
>
> On Tue, 17 Sep 2019, 23:33 Chris Brannon, <chris@the-brannons.com> wrote:
>>
>> Okash Khawaja <okash.khawaja@gmail.com> writes:
>>
>> > Hi Kelly,
>> >
>> > Thanks very much for pointing this out :) If you could capture kernel
>> > dump of this hang that will be a great starting point of the
>> > investigation.
>>
>> Quite plausibly the hangs reported by Kelly are the same as those
>> experienced by the person who reported in on IRC.  Deedra posted a link
>> to the dump from one of those yesterday.  Others in the Arch community
>> are noticing the same issue.  As far as I know, everyone who has
>> reported about recent hangs is using a 5.2 kernel.
>>
>> For those on Arch, switching to the linux-lts package (4.19 kernel) will
>> fix it for now.
>
>
> Hi,
>
> I haven't yet got round to looking at it. But I've created this bug which collects relevant info in one place: https://github.com/bytefire/speakup/issues/10
>
> Thanks,
> Okash
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
