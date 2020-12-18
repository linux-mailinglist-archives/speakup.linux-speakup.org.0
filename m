Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0C4592DE7C4
	for <lists+speakup@lfdr.de>; Fri, 18 Dec 2020 18:02:39 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DC190380F3F; Fri, 18 Dec 2020 12:02:35 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=E/XbZk5k;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BAA41380F44;
	Fri, 18 Dec 2020 12:02:33 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 4DCF0380BB3; Fri, 18 Dec 2020 12:02:32 -0500 (EST)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 2874D380967
 for <speakup@linux-speakup.org>; Fri, 18 Dec 2020 12:02:32 -0500 (EST)
Received: by mail-qk1-f179.google.com with SMTP id 186so2622482qkj.3
 for <speakup@linux-speakup.org>; Fri, 18 Dec 2020 09:02:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=qEOBAc68zDJZCFyWoyckbQ4hGrrjIkgqmLEVIcy8Ao8=;
 b=E/XbZk5kq8tc70dvVUFefL3KqGtGP0gFTVA9p0//WmGkKCmU27/hfAboLDBIHFlL5V
 tcYjm+8q6henyubJwaOpKjZLvjqqyWu2vByxjYnWnTbePBYb0raYHnopCXvGPmRG7xOq
 VO/XmMo21Fbf2QE3mmEcqN9rWN0qfjp9gg8ZKLeNlW3Sfe8qFbpdr4DTclnWn0C1HemE
 1U2Wd9sZzCSJjL3u/DwXDB5dlx167TJG7IspydRFGdR3GWeugnz+HXxPBIMKUNblFzRk
 rnatpD6u+jpdl/3k+vmI8pViZzpbYJXWmh8urPdhhjh8Mz4yrhRcWwpnzsYU/zoBY3ZT
 5Xvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=qEOBAc68zDJZCFyWoyckbQ4hGrrjIkgqmLEVIcy8Ao8=;
 b=OzNUIRowyEz6j/YpDHec/+VKN/LvK/XWa7UHE1q1jmqMRNOeNVIGOFz02HPwyLeiQU
 P+t+omuDFMjRhBy0FAewdyGJvEATEOeImyqIF5UnrdOE/wcpxqF2md5zWEqKReoZVjXJ
 /OHa/Cg/Da8srlHJkaeZkwsW5fk5WEXPiivogoQZ2o95ZjC85afVRcE5yS0WprW7q7M/
 3xiNzJWLqQxnhxEu4tFR1Psl/9qsH3ocr420tuTm7BnDArW8oD31IGw1WmyvBSxQBFud
 /9D717aFocHja9wkSzHxxPaRxy+d9MJjZGXwnvQCCV+1FVMXHbz38HQh606vSaydtRHT
 NHKA==
X-Gm-Message-State: AOAM533R6BSfZ8jANL8NYGqQU0FElvWJqGlKVLYGPKWufD/m6KIJLa+E
 +XEKkihxsJIrPcjrH+eSfj0=
X-Google-Smtp-Source: ABdhPJwO1g+bpsffbrKmc6KXy0qz0waM10t+XY6ZXlpJTeTXcOepIyIh+J5pe8hwxHcQqv/+JQNo4A==
X-Received: by 2002:a37:9a4a:: with SMTP id c71mr5859527qke.56.1608310889106; 
 Fri, 18 Dec 2020 09:01:29 -0800 (PST)
Received: from dans-mac-mini-2.home
 (pool-74-98-213-99.pitbpa.fios.verizon.net. [74.98.213.99])
 by smtp.gmail.com with ESMTPSA id q3sm6063099qkq.118.2020.12.18.09.01.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Dec 2020 09:01:28 -0800 (PST)
Date: Fri, 18 Dec 2020 12:01:26 -0500 (EST)
From: "dan d." <dandunfee@gmail.com>
To: Zachary Kline <zkline@speedpost.net>
Subject: Mac terminal - Efficiently using terminal with screenreader
Message-ID: <alpine.OSX.2.23.453.2012181141350.7099@dans-mac-mini-2.home>
User-Agent: Alpine 2.23 (OSX 453 2020-06-18)
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



I use voiceover in the mac terminal, even as I write this.  The quality and intelligibility and control of the voices is far superior to
anything one can get with a cconsole screen reader, that is what keeps me from using linux.  alone.

There are a ffew prior selections required, the most imporant is to interact with the terminal; mac users will know what that means.  At that
point one can use the standard voiceover cursor commands to read the screen systematically.  Some, like read screen from the top reqqquires
two commands because one doesn't want the title line reade everytime.  One command goes to the top of the screen, the second goes down one
line and begins reading.  I used a key commander to combine both steps and assigned it to a single key combination.

On Thu, 17 Dec 2020, Zachary Kline wrote:

> Hey,
>
> A few thoughts about the terminal in Mac OS.
>
> There is a screen reader called TDSR, which can be found here on Github <https://github.com/tspivey/tdsr>. It has better Terminal support than VoiceOver, though takes some getting used to.
>
> As far as your mac and a hardware speech synthesizer, using it with a virtual machine is your only option. VoiceOver doesn???t support hardware synths at all. Fortunately, if you use it with a virtual machine, which I???ve done before, it should work fairly well.
>
> That being said, TDSR is worth a look if you???re open to a lighter-weight solution.
> Best,
> Zack.
> > On Dec 17, 2020, at 12:37 PM, Reece O'Bryan <reece.obryan@icloud.com> wrote:
> >
> > Great! Seems to be the same process as connecting a network adapter to a virtual machine.
> > That is a little discouraging I can???t compile on my MacBook. The native terminal doesn???t seem to be accessible. I can???t read the output line by line, only the entire output from top to bottom of the terminal. I could be missing something, I am still quite new to voiceover. Although I have talked with a couple of MacBook users that have used voiceover for quite a few years, they are not familiar with terminal, but still could not figure out how to navigate it easily either. Maybe the hardware synthesizer could help there. (?)
> >
> > Thank you,
> >
> > -Reece
> >
> >> On Dec 17, 2020, at 3:27 PM, Gregory Nowak <greg@gregn.net> wrote:
> >>
> >>> On Thu, Dec 17, 2020 at 03:00:52PM -0500, Reece O'Bryan wrote:
> >>> Is it possible to compile speak up on my MacBook?
> >>
> >> No.
> >>
> >>> On Thu, Dec 17, 2020 at 03:12:54PM -0500, Reece O'Bryan wrote:
> >>> Just to confirm, I???m going to need a serial adapter to plug in to my
> >> USB hub connected to my MacBook, then connect a hardware synthesizer
> >> to the cereal.
> >>
> >> Correct.
> >>
> >>> Doing it this way would I be able to use the hardware synthesizer inside of virtualBox running Debian and Speakup? I assume that it should in theory, but if not because of the virtualization, then plan B is doing the exact same thing while booting from something like Ubuntu on the USB.
> >>
> >> Yes, that should work, though I haven't done that in a while. You have
> >> to options here. First option is to define a serial port which would
> >> appear in your guest as a physical serial port, and you would set that
> >> up to interface to your USB serial port on the host. The second option
> >> is to dirrectly pass the USB serial adapter through to the guest. The
> >> virtualbox user's manual has more details.
> >>
> >> Greg
> >>
> >>
> >> --
> >> web site: http://www.gregn.net
> >> gpg public key: http://www.gregn.net/pubkey.asc
> >> skype: gregn1
> >> (authorization required, add me to your contacts list first)
> >> If we haven't been in touch before, e-mail me before adding me to your contacts.
> >>
> >> --
> >> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> >> _______________________________________________
> >> Speakup mailing list
> >> Speakup@linux-speakup.org
> >> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> > _______________________________________________
> > Speakup mailing list
> > Speakup@linux-speakup.org
> > http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>

-- 
XB
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
