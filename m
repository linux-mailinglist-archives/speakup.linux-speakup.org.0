Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 116CA2AA8DE
	for <lists+speakup@lfdr.de>; Sun,  8 Nov 2020 02:54:57 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E8FE1380EE4; Sat,  7 Nov 2020 20:54:55 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2BB29380C00;
	Sat,  7 Nov 2020 20:54:54 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id ED540380BC4; Sat,  7 Nov 2020 20:54:52 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id A2968380BB5
 for <speakup@linux-speakup.org>; Sat,  7 Nov 2020 20:54:52 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id BD031CF2;
 Sun,  8 Nov 2020 02:54:49 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DlKpFDqn25zg; Sun,  8 Nov 2020 02:54:48 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 4AD3FB4F;
 Sun,  8 Nov 2020 02:54:48 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kbZuo-008GKd-Ri; Sun, 08 Nov 2020 02:54:46 +0100
Date: Sun, 8 Nov 2020 02:54:46 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: covici@ccs.covici.com
Subject: Re: speakup paste problem on debian
Message-ID: <20201108015446.wq4nfshhqlwcjgf3@function>
References: <alpine.BSF.2.01.1401221920580.28152@freire1.furyyjbeyq.arg>
 <20140123031016.GA9556@jdc.jasonjgw.net>
 <25280.1390479703@ccs.covici.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25280.1390479703@ccs.covici.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
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

Hello,

I'm digging back an old mail.

covici@ccs.covici.com, le jeu. 23 janv. 2014 07:21:43 -0500, a ecrit:
> I sure wish someone would fix index mark reading on kernels  above about
> 3.6 -- whenever I try and use a serial synth  after patching, it works,
> but speakup-r does not work at all -- I wonder what they did to break
> it?

I don't know exactly what index mark reading is, I don't find any
documentation for speakup-r in spkguide.txt, could you describe more
what it is supposed to do?

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
