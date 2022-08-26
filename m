Return-Path: <speakup+bounces-662-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 697135A2AB6
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 17:12:57 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 50180381115; Fri, 26 Aug 2022 11:12:55 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DCE1738475F
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 11:12:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 89C99380C8C; Fri, 26 Aug 2022 11:12:52 -0400 (EDT)
Received: from nfbcal.org (ns.NFBCAL.ORG [157.22.230.125])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 41975380C5C
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 11:12:52 -0400 (EDT)
Received: from nfbcal.org (localhost [127.0.0.1])
	by nfbcal.org (8.15.2/8.14.1-NFBNETBSD) with ESMTPS id 27QFCEm2004916
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Fri, 26 Aug 2022 08:12:14 -0700 (PDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at lothlorien.nfbcal.org
Received: (from buhrow@localhost)
	by nfbcal.org (8.15.2/8.12.11) id 27QFCDux008176;
	Fri, 26 Aug 2022 08:12:13 -0700 (PDT)
Message-Id: <202208261512.27QFCDux008176@nfbcal.org>
From: Brian Buhrow <buhrow@nfbcal.org>
Date: Fri, 26 Aug 2022 08:12:13 -0700
In-Reply-To: <02a301d8b94e$e393c6d0$80ffa8c0@Win7VM>
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
To: "K0LNY_Glenn" <glenn@ervin.email>,
        "Chime Hart" <chime@hubert-humphrey.com>
Subject: Re: hopefully some help with AntiX
Cc: "Willem van der Walt" <wvdwalt@csir.co.za>,
        "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
        buhrow@nfbcal.org
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.4.3 (nfbcal.org [127.0.0.1]); Fri, 26 Aug 2022 08:12:14 -0700 (PDT)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

	Hello Glen.  Here are a couple of suggestions to try and figure out what's going on.

It sounds like the machine you're installing is up and running to some extent, i.e. you believe
it has enough network to go out and download packages from repositories.  
	If that's true, then I suggest building yourself a data file on the machine about its
state and then scp it back to your working machine for post mortom analysis.  In this way, you
can be smarter about what's really going on with it rather than just trying our suggestions and
getting more and more frustrated.

	Depending on the state of the machine, there are a couple of ways to approach this task.

1.  If you have the script command installed, 
I suggest:
cd /tmp
script

Then, do a dump of the dmesg output of the machine, a dump of a list of packages on the
machine, a dump of the network configuration on the machine, using such commands as ifconfig
and netstat, (if this is Ubuntu based, there's a command that replaces netstat that I don't
remember off the top of my head.)

The script command will capture your commands, and the output they generate, into a file called
typescript in the current directory (/tmp above).  When you've collected a bunch of data, exit
the shell you started with the script command and scp the file "typescript" back to your
working installed machine and look it over.  Keep in mind there will be some portions of it
that will look like giberish because it captures all the terminal escape sequences to format
the screen as well, but it will give you a lot more knowledge about what is going on.  Also, it
will tell you which commands worked and which didn't, and why.  

You may need to repeat this process of collecting a script file from the machine several times,
using the knowledge you gained from the last round, to try more informed commands.

2.  If the script command is not available, then create your own approximation of the script
command by doing the following:

cd /tmp
touch typescript
dmesg >> typescript 2>&1
. . .

Repeat commands, followed by >> typescript 2>&1

over and over again, as described above, to dump the output of both standard out and standard
error (path for error messages) into your hand made typescript file.

When you have collected enough initial data to try doing an analysis, scp the typescript file
back to your working machine and have a look at it.

Keep in mind that when you reboot the Antics machine, the /tmp/typescript file will be erased.

My apologies for not being familiar with the aptitude commands to give you examples of how to
get package listings from the machine directly.

Although, dumping the output of 
aptitude --help >> /tmp/typescript 2>&1
into your typescript file should give you pretty good directions on how to use it.

Hope this helps.

-Brian

