Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5A95A1AF600
	for <lists+speakup@lfdr.de>; Sun, 19 Apr 2020 02:31:16 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B71C61C57CB; Sat, 18 Apr 2020 20:31:15 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8A4511C5801;
	Sat, 18 Apr 2020 20:30:26 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 3DC6C1C57B4; Sat, 18 Apr 2020 20:30:25 -0400 (EDT)
Received: from out0.migadu.com (out0.migadu.com [94.23.1.103])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 050071C0B50
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 20:30:24 -0400 (EDT)
Date: Sun, 19 Apr 2020 10:26:19 +1000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Jookia <contact@jookia.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Is Their an Insert+k in Speakup?
Message-ID: <20200419002619.GR16446@novena-choice-citizen>
References: <Pine.LNX.4.64.2004181048520.31500@server2.shellworld.net>
 <20200418211936.GP16446@novena-choice-citizen>
 <Pine.LNX.4.64.2004181434590.1455@server2.shellworld.net>
 <20200418225136.GQ16446@novena-choice-citizen>
 <Pine.LNX.4.64.2004181614590.2863@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.2004181614590.2863@server2.shellworld.net>
X-Spam-Score: 1.40
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

5.6 should be fine enough I think to definitely rule it out.
You might be able to get it from buster-backports or testing repo in
Debian.

If the bug still happens and you have two computers on a network and
you're ok with the command line you could set up Linux's netconsole to
log any kernel panics.

On Sat, Apr 18, 2020 at 04:17:11PM -0700, Chime Hart wrote:
> Hi Jookia: I am trying to figure out how to install or upgrade to 5.7 rc1
> Either way, thanks for informing.
> Chime
> 
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
