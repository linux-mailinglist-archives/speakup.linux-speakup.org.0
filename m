Return-Path: <speakup+bounces-663-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3F5A25A2BA8
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 17:50:00 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DA210384761; Fri, 26 Aug 2022 11:49:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C0C3C38475A
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 11:49:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2600F380CEE; Fri, 26 Aug 2022 11:49:57 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0059.b.hostedemail.com [64.98.42.59])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 13039380C5D
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 11:49:57 -0400 (EDT)
Received: from omf04.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay06.b.hostedemail.com (Postfix) with ESMTP id 2F47C1896CD9A;
	Fri, 26 Aug 2022 15:49:55 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf04.b.hostedemail.com (Postfix) with ESMTPA id 78BB51003302D;
	Fri, 26 Aug 2022 15:49:54 +0000 (UTC)
Message-ID: <02b101d8b963$7d039fc0$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Brian Buhrow" <buhrow@nfbcal.org>,
	"Chime Hart" <chime@hubert-humphrey.com>
Cc: "Willem van der Walt" <wvdwalt@csir.co.za>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
	<buhrow@nfbcal.org>
References: <202208261512.27QFCDux008176@nfbcal.org>
Subject: Re: hopefully some help with AntiX
Date: Fri, 26 Aug 2022 10:49:54 -0500
Organization: Home
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
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 78BB51003302D
X-Spam-Status: No, score=-2.60
X-Stat-Signature: 1wgwi19zkm87kncu9tcggsafu5geaq6r
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/jdXf5vlWXunCTeSa9tLFBpXz/5iRzWqU=
X-HE-Tag: 1661528994-814808
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Brian,
The trouble is that I cannot SCP because I cannot SSH into it.
It has audio, and I can use apt, but AntiX has its own limited repository.
It has something I think it was called apt-antiX or something, but it is 
menu driven, and that does not work with OCR on the screen.
So it seems fast and viable, but I cannot get anything into it.
If I put stuff on a thumb drive and plugged it in, without speech output, I 
couldn't possibly get all guesses needed to find the device in /media/demo.
Thanks though.

Glenn
----- Original Message ----- 
From: "Brian Buhrow" <buhrow@nfbcal.org>
To: "K0LNY_Glenn" <glenn@ervin.email>; "Chime Hart" 
<chime@hubert-humphrey.com>
Cc: "Willem van der Walt" <wvdwalt@csir.co.za>; "Speakup is a screen review 
system for Linux." <speakup@linux-speakup.org>; <buhrow@nfbcal.org>
Sent: Friday, August 26, 2022 10:12 AM
Subject: Re: hopefully some help with AntiX


Hello Glen.  Here are a couple of suggestions to try and figure out what's 
going on.

It sounds like the machine you're installing is up and running to some 
extent, i.e. you believe
it has enough network to go out and download packages from repositories.
If that's true, then I suggest building yourself a data file on the machine 
about its
state and then scp it back to your working machine for post mortom analysis. 
In this way, you
can be smarter about what's really going on with it rather than just trying 
our suggestions and
getting more and more frustrated.

Depending on the state of the machine, there are a couple of ways to 
approach this task.

1.  If you have the script command installed,
I suggest:
cd /tmp
script

Then, do a dump of the dmesg output of the machine, a dump of a list of 
packages on the
machine, a dump of the network configuration on the machine, using such 
commands as ifconfig
and netstat, (if this is Ubuntu based, there's a command that replaces 
netstat that I don't
remember off the top of my head.)

The script command will capture your commands, and the output they generate, 
into a file called
typescript in the current directory (/tmp above).  When you've collected a 
bunch of data, exit
the shell you started with the script command and scp the file "typescript" 
back to your
working installed machine and look it over.  Keep in mind there will be some 
portions of it
that will look like giberish because it captures all the terminal escape 
sequences to format
the screen as well, but it will give you a lot more knowledge about what is 
going on.  Also, it
will tell you which commands worked and which didn't, and why.

You may need to repeat this process of collecting a script file from the 
machine several times,
using the knowledge you gained from the last round, to try more informed 
commands.

2.  If the script command is not available, then create your own 
approximation of the script
command by doing the following:

cd /tmp
touch typescript
dmesg >> typescript 2>&1
. . .

Repeat commands, followed by >> typescript 2>&1

over and over again, as described above, to dump the output of both standard 
out and standard
error (path for error messages) into your hand made typescript file.

When you have collected enough initial data to try doing an analysis, scp 
the typescript file
back to your working machine and have a look at it.

Keep in mind that when you reboot the Antics machine, the /tmp/typescript 
file will be erased.

My apologies for not being familiar with the aptitude commands to give you 
examples of how to
get package listings from the machine directly.

Although, dumping the output of
aptitude --help >> /tmp/typescript 2>&1
into your typescript file should give you pretty good directions on how to 
use it.

Hope this helps.

-Brian 


