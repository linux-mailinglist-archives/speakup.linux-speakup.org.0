Return-Path: <speakup+bounces-432-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B986052BED0
	for <lists+speakup@lfdr.de>; Wed, 18 May 2022 17:43:06 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=qTT/tGOY;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4E9FB380848; Wed, 18 May 2022 11:43:06 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4063B380848
	for <lists+speakup@lfdr.de>; Wed, 18 May 2022 11:43:06 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BFE24380994; Wed, 18 May 2022 11:43:02 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7F11138082A
	for <speakup@linux-speakup.org>; Wed, 18 May 2022 11:43:02 -0400 (EDT)
Received: from [192.168.1.155] (pool-98-115-237-103.phlapa.fios.verizon.net [98.115.237.103])
	by mailbackend.panix.com (Postfix) with ESMTPSA id 4L3HLs2xhwzKSV;
	Wed, 18 May 2022 11:43:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1652888581; bh=VukqWaowrcsoipuZkfVyCikE8H5FJrYcMBXRKGnrY3I=;
	h=From:To:Date:In-Reply-To:References:Subject;
	b=qTT/tGOYFfU8ayAmXgoZUpveL0X66b1cASWTT6xHc36bOkY2hwdh040L/avWtEvBB
	 50DVdTwTJu8TBWQaOOmcLgZLbdTdW+iz/iW4JenoeRYhu7ayqq+Us6eaoYIQKAMSYZ
	 ET9FYg7d1FeQIinakaHYlrAwBvv4w6iXwJunAUOY=
From: <jdashiel@panix.com>
To: "K0LNY_Glenn" <glenn@ervin.email>, "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Date: Wed, 18 May 2022 11:42:59 -0400
Message-ID: <180d7d62bb8.2923.7f5f0e00eb39c74e480406aa7dcc21f8@panix.com>
In-Reply-To: <061e01d86acb$37cbd440$82ffa8c0@WIN40RPKAT965G>
References: <061e01d86acb$37cbd440$82ffa8c0@WIN40RPKAT965G>
User-Agent: AquaMail/1.35.0 (build: 103500130)
Subject: Re: Getting Speech-Dispatcher To Work
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="180d7d62e7728e29231a8f7e9"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.
--180d7d62e7728e29231a8f7e9
Content-Type: text/plain; format=flowed; charset="us-ascii"
Content-Transfer-Encoding: 8bit

In your user directory please run spd-conf and answer questions in order to 
make a user configuration file.  Since you are running orca, you may want 
to have speech-dispatcher started up when the system comes up.  That may 
get orca working for you.

On May 18, 2022 11:23:42 AM "K0LNY_Glenn" <glenn@ervin.email> wrote:

> Hi,
> I am using a Pine64 board, it is an ARM board like a Raspberry PI.
> I installed Armbian on it.
> Then I installed the Mate desktop.
> I cannot get Orca to work, but there are sounds like Orca is working, just
> not talking.
> I have system sounds and espeak and espeak-ng work when tested.
> And also, spd-say gives me an error.
> It got installed in a non-usual location, in /usr/sbin.
> I get the following error when running spd-say
> lenny@pine64:~/speech-dispatcher-0.8.8$ spd-say test
> graphic 192 Failed to connect to Speech Dispatcher:
>
> Error: Can't connect to unix socket
> /run/user/1000/speech-dispatcher/speechd.soc
> k: No such file or directory. Autospawn: Autospawn failed. Speech Dispatcher
> refgraphic 545 used to start with error code, stating this as a reason:
>
> So I downloaded speech-dispatcher from its site and put it into the user
> folder and unpacked it.
> Can someone give me the steps for installing from these files?
> I'll paste the contents of the unpacked .tar.gz file below.
> I don't get the make command stuff.
> Thanks.
>
> lenny@pine64:~$ cd speech-dispatcher-0.8.8
> graphic 545 lenny@pine64:~/speech-dispatcher-0.8.8$ ls
>
> aclocal.m4  config.guess  doc              Makefile.am  README.packagers
> ANNOUNCE    config.h.in   FAQ              Makefile.in  README.style
> AUTHORS     config.sub    git-version-gen  missing      README.translators
> BUGS        configure     include          NEWS
> speech-dispatcher.pc.in graphic 733 build.sh    configure.ac  INSTALL
> po           split-version.sh
>
> compile     COPYING       install-sh       py-compile   src
> graphic 186 config      depcomp       ltmain.sh        README       TODO


--180d7d62e7728e29231a8f7e9
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.=
w3.org/TR/html4/loose.dtd">
<html>
<body>
<div dir=3D"auto">
<div dir=3D"auto">In your user directory please run spd-conf and answer que=
stions in order to make a user configuration file.&nbsp; Since you are runn=
ing orca, you may want to have speech-dispatcher started up when the system=
 comes up.&nbsp; That may get orca working for you.</div><div dir=3D'auto'>=
<br></div>
<div id=3D"aqm-original" style=3D"color: black;">
<div dir=3D"auto">On May 18, 2022 11:23:42 AM "K0LNY_Glenn" &lt;glenn@ervin=
.email&gt; wrote:</div>
<div><br></div>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #808080; padding-left: 0.75ex;">
<div dir=3D"auto">Hi,</div>
<div dir=3D"auto">I am using a Pine64 board, it is an ARM board like a Rasp=
berry PI.</div>
<div dir=3D"auto">I installed Armbian on it.</div>
<div dir=3D"auto">Then I installed the Mate desktop.</div>
<div dir=3D"auto">I cannot get Orca to work, but there are sounds like Orca=
 is working, just&nbsp;</div>
<div dir=3D"auto">not talking.</div>
<div dir=3D"auto">I have system sounds and espeak and espeak-ng work when t=
ested.</div>
<div dir=3D"auto">And also, spd-say gives me an error.</div>
<div dir=3D"auto">It got installed in a non-usual location, in /usr/sbin.</=
div>
<div dir=3D"auto">I get the following error when running spd-say</div>
<div dir=3D"auto">lenny@pine64:~/speech-dispatcher-0.8.8$ spd-say test&nbsp=
;</div>
<div dir=3D"auto">graphic 192 Failed to connect to Speech Dispatcher:</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">Error: Can't connect to unix socket&nbsp;</div>
<div dir=3D"auto">/run/user/1000/speech-dispatcher/speechd.soc</div>
<div dir=3D"auto">k: No such file or directory. Autospawn: Autospawn failed=
. Speech Dispatcher&nbsp;</div>
<div dir=3D"auto">refgraphic 545 used to start with error code, stating thi=
s as a reason:</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">So I downloaded speech-dispatcher from its site and put i=
t into the user&nbsp;</div>
<div dir=3D"auto">folder and unpacked it.</div>
<div dir=3D"auto">Can someone give me the steps for installing from these f=
iles?</div>
<div dir=3D"auto">I'll paste the contents of the unpacked .tar.gz file belo=
w.</div>
<div dir=3D"auto">I don't get the make command stuff.</div>
<div dir=3D"auto">Thanks.</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">lenny@pine64:~$ cd speech-dispatcher-0.8.8&nbsp;</div>
<div dir=3D"auto">graphic 545 lenny@pine64:~/speech-dispatcher-0.8.8$ ls</d=
iv>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">aclocal.m4 &nbsp;config.guess &nbsp;doc &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;Makefile.am &nbsp;README.packagers</div>
<div dir=3D"auto">ANNOUNCE &nbsp; &nbsp;config.h.in &nbsp; FAQ &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Makefile.in &nbsp;README.style</div>
<div dir=3D"auto">AUTHORS &nbsp; &nbsp; config.sub &nbsp; &nbsp;git-version=
-gen &nbsp;missing &nbsp; &nbsp; &nbsp;README.translators</div>
<div dir=3D"auto">BUGS &nbsp; &nbsp; &nbsp; &nbsp;configure &nbsp; &nbsp; i=
nclude &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;NEWS&nbsp;</div>
<div dir=3D"auto">speech-dispatcher.pc.in graphic 733 build.sh &nbsp; &nbsp=
;configure.ac &nbsp;INSTALL&nbsp;</div>
<div dir=3D"auto">po &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; split-version.sh</d=
iv>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">compile &nbsp; &nbsp; COPYING &nbsp; &nbsp; &nbsp; instal=
l-sh &nbsp; &nbsp; &nbsp; py-compile &nbsp; src&nbsp;</div>
<div dir=3D"auto">graphic 186 config &nbsp; &nbsp; &nbsp;depcomp &nbsp; &nb=
sp; &nbsp; ltmain.sh &nbsp; &nbsp; &nbsp; &nbsp;README &nbsp; &nbsp; &nbsp;=
 TODO</div>
</blockquote>
</div><div dir=3D"auto"><br></div>
</div></body>
</html>

--180d7d62e7728e29231a8f7e9--


