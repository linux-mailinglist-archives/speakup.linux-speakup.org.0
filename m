Return-Path: <speakup+bounces-580-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C805B596778
	for <lists+speakup@lfdr.de>; Wed, 17 Aug 2022 04:39:18 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=blinksoft-com.20210112.gappssmtp.com header.i=@blinksoft-com.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=eVDRHCKM;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7B9AF384853; Tue, 16 Aug 2022 22:39:17 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6235038487C
	for <lists+speakup@lfdr.de>; Tue, 16 Aug 2022 22:39:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 053D238480C; Tue, 16 Aug 2022 22:39:13 -0400 (EDT)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D35E7384803
	for <speakup@linux-speakup.org>; Tue, 16 Aug 2022 22:39:12 -0400 (EDT)
Received: by mail-qk1-f175.google.com with SMTP id f4so7536875qkl.7
        for <speakup@linux-speakup.org>; Tue, 16 Aug 2022 19:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blinksoft-com.20210112.gappssmtp.com; s=20210112;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:from:to:cc;
        bh=Z24BwSEEOH2U2fPe5JUGVBK8o+p/BQ2sAQkrb7c2gfE=;
        b=eVDRHCKM1m9Jq924RBod9qKhiukHvPhuH6ocIC6rWe/saQ6JdpV+C9KnMg0MinyPuW
         AsxqgKZ2YBdDcnWhim8ZZ9MnuDviZ5xHNqUTS4ntHhxEGC4Gz0l+PxI0NkTBTeg4pjBO
         dp2NkphNcLYWFEI5RueCSh2IBZmmBJ04kOJ+VOipdfCzb9pU3uV+i0Cg6vJcu5KDSpw4
         NxrOFYvQRTifuqJc14q/1CVhJBLEsZgVruPuoCPtGSTSVU6TbHyRRxYWzi282CWVixrV
         D+wUfnLmjK/UIj2Ihh7fHeA5hSUDVkNICqALEzFI1IzFBsQYXkCxJ0swH7YtY+CM+Ysb
         vkaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:x-gm-message-state:from:to:cc;
        bh=Z24BwSEEOH2U2fPe5JUGVBK8o+p/BQ2sAQkrb7c2gfE=;
        b=hyfpLrs2fYlU4BnVsJUIvSR6em8BvOpjM1c8rQqVmDhapr+b2gYTIe/fD+SRuGrrC2
         7HonlZEBLNJBXyGBoBAHESQS2/egiR1YiOEFL/kUfw5piPBEY8QS5eaayCI2TFn5K+OH
         7hJ5dIP7uWvckjOk2ot1pBR4qqbv+AP7OHZmdx2RKTXHvP6YNPZ7MyswZK/Eyr4meKbc
         NO0kSPuitAkMFK+/NNQ38YXZx/WGmISzImdQPRZAYvg6/kdHQoM3AgjElPqDSV+XtyVO
         M9CaGV7Aoy2d1rtKpq2pN7TuIaW4w6WijwJfQmr0gVvvvDbRiVVvXR15oyPJbiPO99UG
         9vLQ==
X-Gm-Message-State: ACgBeo1iy+P5YDb0tpRiD4u56dl0rNP7h2DOir/CGE8BKKr1F1vMjMGE
	WPJfwEGcGk1XAHBJ1racfVvsDQ==
X-Google-Smtp-Source: AA6agR4aQKGhx5L4Cca2Xvq7+hoHcNjPZXc+ceoWjQAPzb2LUGm0Zh49qtP3Klll6i0/ZqebdiLRyQ==
X-Received: by 2002:a05:620a:4442:b0:6b2:844e:ee67 with SMTP id w2-20020a05620a444200b006b2844eee67mr16586985qkp.625.1660703889898;
        Tue, 16 Aug 2022 19:38:09 -0700 (PDT)
Received: from Darkstar (cpe-96-29-128-102.kya.res.rr.com. [96.29.128.102])
        by smtp.gmail.com with ESMTPSA id p14-20020a05620a15ee00b006b8e049cf08sm6043901qkm.2.2022.08.16.19.38.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Aug 2022 19:38:09 -0700 (PDT)
From: <kperry@blinksoft.com>
To: "'Brian Buhrow'" <buhrow@nfbcal.org>,
	"'Karen Lewellen'" <klewellen@shellworld.net>,
	"'John G. Heim'" <jheim@math.wisc.edu>
Cc: "'Chevelle'" <cstrobel@crosslink.net>,
	<speakup@linux-speakup.org>
References: <Pine.LNX.4.64.2208162114230.1339726@server2.shellworld.net> <202208170153.27H1rnAJ019923@nfbcal.org>
In-Reply-To: <202208170153.27H1rnAJ019923@nfbcal.org>
Subject: RE: "Accessibility in Fedora Workstation" (fwd)
Date: Tue, 16 Aug 2022 22:38:08 -0400
Message-ID: <000201d8b1e2$639f2910$2add7b30$@blinksoft.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGgs/zFt5Xy9X2egQLV6kFXXaHZEK4iW4mw
Content-Language: en-us
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5



Not true yet again.  I am sure you were in some of these conversations.  Why
don't we talk about the time Freedom went to the congress and whined about
Microsoft trying to put blind coders out of business's.  We might all want
to dig into the congressional record and see what was actually said.  With
that said.  Your comment that the only reason Freedom and the others could
do what they did  is because of the way you guys made them keep their API's
etc.  I disagree whole heartedly.  You know what would have been the best
thing for accessibility?  If we would have been locked out and the coders
that fought with MsDos and made it work with no help from Microsoft    This
is very clear just by the way things like Anti viruses grew with no help
from Microsoft and only later did Microsoft decide to be part of that world.
What happened is the people that were most invested were scared away from
truly helping by the fear of law  suits.  Go ahead and look back at the
congressional record where Freedom said that a screen reader included in
Microsoft would put Blind developers out of business.  They could not see
where both sides could win.  They wanted to tame Microsoft and the current
state of Screen readers is what we got.  The early release Narrators in XP
service pack three was amazing then Freedom wined and suddenly you couldn't
even install an your own OS till like middle vista.  Ridiculous.

From: Brian Buhrow <buhrow@nfbcal.org> 
Sent: Tuesday, August 16, 2022 9:54 PM
To: Karen Lewellen <klewellen@shellworld.net>; John G. Heim
<jheim@math.wisc.edu>
Cc: Chevelle <cstrobel@crosslink.net>; speakup@linux-speakup.org;
buhrow@nfbcal.org
Subject: Re: "Accessibility in Fedora Workstation" (fwd)

	Hello.  I'm going to stop soon, but I'll try one more time.  The
conversations I participated in weren't ones where we asked Microsoft to
stop development on Narrator.  They were conversations where we asked them
not to develop Narrator to the exclusion of keeping other screen reader
developers out of the loop.  We recognized that Microsoft was only going to
put so much resource into developing the APIs and Narrator, and if they
didn't keep the third parties in the loop, we might end up in a situation
where the existing screen readers  didn't work at all and Narrator wasn't
really ready for prime time use.  The point that's ben missed here, is that
the only reason Jaws, NVDA and any other third party screen readers work at
all is because Microsoft has worked hard to make sure they will continue to
work.  If Microsoft decided to close those APIs, while there might be a
large hue and cry in our community, I doubt they would get into that much
legal trouble.  Consider, for example, how much effort was expended to get
them to accept third party browsers on their platform.  Yes, they do and now
they embrace it, sort of, but there is no way the blindness community could
mount the kind of effort it took to get them to change their minds about
browsers, which I could argue, is still not entirely a resolved question,
since there are times you still need to use Edge if you want to do certain
things in Windows.

	I hear and appreciate the argument from those who cannot afford to
pay for extra software in order to use Windows.  But consider this, today,
NVDA is a very viable option which can be had for free.  Even better, it
came about without the total destruction of the eco system built around
Jaws, which, whether you like it or not, supports a large number of blind
folks who are gainfully employed.  It may be that Freedom Scientific
strongly discouraged Microsoft from developing Narrator, I wouldn't put it
past them to have done that, and it's true the NFB didn't decry their
efforts, but in the conversations of which I was a part, and I realize I've
said this before, it was always about making sure all access developers had
equal access to the Microsoft APis and could write the best screen readers
possible.  NVDA is the shining example of the success of that argument.  If
Microsoft had pursued the holy graille of making the best screen reader
possible, they would have done it at the expense of the third party AT
developers and we would be in much worse shape than we are now.

-Brian


