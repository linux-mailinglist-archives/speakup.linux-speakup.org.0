Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id D44E014F3E0
	for <lists+speakup@lfdr.de>; Fri, 31 Jan 2020 22:38:11 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4F7B11C2B56; Fri, 31 Jan 2020 16:38:11 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E425F1C2CDA;
	Fri, 31 Jan 2020 16:37:33 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 470551C2B56; Fri, 31 Jan 2020 16:37:31 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 164D71C0D8D
 for <speakup@linux-speakup.org>; Fri, 31 Jan 2020 16:37:30 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
 by mailbackend.panix.com (Postfix) with ESMTP id 488Vtd1kmVz1Vtt
 for <speakup@linux-speakup.org>; Fri, 31 Jan 2020 16:37:29 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
 id 488Vtd03B1zcbc; Fri, 31 Jan 2020 16:37:28 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by panix1.panix.com (Postfix) with ESMTP id 488Vtc6kGZzcbV
 for <speakup@linux-speakup.org>; Fri, 31 Jan 2020 16:37:28 -0500 (EST)
Date: Fri, 31 Jan 2020 16:37:28 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Intro and a couple questions
In-Reply-To: <a07a7cb0d379a6b265b82e4fa7326eb1@geekonskates.com>
Message-ID: <alpine.NEB.2.21.2001311635490.21983@panix1.panix.com>
References: <a07a7cb0d379a6b265b82e4fa7326eb1@geekonskates.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

About talkingarch, you heard wrong.  Try https://talkingarch.info/ to
check that out.

On Fri, 31 Jan 2020, geek@geekonskates.com wrote:

> Date: Fri, 31 Jan 2020 16:29:35
> From: geek@geekonskates.com
> Reply-To: Speakup is a screen review system for Linux.
>     <speakup@linux-speakup.org>
> To: speakup@linux-speakup.org
> Subject: Intro and a couple questions
>
> Hey there!  Happy Friday! *smile*
>
> I'm new to this list, and first off I wanted to thank you guys.  Speakup is
> absolutely awesome!  I tried that TalkingArch a long time ago, and it was
> okay, but I wished it were TalkingBuntu or Talkian or something else. *lol*
> It's also no longer maintained from what I've heard.  But anyway, today I was
> updating Ubuntu from 18.04 to 19.whatever, and that broke the GUI.  And of
> course, the default terminal screen has extremely tiny text, and I need zoom
> to read it; so, after about an hour of searching the web for solutions, and
> using my phone's magnifier app to see what I was doing, I remembered someone
> on another list mention speakup.  Now I have a fully functional screen reader
> for the Linux terminal, and I'm absolutely loving it!  Way to go, Speakup
> team! *smile*
>
> Anyway, I had a couple questions, if you don't mind:
>
> 1. Is Speakup the same thing as Espeakup?  I tried "sudo apt-get install
> speakup" and it suggested replacing it with "espeakup".  I know what eSpeak
> is, and I've used it many times in my own projects, but are they the same
> thing?
>
> 2. I'm also a developer, and I'm a big fan of building terminal apps.  But my
> terminal apps have use eSpeak to talk, and also use a code library called
> ncurses to create a decent interface for users with some vision.  I know ASCII
> art in general should always be either avoided or optional, but I'd like what
> I build to be accessible to everyone, including people with some vision.
> Anyway, in my troubleshooting earlier, I ran dpkg-config something-or-other
> and got what looked like a colorful screen with a message box.
> Speakup/Espeakup was still rambling on about something previously printed to
> the screen, but when I pressed the down arrow, it spoke the currently selected
> option.  This is awesome!  But I'm interested in learning how to make my
> projects compatible with Speakup.  I'm sure it's more than just not linking to
> eSpeak (lol).  How did it know which bit of text on the screen was selected?
>
> 3. I'd like to get involved.  I know C and Git well, currently learning GDB
> and Makefiles (I got the basics though), but definitely capable of
> contributing.  I don't know much about the kernel, but I'd like to learn.  I'm
> also fluent in Spanish, so I'd like to translate the user's guide (which I'm
> still reading) into Spanish.  How would I get started?  Apart from reading the
> user guide I mean - still working on that.
>
> Thanks and have a great weekend! *smile*
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>

-- 

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
