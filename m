Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8D51A8B1A4
	for <lists+speakup@lfdr.de>; Tue, 13 Aug 2019 09:56:01 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 013AB1C43D4; Tue, 13 Aug 2019 03:55:59 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EGR/ya50";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9F7EA1C43D1;
	Tue, 13 Aug 2019 03:54:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id D8B491C4342; Tue, 13 Aug 2019 03:54:53 -0400 (EDT)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
 [209.85.210.53])
 by befuddled.reisers.ca (Postfix) with ESMTPS id C4C9D1C3563
 for <speakup@linux-speakup.org>; Tue, 13 Aug 2019 03:54:52 -0400 (EDT)
Received: by mail-ot1-f53.google.com with SMTP id j7so24349124ota.9
 for <speakup@linux-speakup.org>; Tue, 13 Aug 2019 00:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zgETSMcQI2SRMRQWksZi4LVnZ9aJE83yHUDfIsA3IRk=;
 b=EGR/ya50BJ9SMzbAa+SmavIL1EEiFYFFkZnPUc74BnivqusEDitkqGzNGTIikuKtq4
 VqXiqCnutFkcc+GEWTW8vsH67ZfEDBfE4POCkZGydOpIkeIfXFWRCLzr8F+QbT46X3ih
 a4bxPrgP/iOyBvbKHVNvkAADXt0zSVxd82jjFKJv50PweK2LLfl2Ns3zwLAXHFqSe4Eh
 PCYcxOCg+Qg4Mr+wxKSYBKrk6zZ/jKD09RQC73N+j+SUN1h2rEEF4jgJsiZJaUNAfDoC
 GCv5iQ+2oKdzN0ZoSHEMnhb2bxqeENKD0w5QjUTwJ1FOeDaNnjObUGW/kh25m4zrn7D+
 pyhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zgETSMcQI2SRMRQWksZi4LVnZ9aJE83yHUDfIsA3IRk=;
 b=eHJQNW9lxvKqALsAppy2HJvZR4BOITvVFghq33wx+P4N/Gj9EMxiYb4pIUkW0ZgQsi
 tOrLiNi70DqW9nLsicjMZRHvpf7GS3PaaIKAsvccwlUMQJbaqR3vlCid3xmk10F5/wuK
 w7+q0qbR/HMl+prnrzfrkzUAdY2LEKwfzLHbEaz0JlxfuLH7lFM/2jfTjdpf7V31lfqj
 6CgLsS5NPUNUvz50cu2t30/uEyEUsyHUZ5i5er0MkW4mDU6YcwgJYwoBaP3qIKFmoYyC
 XC3WTutEoxa6zN3Vsjs4kk1HN4w0FJCY7264pflsoptBT2TToM3oyY5Ncd7TSzVhSZAh
 /86g==
X-Gm-Message-State: APjAAAU/ba8c33/VSvv0+jVuH2sC2Ytp7I1GB2Md+rzIGAP5yXb8+6xE
 caE59b2vQ4aF61GIY0q0G1/KDljhu2FzCc7ewJg=
X-Google-Smtp-Source: APXvYqy1a1GtCNTrk3pbX5cxOWPtfnG/kS4JcfEUcDoHwthhhF+2EeBLqPgM8ZuVBM+4KddVJP9qD5eZ/5+jRrupRec=
X-Received: by 2002:a05:6830:158:: with SMTP id
 j24mr3088604otp.236.1565682832182; 
 Tue, 13 Aug 2019 00:53:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190721180431.7ce1f716@narunkot>
 <20190724070600.6gbugq7y6xztosd2@function>
In-Reply-To: <20190724070600.6gbugq7y6xztosd2@function>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Tue, 13 Aug 2019 08:53:41 +0100
Message-ID: <CAOtcWM1K7a4kTKpXzFBaSZ8HSNJq6OBgLUjh5MPse_shZXgBRg@mail.gmail.com>
Subject: Re: Linux Open Source Presentation
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
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

On Wed, Jul 24, 2019 at 8:06 AM Samuel Thibault
<samuel.thibault@ens-lyon.org> wrote:
[...]
> > TODO: tty based vs directly accessing ports
>
> Yes, that's an interesting point.
>
> Before the tty support, the port knocking was obviously posing
> problems of conflicting with the existing serial drivers, and supporting
> only legacy serial ports.
>
> You can mention that speakup is particular in that it's a purely
> software driver that needs to operate the serial port. Thus a line
> discipline, thus what you implemented.

I implemented but it was your idea. I should mention that in the talk.

[...]
> > - typical development set up with speakup_dummy:
> >     - qemu with serial port tied to a file on host
> >     - load speakup_dummy with dev param pointing to the serial port
>
> It'd be useful that you provide the ready-to-run commands so people can
> try it out.

So these will be qemu commands + commands to load speakup.ko and
speakup_dummy.ko?

Thanks,
Okash
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
