Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id ADE292E03DF
	for <lists+speakup@lfdr.de>; Tue, 22 Dec 2020 02:33:06 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2C60C380FB3; Mon, 21 Dec 2020 20:33:06 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E8311380F3F;
	Mon, 21 Dec 2020 20:33:05 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A0615380C1A; Mon, 21 Dec 2020 20:33:04 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 7E042380974
 for <speakup@linux-speakup.org>; Mon, 21 Dec 2020 20:33:04 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 6D3D6E7A
 for <speakup@linux-speakup.org>; Tue, 22 Dec 2020 02:32:33 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fuy1ahHf0ag6 for <speakup@linux-speakup.org>;
 Tue, 22 Dec 2020 02:32:32 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr
 (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 7F5D9B47
 for <speakup@linux-speakup.org>; Tue, 22 Dec 2020 02:32:32 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1krWXP-0014rw-Gp
 for speakup@linux-speakup.org; Tue, 22 Dec 2020 02:32:31 +0100
Date: Tue, 22 Dec 2020 02:32:31 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Hosting speakup on freedesktop?
Message-ID: <20201222013231.ojxz4d4byrljhymt@function>
References: <20201221214457.hu7cg3ino7yqqswn@function>
 <alpine.DEB.2.23.453.2012211701310.533489@befuddled.reisers.ca>
 <1acbbe44-f099-a08b-e788-cc64496eee88@poczta.onet.pl>
 <20201221222327.64thcwi6jb66fasc@function>
 <20201221235348.GA7688@gregn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201221235348.GA7688@gregn.net>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Ok, I created a linux-speakup organization on github. I couldn't find
the account names for Kirk and Chris but I could add Okash, William and
Gregory as co-maintainers.

The speakup repository can then be found on

https://github.com/linux-speakup/speakup

or

git clone https://github.com/linux-speakup/speakup.git speakupdir


Quick build&install instructions:

cd speakupdir/modules
make clean
make
sudo make modules_install

More on this in the INSTALLATION file.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
