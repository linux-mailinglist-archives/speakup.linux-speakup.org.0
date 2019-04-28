Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id D8989B63C
	for <lists+speakup@lfdr.de>; Sun, 28 Apr 2019 18:19:02 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 01BCD1C4406; Sun, 28 Apr 2019 12:19:00 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Sor6S/cz";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DCF6A1C43F7;
	Sun, 28 Apr 2019 12:18:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id E04321C4383; Sun, 28 Apr 2019 12:18:17 -0400 (EDT)
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 3A6FF1C433E
 for <speakup@linux-speakup.org>; Sun, 28 Apr 2019 12:18:16 -0400 (EDT)
Received: by mail-wr1-x431.google.com with SMTP id r6so12126833wrm.4
 for <speakup@linux-speakup.org>; Sun, 28 Apr 2019 09:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o2/s/7+7G4OJ0Iddz5mY8ndVOsHSefD5Ea8J+vF1kBI=;
 b=Sor6S/czrEx77UpOTUgTmJnWPUuBGpI1wxs6prVhuhJtfToPHYt9F9dBs4n/NBZ2xa
 iXAxpySlD+eYna7D8MPG8/oYbvWcYCvqpD9Vh3W9W/cacKTcHWdQLAkJ5vpZefVSSd8L
 u+JD/H8nP6zJPk2FOOzW4aIqnAcuEqaW4dZhjsWVxBgFq4bqpgtz8MVLCtwaMg5FlfJV
 oanbwIYpQFFTwog39Alu/aE71kP8DumuGtEJ404Gg3d38fKQRTE+39UTU1xTsbKiZ9BZ
 3xYqk4kpvtqL895uEEQS/wgH/m6LQCdWJap0QcVVnzS+CGP5fuEMnigpcWwbY1fOLu9w
 vfXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o2/s/7+7G4OJ0Iddz5mY8ndVOsHSefD5Ea8J+vF1kBI=;
 b=T13Vg5SGGQpXoDyrEGS5//rNJDJKZdD7vebRkBVBYXFiv1bjkEhzOPnno5154rIBr0
 49SgRc+ovg/5RKYkPkvuLt4+afcs/YlqIMUVarq6XYrTpzs534fUoAGx/H6EZD4vV2DT
 qYdTzzF8nrYMEwIvu30IaYM1pzHGR9riJZPbQKk0dueuwPrw3O7ePRjB5apvwwqerirO
 TyYJL7WAlr2Ok95AokauT/cyEzKgwiz8SM0oAfVSD9A+rl2GKnEk4KEqsQ5v48nKJJRJ
 2BpZ597yQsJdkTkiI2SEjn/X8RvcVSgsSI0bDTJOs87LfGdYkCISdKnlXZH1m45mQydt
 XMpQ==
X-Gm-Message-State: APjAAAWZPrNoviIZXUOJRz6RPG6ju1CJYbQMUlrbD+08Wr2jYBtaFGS+
 gk8D+ha3Zot879IyH8UcV6Y=
X-Google-Smtp-Source: APXvYqypRrwihil3FIhDhXdXAgtJtYCdxzXM251QFEulqbM2sMyTsLzoi9dMXHCnHr+1EwxdS/Vtcg==
X-Received: by 2002:a5d:45cc:: with SMTP id b12mr2813429wrs.142.1556468294071; 
 Sun, 28 Apr 2019 09:18:14 -0700 (PDT)
Received: from narunkot ([94.11.212.240])
 by smtp.gmail.com with ESMTPSA id h16sm2530660wrb.31.2019.04.28.09.18.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 28 Apr 2019 09:18:12 -0700 (PDT)
Date: Sun, 28 Apr 2019 17:18:03 +0100
From: Okash Khawaja <okash.khawaja@gmail.com>
To: Jude DaShiell <jdashiel@panix.com>
Subject: Re: speakup and garbled text
Message-ID: <20190428171803.7684984b@narunkot>
In-Reply-To: <alpine.NEB.2.21.1903160625050.548@panix1.panix.com>
References: <7b432bc0-4164-714e-f3bd-69ec44a7116b@the-brannons.com>
 <alpine.NEB.2.21.1903160625050.548@panix1.panix.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Sat, 16 Mar 2019 06:25:56 -0400
Jude DaShiell <jdashiel@panix.com> wrote:

> When that happens I start using the last line and next line keys which
> clears the garbled text up for some reason.
> 
> On Sat, 16 Mar 2019, deedra Waters wrote:
> 
> > Date: Sat, 16 Mar 2019 05:41:40
> > From: deedra Waters <deedra@the-brannons.com>
> > Reply-To: Speakup is a screen review system for Linux.
> >     <speakup@linux-speakup.org>
> > To: speakup@linux-speakup.org
> > Subject: speakup and garbled text
> >
> > Essentially this bug is easy to reproduce. just read a large chunk
> > of text. from everything i've seen that alone will do it as to how
> > often it does it i've not really counted because it for me at least
> > happens? quite often to the point where i find speakup irritating
> > to use especially if i'm trying to read large amounts of text. for
> > example, if i were to use speakup with lynx to read a rather long
> > webpage, i guarantee you it will garble as to how often, shrug,
> > often enough to make it frustrating and irritating.

Hi,

Apologies for a late follow-up. I am struggling to reproduce
this. Could you explain what you mean by reading large chunk of text?

Here is what I did. Set up speakup with espeak. Then in
console, opened spkguide.txt with less. I allowed it to read a full
screen but couldn't find garbled text. Shall I do it with more
screenfuls? I also opened spkguide.txt with cat and let speakup read
for some time which was definitely more than one screenful.

Thanks,
Okash
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
