Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 1FF9AB3F8B
	for <lists+speakup@lfdr.de>; Mon, 16 Sep 2019 19:20:11 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5B8051C3823; Mon, 16 Sep 2019 13:20:10 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kiIIEAi0";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DCE601C446D;
	Mon, 16 Sep 2019 13:19:29 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C7EA01C3823; Mon, 16 Sep 2019 13:19:27 -0400 (EDT)
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com
 [IPv6:2607:f8b0:4864:20::22e])
 by befuddled.reisers.ca (Postfix) with ESMTPS id CEF781C3551
 for <speakup@linux-speakup.org>; Mon, 16 Sep 2019 13:19:26 -0400 (EDT)
Received: by mail-oi1-x22e.google.com with SMTP id w17so412845oiw.8
 for <speakup@linux-speakup.org>; Mon, 16 Sep 2019 10:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=L7EFdoHtpQbaoCO/tSYlWGPUXC1WxFG88s8fcbb7sLA=;
 b=kiIIEAi0cj4hPyjbPSsUulx9zOl3PYiVA5l7QtD5fTeyWFrhXs1m6XwAEPdCY0HqCu
 HvWCkH52G0s4UasjHgCKmviLuD77cIHnl7ndZhv0AUBARF8uLfi8T0LuiFZ5cI0q0xnu
 kT7IyoHoeBGlo2W+EksfEvhWK+1LTSy/FgTXRWF3nCd2cREkpbHKSM1HKoTngV3+nEhb
 rjnenstl6nkaMGUDTcRW9FkqzVwE8jUYCAlJH2R3HRVAidYjkBqmMcwoNCgS2blAJ9N+
 IDcZcFc41yXzKPzuaR3qYhTOACny3WFL27qYsqSxnj0HU/FBoRYd/6jlQPmpMMktbdxe
 SbCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=L7EFdoHtpQbaoCO/tSYlWGPUXC1WxFG88s8fcbb7sLA=;
 b=TreNQwZVDafYsMSdklsDBpvlxqiBQQmdzvu0pktRndZ2dT5C/qiAuPpqDDLIG6fhzF
 g26zbzVEZIvfphdkMHC5kZSxLasu+HDGl2nqSL6Xs9tYb+/GhfEIb8GXF0QuGABUfFPg
 2C3UEqbg6oC8zibaEIK1aEwviaV8bHQhg2aeycAIowYny5hYgOJVAAGCHLV7p+uvprtz
 JpDSauWKTidBfIFlGBn7lMlcG86+gqkvLHF0Mzr2PcnbGuNeRulk7OhLPCLb/zOBsk1L
 rEU03lrjawrVDcXs9NMN1mduDjEAcPlSgvIvnvNTF30qMZ7MTE0Htdx8IaIVwHYmnFMx
 JQ9Q==
X-Gm-Message-State: APjAAAW2fPXSjnHHbCOPQ+kcKVfYz7Ux29Q524LJKf04BkSFxiJIKlri
 3DxhLh4xMCM1ek1ETs7ApBFfsDgM860MHBPpisIIyw==
X-Google-Smtp-Source: APXvYqyaUuNll0nw5J67x+9O4E3ZxzXHgd5WYWWufTDIvjZCSSKEl1WYt05vtI5vPcxjvJx4QKWe4VS+WhvDIRGSrFc=
X-Received: by 2002:aca:fd58:: with SMTP id b85mr255722oii.94.1568654365066;
 Mon, 16 Sep 2019 10:19:25 -0700 (PDT)
MIME-Version: 1.0
References: <fc6df57b-7c0f-808e-0772-6a943c14ea7c@the-brannons.com>
In-Reply-To: <fc6df57b-7c0f-808e-0772-6a943c14ea7c@the-brannons.com>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Mon, 16 Sep 2019 18:19:15 +0100
Message-ID: <CAOtcWM0x_Uu1yVyH_V9ntX7zo6urxdSjj4z5AA8YcehWGrpxVw@mail.gmail.com>
Subject: Re: let's try this again, crash link
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
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

thanks. I'm a little tied up at the moment. but will look into it as soon
as i get time.


On Mon, 16 Sep 2019, 17:33 Deedra Waters, <deedra@the-brannons.com> wrote:

> http://ix.io/1TLJ
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
