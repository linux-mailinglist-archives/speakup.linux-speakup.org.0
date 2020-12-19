Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A14B32DF045
	for <lists+speakup@lfdr.de>; Sat, 19 Dec 2020 16:41:56 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C6210380FB8; Sat, 19 Dec 2020 10:41:55 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=An+Suiut;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8E3FC380F32;
	Sat, 19 Dec 2020 10:41:55 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 37418380BFC; Sat, 19 Dec 2020 10:41:54 -0500 (EST)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 by befuddled.reisers.ca (Postfix) with ESMTPS id D3164380965
 for <speakup@linux-speakup.org>; Sat, 19 Dec 2020 10:41:53 -0500 (EST)
Received: by mail-qk1-f180.google.com with SMTP id w79so5031260qkb.5
 for <speakup@linux-speakup.org>; Sat, 19 Dec 2020 07:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=59b1tYY1NLcU++hjg0VCVzx5sSzK5apdFcf30ErA/kU=;
 b=An+SuiutTQ2X5BNYdWN9UcNZwgvdsh7NGT6YMO1Er/kKnckLK0o5rIrt1+oGxBIsAF
 go9d/8IQHkH42HMKnC7q+NiX3K2syCwZKJn7l4HRbDIWKRlexV7+PO1vtiuI23gwGmRw
 3qNRyMek7YHdKmc0b6w5CMPvQ3ptB7I69MdX2U5YdUtYEyEp17dgZhDCCGtLUMjLsaxj
 33rcdkg4L0g2V2GmHDN1bu4TFQMJDhe2Z587o/QM0kC+5OqEBwHXbrVNIz9HxE+9mW1E
 NW3Xfx5deS44F+LBnbK6PPdh7GR3JztbSJ1qFbNztSQc11Ua/edwD4z36xvifgvJvOpr
 Spiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=59b1tYY1NLcU++hjg0VCVzx5sSzK5apdFcf30ErA/kU=;
 b=ARLbwbpPhPMGZ021Y20v0whCrsa3jTNrUGzV22OdPsvDDT4RTK9R4f9xd0prCi/uTd
 sBrzTFTGb2OPV3Tgu704uBVltPq7w2v9SCPVj+G1OLiO+d8OIDxgdFe4SvnooJvVXN7h
 ndCaU1esxnDcs01P1qo84AGnm80XSup0L3tAzrOEtYomnJpd+Itvhdh/D8AotWhTEFRm
 Krlo9X9rEveWIJpmtNXMklD5JXFtzr3oIaNVfHd9sb2WdFMO/N/ytlUbduZuSe4Nzkaw
 bOWvQTUJc+Srd5FlR0NEJhcAv5FTDvBjlYk1aN2dlt1Dmz2qNAQr8SbWgFseqbLzL709
 au8A==
X-Gm-Message-State: AOAM53339tOQTUBGDMNQopZj3wtabM4oS1zVS34Q89GyQS0L8yYyW9kz
 MFR+CvWlM+6stncn8JMG+xg=
X-Google-Smtp-Source: ABdhPJxsELahS2R6ty5TOOPaMLvuRcoSRnOMy8E4XJT+gXhbshnzh/bKjpGlFD8+wXkPE2qJAcMVJw==
X-Received: by 2002:a37:7143:: with SMTP id m64mr10391663qkc.280.1608392448565; 
 Sat, 19 Dec 2020 07:40:48 -0800 (PST)
Received: from dans-mac-mini-2.home
 (pool-74-98-213-99.pitbpa.fios.verizon.net. [74.98.213.99])
 by smtp.gmail.com with ESMTPSA id d140sm7830885qkc.111.2020.12.19.07.40.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Dec 2020 07:40:47 -0800 (PST)
Date: Sat, 19 Dec 2020 10:40:46 -0500 (EST)
From: "dan d." <dandunfee@gmail.com>
To: Reece O'Bryan <reece.obryan@icloud.com>
Subject: Re: Mac terminal - Efficiently using terminal with screenreader
Message-ID: <alpine.OSX.2.23.453.2012190951090.1861@dans-mac-mini-2.home>
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



A key commander is different then a shortcut key and worrks only if voiceover is being used.

In the voiceover utility there is a an area to set key commanders.  These allow listing a series of mac and voiceover commands in the order
one wantss them performed and assign that commander to a key combination.  For example, the read fromtop of screen has the three commands
assigned to option+r.

The os10 comes with a few already defined.  Turn permission to use apple scripts on, then option+t will speak time and date.  That key
commander runs an apple script that performs that function.

On Fri, 18 Dec 2020, Reece O'Bryan wrote:

> I definitely agree voiceover is superior with the selection of voices and the customization they are from my own limited experience so far. If I understand you correctly, you created essentially a keyboard shortcut that does exactly what I have been trying to do? How can you do this?
>
>
> Thank you,
>
> -Reece
>
> > On Dec 18, 2020, at 12:01 PM, dan d. <dandunfee@gmail.com> wrote:
> >
> >
> >
> > I use voiceover in the mac terminal, even as I write this.  The quality and intelligibility and control of the voices is far superior to
> > anything one can get with a cconsole screen reader, that is what keeps me from using linux.  alone.
> >
> > There are a ffew prior selections required, the most imporant is to interact with the terminal; mac users will know what that means.  At that
> > point one can use the standard voiceover cursor commands to read the screen systematically.  Some, like read screen from the top reqqquires
> > two commands because one doesn't want the title line reade everytime.  One command goes to the top of the screen, the second goes down one
> > line and begins reading.  I used a key commander to combine both steps and assigned it to a single key combination.
> >
> >> On Thu, 17 Dec 2020, Zachary Kline wrote:
> >>
> >> Hey,
> >>
> >> A few thoughts about the terminal in Mac OS.
> >>
> >> There is a screen reader called TDSR, which can be found here on Github <https://github.com/tspivey/tdsr>. It has better Terminal support than VoiceOver, though takes some getting used to.
> >>
> >> As far as your mac and a hardware speech synthesizer, using it with a virtual machine is your only option. VoiceOver doesn???t support hardware synths at all. Fortunately, if you use it with a virtual machine, which I???ve done before, it should work fairly well.
> >>
> >> That being said, TDSR is worth a look if you???re open to a lighter-weight solution.
> >> Best,
> >> Zack.
> >>> On Dec 17, 2020, at 12:37 PM, Reece O'Bryan <reece.obryan@icloud.com> wrote:
> >>>
> >>> Great! Seems to be the same process as connecting a network adapter to a virtual machine.
> >>> That is a little discouraging I can???t compile on my MacBook. The native terminal doesn???t seem to be accessible. I can???t read the output line by line, only the entire output from top to bottom of the terminal. I could be missing something, I am still quite new to voiceover. Although I have talked with a couple of MacBook users that have used voiceover for quite a few years, they are not familiar with terminal, but still could not figure out how to navigate it easily either. Maybe the hardware synthesizer could help there. (?)
> >>>
> >>> Thank you,
> >>>
> >>> -Reece
> >>>
> >>>>> On Dec 17, 2020, at 3:27 PM, Gregory Nowak <greg@gregn.net> wrote:
> >>>>>
> >>>>> On Thu, Dec 17, 2020 at 03:00:52PM -0500, Reece O'Bryan wrote:
> >>>>> Is it possible to compile speak up on my MacBook?
> >>>>
> >>>> No.
> >>>>
> >>>>> On Thu, Dec 17, 2020 at 03:12:54PM -0500, Reece O'Bryan wrote:
> >>>>> Just to confirm, I???m going to need a serial adapter to plug in to my
> >>>> USB hub connected to my MacBook, then connect a hardware synthesizer
> >>>> to the cereal.
> >>>>
> >>>> Correct.
> >>>>
> >>>>> Doing it this way would I be able to use the hardware synthesizer inside of virtualBox running Debian and Speakup? I assume that it should in theory, but if not because of the virtualization, then plan B is doing the exact same thing while booting from something like Ubuntu on the USB.
> >>>>
> >>>> Yes, that should work, though I haven't done that in a while. You have
> >>>> to options here. First option is to define a serial port which would
> >>>> appear in your guest as a physical serial port, and you would set that
> >>>> up to interface to your USB serial port on the host. The second option
> >>>> is to dirrectly pass the USB serial adapter through to the guest. The
> >>>> virtualbox user's manual has more details.
> >>>>
> >>>> Greg
> >>>>
> >>>>
> >>>> --
> >>>> web site: http://www.gregn.net
> >>>> gpg public key: http://www.gregn.net/pubkey.asc
> >>>> skype: gregn1
> >>>> (authorization required, add me to your contacts list first)
> >>>> If we haven't been in touch before, e-mail me before adding me to your contacts.
> >>>>
> >>>> --
> >>>> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> >>>> _______________________________________________
> >>>> Speakup mailing list
> >>>> Speakup@linux-speakup.org
> >>>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> >>> _______________________________________________
> >>> Speakup mailing list
> >>> Speakup@linux-speakup.org
> >>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> >>
> >> _______________________________________________
> >> Speakup mailing list
> >> Speakup@linux-speakup.org
> >> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> >>
> >
> > --
> > XB
> > _______________________________________________
> > Speakup mailing list
> > Speakup@linux-speakup.org
> > http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
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
