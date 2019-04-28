Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7A848B658
	for <lists+speakup@lfdr.de>; Sun, 28 Apr 2019 20:47:50 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8B2FD1C4421; Sun, 28 Apr 2019 14:47:49 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7387D1C4411;
	Sun, 28 Apr 2019 14:47:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id E5C991C4390; Sun, 28 Apr 2019 14:47:44 -0400 (EDT)
Received: from hurricane.the-brannons.com (hurricane.the-brannons.com
 [IPv6:2605:2700:0:17:a800:ff:fe3e:bc77])
 by befuddled.reisers.ca (Postfix) with ESMTP id 0E1121C4381
 for <speakup@linux-speakup.org>; Sun, 28 Apr 2019 14:47:44 -0400 (EDT)
Received: from localhost (unknown [IPv6:2602:61:736a:f100::a00b:8ad9])
 by hurricane.the-brannons.com (Postfix) with ESMTPSA id 1DFA4779AA
 for <speakup@linux-speakup.org>; Sun, 28 Apr 2019 11:47:39 -0700 (PDT)
From: Chris Brannon <chris@the-brannons.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup and garbled text
References: <7b432bc0-4164-714e-f3bd-69ec44a7116b@the-brannons.com>
 <alpine.NEB.2.21.1903160625050.548@panix1.panix.com>
 <20190428171803.7684984b@narunkot>
Date: Sun, 28 Apr 2019 11:47:38 -0700
In-Reply-To: <20190428171803.7684984b@narunkot> (Okash Khawaja's message of
 "Sun, 28 Apr 2019 17:18:03 +0100")
Message-ID: <874l6iufud.fsf@cmbmachine.messageid.invalid>
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

Okash Khawaja <okash.khawaja@gmail.com> writes:

> Hi,
>
> Apologies for a late follow-up. I am struggling to reproduce
> this. Could you explain what you mean by reading large chunk of text?
>
> Here is what I did. Set up speakup with espeak. Then in
> console, opened spkguide.txt with less. I allowed it to read a full
> screen but couldn't find garbled text. Shall I do it with more
> screenfuls?

Hi,
One screenful might be enough or it might not.  This particular bug
seems to be really environment-dependent.  I've only seen it on
multi-processor systems, or systems using hyperthreading.
Just now, I tried reproducing with less, and it didn't show up until the
second screen.

-- Chris
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
