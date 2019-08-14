Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C505F8CE27
	for <lists+speakup@lfdr.de>; Wed, 14 Aug 2019 10:15:44 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E83741C4411; Wed, 14 Aug 2019 04:15:42 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EVS6bUCh";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 236F71C4406;
	Wed, 14 Aug 2019 04:14:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 47B601C42C4; Wed, 14 Aug 2019 04:14:40 -0400 (EDT)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
 [209.85.167.169])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 5EAD11C364A
 for <speakup@linux-speakup.org>; Wed, 14 Aug 2019 04:14:37 -0400 (EDT)
Received: by mail-oi1-f169.google.com with SMTP id l12so11050694oil.1
 for <speakup@linux-speakup.org>; Wed, 14 Aug 2019 01:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O2Q4A5zzkiqiYm7NpYyGxLr8QcRu58qUY/JoCe0k4KU=;
 b=EVS6bUChZiRhb0C29lDMfkpzyuv7Z8ScdlpI4kSH/MEVX7iIDx/gXxnNk9+4OrWQLc
 pF0UtbPcmw66x/FcDPJ+Dkure2EvFDa+9TsaSetHEawiIwzd8uCLmVX5bUqxmePMLsxF
 qKG68DPyn3nyGYGvaGdhx3SkGHkvOiGtOEI9FYNpgkFDzz1Gr8hptTN1QPInhwSTnnWh
 rhtgCPhZlybp4dWgn8H4PQ26oA+pqFkHg0kbZ/jzoiiwzcYv01qv8YjpOWi9xa+qJck6
 20D9aVasDXrNDhyJfxJPa6FNbhVXZ8Nx7vTWRlYoLDg0oedjvPo7TkqqLGS3G+lwwpLt
 9P6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O2Q4A5zzkiqiYm7NpYyGxLr8QcRu58qUY/JoCe0k4KU=;
 b=ZfYNmItW6iRT7PxQg879pdQB9jXxgm4m8klfgZhHyFJBQWP+n93CoCO9nycJp89jxP
 7P8LqDpTmHEKlNMO6HpvOYQoja3WsElyf9HpbaTwbUHQtBc0R+GBi/PLmd28VYCRYXrX
 QuxVZLZkRHNOSprkqmXOsemR5Sqra8Zn86FsPph+/qboVdFj1BK8ktxY6TKd8fspByvj
 Qa9N4oUUvmp5z3cYdqka+9hCrykMblagblwfRbUZpJbUt/o5wzJKSHGqnmGMkmBLlmft
 a8vwgd1cPh2u9FJxSent+rOZXhR2WnGiG6hi4seezSKIImPuKPCFQhNH0fhkWTZ9cqNk
 97Ow==
X-Gm-Message-State: APjAAAUqPx+z8r8E6C4BFmNLMJxlY17CjrFd3/QkJ29LIPWFMb8rfzUw
 qmQhBrOApO5AB6fGEvDQb7qBx6h19jOBs6R79BE=
X-Google-Smtp-Source: APXvYqwGTQ4R6b9+0rwMRVGQ03J4x1cQTUhi25fkxeVFvFg+R6b/JMG5uy4IRPGicGQLboPcin6OITqnmVH0LBEG7N4=
X-Received: by 2002:aca:e10a:: with SMTP id y10mr3852336oig.111.1565770416467; 
 Wed, 14 Aug 2019 01:13:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190721180431.7ce1f716@narunkot>
 <20190724070600.6gbugq7y6xztosd2@function>
 <CAOtcWM2K-ch9yJaL5C+-ZGPn4hu=ntGDT926_pPsr9Hz74zijA@mail.gmail.com>
 <20190813080826.5gemx4vok2e6zcg3@function>
In-Reply-To: <20190813080826.5gemx4vok2e6zcg3@function>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Wed, 14 Aug 2019 09:13:25 +0100
Message-ID: <CAOtcWM0OPjtcY=rnSSn2us7kWPG7MDe=Jfh+WAVSGLjibQGUxw@mail.gmail.com>
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

Thanks for all the feedback!

I have incorporated all except for diagrams for slides 7 and 18. If I
get time after work today, I will do that. The shadow on fonts is
because of format of slides provided by organisers. I will edit it to
remove the shadow.

No I haven't presented at this scale so thanks for the tips.

Best regards,
Okash


On Tue, Aug 13, 2019 at 9:08 AM Samuel Thibault
<samuel.thibault@ens-lyon.org> wrote:
>
> Hello,
>
> The slides look good overall :)
>
> For better readability (accessibility too? ;) ), I would say to avoid
> the small shadow being letters.
>
> I don't know which distros ship it, I'm afraid mostly only
> accessibility-oriented ones. But going out of staging will help so much
> on that front :)
>
> On slide 6 the URL is split, you can reduce its font size a bit.
>
> On slide 10 you could add a picture of the synth you have :)
>
> On slide 13 you should write on the slide the answer to the
> why-synth-to-CPU question, for people who will miss it in your talk:
> synths report their speaking progress.
>
> Slide 16: yes, a diagram would be useful :)
>
> If you have the time before the deadline, on slides 7 and 18 you could
> draw a picture to show the flow.
>
>
> I don't know if you have already made this kind of presentation.  If
> not, I strongly advise to train :) for two reasons:
>
> - train by yourself to get an idea of how it fits in the 35 minutes you
>   have, to know how much time you can spend on the details.
>
> - train in from of colleagues or friends (who have some technical
>   understanding), just to check how it feels to talk about it in front
>   of people :) and get their feedback as well (even if you will not be
>   able to change the slides).
>
> Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
