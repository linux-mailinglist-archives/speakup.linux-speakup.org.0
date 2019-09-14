Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 21582B2D1B
	for <lists+speakup@lfdr.de>; Sat, 14 Sep 2019 23:10:14 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CD1E61C4437; Sat, 14 Sep 2019 17:10:11 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HvZan/wT";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0F4FB1C4441;
	Sat, 14 Sep 2019 17:09:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 974471C435F; Sat, 14 Sep 2019 17:09:50 -0400 (EDT)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 844761C323F
 for <speakup@linux-speakup.org>; Sat, 14 Sep 2019 17:09:48 -0400 (EDT)
Received: by mail-oi1-f171.google.com with SMTP id k20so5436171oih.3
 for <speakup@linux-speakup.org>; Sat, 14 Sep 2019 14:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jMW5QQfqB3GgO3Rwut+y8ooMRK6oMNFBtSgXBDuvbgY=;
 b=HvZan/wTdVlLNfNBct/c1zeuudQeshyJ69LVka0uJo6QZJZo61cdvd+XXNRN0uAfcd
 mNzatB28Ta5FEYbS5cfOJzsSDH5QkOqZN4x+d1vF6pcackIOVqwSvfheY2l+MUlNueE0
 lf7pi3eDjXxGYy9rATo0prNP0WfwnDS27R/Ode++EuNQ3wgXCZs0L5t2GetmQmWVa05z
 8hPCTxflzywUPju7Uf5g4+PZtS+rzmSL+dgiNENDhkTEd5xIZtzLPfvewT4Q2i8Bn3mr
 1b+qVHom0OkoHtSK7Y5ZxhaA5JvsACyQ2uu5alvI/SIf2NNKBq6GlFfA7ZqB4RIuf6yf
 Cr9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jMW5QQfqB3GgO3Rwut+y8ooMRK6oMNFBtSgXBDuvbgY=;
 b=HXBSa4fAlnfRZJFZ1kqnaPUFzEPY26cQblh/Xd38+NkgJ00LAZ8q/b6LEdl5Wv19Sc
 rRoXMoLQ0bOgoM2k9PiL1y6plftMYZdtW/cDaorgb+pFeHBHNoixuqiFfWZnIXD0bjb/
 NT1IkQMccqJKRdI+8cBt4So2Cv5a6O67JquizAEEXx4nWfGwT6aUNsHmAWyxHPBFzdIb
 /2W5gT+JhjFc4pK+ERKNXASKSbSSGKBnR8ZR8Pej+geejqpvLmCWZfe/VWEZawITP0wD
 ZgnUAGO8qtMvDara6fpv/Fu3u0nuHFcVmAPZO6HwkzBFG/vPYhqGExfQEwupOPWzsVRB
 ZXcQ==
X-Gm-Message-State: APjAAAX8eK60lf0hLCCt3L8bCcA+WoIwe4fVigNV0bKGHME0nnSpW2JF
 CI/Ui9wNtZKTS/9kXZtvsC7oMSJS40A6dyKmOHw=
X-Google-Smtp-Source: APXvYqzfdOCMLTAlz0b2bARRrW5zytkIb1s5zlrSoVgDJNzlQtpbzvMiBem0XyrOtygyCcs/mxPD4cgAbfUaj5V97r0=
X-Received: by 2002:aca:7509:: with SMTP id q9mr8093677oic.111.1568495326122; 
 Sat, 14 Sep 2019 14:08:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190707065710.GA5560@kroah.com> <20190712083819.GA8862@kroah.com>
 <20190712092319.wmke4i7zqzr26tly@function> <20190713004623.GA9159@gregn.net>
 <20190725035352.GA7717@gregn.net>
 <875znqhia0.fsf@cmbmachine.messageid.invalid>
 <m3sgqucs1x.wl-covici@ccs.covici.com>
 <CAOtcWM0qynSjnF6TtY_s7a51B7JweDb7jwdxStEmPvB9tJFU4Q@mail.gmail.com>
 <20190821222209.GA4577@gregn.net>
 <CAOtcWM0Jzo+wew-uiOmde+eZXEWZ310L8wXscWjJv5OXqXJe6Q@mail.gmail.com>
 <20190909025429.GA4144@gregn.net>
In-Reply-To: <20190909025429.GA4144@gregn.net>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Sat, 14 Sep 2019 22:08:35 +0100
Message-ID: <CAOtcWM0P=w-iBZzwekVrSpp7t2WO9RA5WP956zgDrNKvzA+4ZA@mail.gmail.com>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
To: Gregory Nowak <greg@gregn.net>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 linux-kernel@vger.kernel.org, John Covici <covici@ccs.covici.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

On Mon, Sep 9, 2019 at 3:55 AM Gregory Nowak <greg@gregn.net> wrote:
>
> On Sun, Sep 08, 2019 at 10:43:02AM +0100, Okash Khawaja wrote:
> > Sorry, I have only now got round to working on this. It's not complete
> > yet but I have assimilated the feedback and converted subjective
> > phrases, like "I think..." into objective statements or put them in
> > TODO: so that someone else may verify. I have attached it to this
> > email.
>
> I think bleeps needs a TODO, since we don't know what values it accepts, or
> what difference those values make. Also, to keep things uniform, we
> should replace my "don't know" for trigger_time with a TODO. Looks
> good to me otherwise. Thanks.

Great thanks. I have updated.

I have two questions:

1. Is it okay for these descriptions to go inside
Documentation/ABI/stable? They have been around since 2.6 (2010). Or
would we prefer Documentation/ABI/testing/?
2. We are still missing descriptions for i18n/ directory. I have added
filenames below. can someone can add description please:

What:           /sys/accessibility/speakup/i18n/announcements
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO

What:           /sys/accessibility/speakup/i18n/chartab
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO

What:           /sys/accessibility/speakup/i18n/ctl_keys
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO

What:           /sys/accessibility/speakup/i18n/function_names
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO

What:           /sys/accessibility/speakup/i18n/states
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO
What:           /sys/accessibility/speakup/i18n/characters
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO
What:           /sys/accessibility/speakup/i18n/colors
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO
What:           /sys/accessibility/speakup/i18n/formatted
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO
What:           /sys/accessibility/speakup/i18n/key_names
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO

Thanks,
Okash
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
