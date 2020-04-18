Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B171A1AF520
	for <lists+speakup@lfdr.de>; Sat, 18 Apr 2020 23:21:12 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 15EF91C57CD; Sat, 18 Apr 2020 17:21:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 53A681C57FF;
	Sat, 18 Apr 2020 17:20:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 995811C57B4; Sat, 18 Apr 2020 17:20:25 -0400 (EDT)
Received: from out1.migadu.com (out1.migadu.com [91.121.223.63])
 by befuddled.reisers.ca (Postfix) with ESMTPS id D89961C0B50
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 17:20:23 -0400 (EDT)
Date: Sun, 19 Apr 2020 07:19:36 +1000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Jookia <contact@jookia.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Is Their an Insert+k in Speakup?
Message-ID: <20200418211936.GP16446@novena-choice-citizen>
References: <Pine.LNX.4.64.2004181048520.31500@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.2004181048520.31500@server2.shellworld.net>
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

Hi Chime,
Insert+k should read the current word, not crash your system.
Could you try a newer kernel or make sure yours is completely absolutely
up to date? There was a nasty bug that would crash when doing this.
Alternatively you've found another bug, which isn't great.
Jookia.

On Sat, Apr 18, 2020 at 10:57:10AM -0700, Chime Hart wrote:
> Well, experimenting, typing an insert through an alphabet, when I hit
> insert+k my system seemed to freeze, no speech, no back space beep, so I
> pushed the power button, and booted successfully in to
> Linux chime 5.5.0-2-amd64 #1 SMP Debian 5.5.17-1 (2020-04-15) x86_64
> I was actually wanting to asign insert+t for tone, but I have no idea how or
> where this is done? I also looked in /var/log/messages, didn't find anything
> strange. Thanks so much in advance for any guidance, or if by accident if I
> found some bug.
> Chime
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
