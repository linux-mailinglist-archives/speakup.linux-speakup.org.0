Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 655FA2DCB1D
	for <lists+speakup@lfdr.de>; Thu, 17 Dec 2020 03:55:01 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D856F380F8D; Wed, 16 Dec 2020 21:55:00 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4C68C380F27;
	Wed, 16 Dec 2020 21:54:59 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C62AD380C15; Wed, 16 Dec 2020 21:54:57 -0500 (EST)
Received: from omta04.suddenlink.net (omta04.suddenlink.net [208.180.40.74])
 by befuddled.reisers.ca (Postfix) with ESMTP id 9D43338098A
 for <speakup@linux-speakup.org>; Wed, 16 Dec 2020 21:54:57 -0500 (EST)
Received: from wb5agz ([47.217.109.16]) by dalofep04.suddenlink.net
 (InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
 id <20201217025457.CWJT26378.dalofep04.suddenlink.net@wb5agz>
 for <speakup@linux-speakup.org>; Wed, 16 Dec 2020 20:54:57 -0600
Received: from martin by wb5agz with local (Exim 4.92)
 (envelope-from <martin.m@suddenlink.net>) id 1kpjRQ-0000yT-Fi
 for speakup@linux-speakup.org; Wed, 16 Dec 2020 20:54:56 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: 8-bit characters in output
In-reply-to: <20201216230430.cog65dc5ay6d65zo@function>
References: <E1kosWy-0005Aq-Ua@wb5agz>
 <20201214234815.ovab4h362z2swvdv@function> <E1kpfoC-0007Pr-Tr@wb5agz>
 <20201216230430.cog65dc5ay6d65zo@function>
Comments: In-reply-to Samuel Thibault <samuel.thibault@ens-lyon.org>
 message dated "Thu, 17 Dec 2020 00:04:30 +0100."
MIME-Version: 1.0
Content-ID: <3747.1608173696.1@wb5agz>
Date: Wed, 16 Dec 2020 20:54:56 -0600
Message-Id: <E1kpjRQ-0000yT-Fi@wb5agz>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
 dalofep04.suddenlink.net from [47.217.109.16] using ID
 martin.m@suddenlink.net at Wed, 16 Dec 2020 20:54:57 -0600
X-CM-Analysis: v=2.3 cv=FPxlONgs c=1 sm=1 tr=0 cx=a_idp_d
 a=vgFQBM89cIsqvvZDmBSopQ==:117 a=vgFQBM89cIsqvvZDmBSopQ==:17
 a=kj9zAlcOel0A:10 a=zTNgK-yGK50A:10 a=wC5lZz0xddkA:10 a=m8YGQp87AAAA:8
 a=rTPkI2_xMOx45HKmUYIA:9 a=CjuIK1q_8ugA:10 a=sQmdjVoOy41DRvcrsFdt:22
X-CM-Envelope: MS4wfGGkhnkEY2KYv7g6oZ3gMk/mvUVzMND17V7gBHXvHh/5a4ct0ZE/oPfay2azX81ONIKFJlqwRjX0JbH9/RTeOJgKAxIIg9bt5YKrPVKNN0iHUC8kzb4c
 fnjmW/K+rbOJ7pFszeiQJynC9Qd3ffUq4G8GasB0jxuB9ld9V0LWj91Y
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

Samuel Thibault <samuel.thibault@ens-lyon.org> writes:
> That could be useful indeed. Once we have an easy reproducer, it's
> usualy very easy to fix the bug :)
> 
> Samuel

Ask and yee shall receive.  It turned out to be far easier to
duplicate the issue than I ever dreamed.  Here is the perl
program I just finished which shows that all characters with bit
7 set trigger the same sounds.  You may have to run the lines
through perltidy if the mailing process mangles them.  Code
starts here and is 17 lines long.  The 1-second sleep slows
things down a bit so you can follow the output more easily.


#!/usr/bin/perl -w
use strict;

sub charmaker {    #
    my $char = 120;

    for ( $char = $char ; $char < 256 ; $char++ ) {    #
        printf( "%d %c\n", $char, $char );
        sleep 1;
    }    #
    return;
}    #

print "First the decimal value then the character itself\n";
charmaker;

exit(0);
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
