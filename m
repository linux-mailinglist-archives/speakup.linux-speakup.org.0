Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4CF092E0227
	for <lists+speakup@lfdr.de>; Mon, 21 Dec 2020 22:45:09 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1C1C6380F97; Mon, 21 Dec 2020 16:45:08 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C7F96380F40;
	Mon, 21 Dec 2020 16:45:05 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id DFBCC380C1A; Mon, 21 Dec 2020 16:45:03 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id BAF02380974
 for <speakup@linux-speakup.org>; Mon, 21 Dec 2020 16:45:03 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 001CAFEC
 for <speakup@linux-speakup.org>; Mon, 21 Dec 2020 22:44:59 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mwcVm93CLD7l for <speakup@linux-speakup.org>;
 Mon, 21 Dec 2020 22:44:58 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr
 (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 375D7E4F
 for <speakup@linux-speakup.org>; Mon, 21 Dec 2020 22:44:58 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1krSzB-000QEJ-1K
 for speakup@linux-speakup.org; Mon, 21 Dec 2020 22:44:57 +0100
Date: Mon, 21 Dec 2020 22:44:57 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Hosting speakup on freedesktop?
Message-ID: <20201221214457.hu7cg3ino7yqqswn@function>
MIME-Version: 1.0
Content-Disposition: inline
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

Hello,

Currently we have an old git repository on
http://linux-speakup.org/speakup.git , that was not updated since
~2013.  I don't seem to have push access to it. We also have some
bug tracking on https://github.com/bytefire/speakup/issues . This
looks quite scattered, and github.com depends on the good will
of Microsoft. I'm thinking that we could have speakup hosted on
https://gitlab.freedesktop.org (freedesktop is a "completely volunteer
organisation with no corporate backing or funding stream", notably part
of X.org). We can keep the mailing list as it is, but we could move the
git repository and the issue tracking there, where it is easy to create
accounts, give rights, follow-up on bugs etc.  I have made a request for
a speakup group creation to freedesktop people.

The idea is that on that repository we could host the latest version of
the speakup source code, so that people can try it without having to
patch and rebuild their whole kernel etc.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
