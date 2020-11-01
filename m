Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id BB7412A1B91
	for <lists+speakup@lfdr.de>; Sun,  1 Nov 2020 02:02:32 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 50B96380ECF; Sat, 31 Oct 2020 21:02:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1604192552;
	bh=n3sPAUKbM/NaeRJzOgIjrm99+rRk0PWRvwCXai/fYlo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=GmSCJ9co/UYK5Tn2FCdKp43FWhvxrZdHg5YM6NN+ayoMxsHKJUCZyWJ6LN/EhWEE7
	 Bjk+oznHDjvPGzrBKMkAEC8h/CxGz1O0PRIXijyauuPE4AckUkISmtExSYKD3whFRV
	 iBI/G+jc1K88AwD6CQxAnuxyQeMlRp7IXxtkOOho=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4A768380EC6;
	Sat, 31 Oct 2020 21:02:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1604192549;
	bh=n3sPAUKbM/NaeRJzOgIjrm99+rRk0PWRvwCXai/fYlo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=An+y7iVpe4/lHHotyBfohchCHTb/D33jWvGRRgsXTg6QzxdHiIGoafWTH0UCxaBhH
	 XSbhgLH7svzEQAzWKRnXOnxeaC5mFGrozHuI/6E3n4vPoCy6A1tOWc+VAL4Ll6Ep5X
	 zaHoPmzDBN8ztX/DRDXKN2gNPog++u0RM3Szh+bI=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 9F838380EBB; Sat, 31 Oct 2020 21:02:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1604192547;
 bh=FZDbvjFk4Jf2H1jPdSYoC9KZpkMs+VjolL2mZZToTYE=;
 h=Date:From:To:Subject:From;
 b=LgLfzNydr9/Pscq8BCP/mV5nDXdO/HWVFrtWu8XyWtDMtuVOG95wRvLBvrx1DrELQ
 nBLivwkmqSCIUsJ/EA329M8Ua9UDaST05jxYr4uKG5LnNIXUFZdsFxC6ThdY/q1WC8
 rkUPsS699jFJuz2KKkF0VWxDiTaKvVaIpN8ywIe8=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 85A5F380BB2
 for <speakup@linux-speakup.org>; Sat, 31 Oct 2020 21:02:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1604192547;
 bh=FZDbvjFk4Jf2H1jPdSYoC9KZpkMs+VjolL2mZZToTYE=;
 h=Date:From:To:Subject:From;
 b=LgLfzNydr9/Pscq8BCP/mV5nDXdO/HWVFrtWu8XyWtDMtuVOG95wRvLBvrx1DrELQ
 nBLivwkmqSCIUsJ/EA329M8Ua9UDaST05jxYr4uKG5LnNIXUFZdsFxC6ThdY/q1WC8
 rkUPsS699jFJuz2KKkF0VWxDiTaKvVaIpN8ywIe8=
Date: Sat, 31 Oct 2020 21:02:27 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: Another speakup cut and paste bug and park
Message-ID: <alpine.DEB.2.23.453.2010312053480.568552@befuddled.reisers.ca>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hello Samuel et al: I noticed a couple of new speakup bugs which is
really weird because they were never there before. If you have the
park function and cut and paste it selects the wrong text. In fact the
text it pastes isn't even on the screen but the "mark text" spoken and
an address of some sort. This should be easily reproduced.

The other bug is when you untoggled the park function it sync's back
up with the screen cursor instead of staying where it was
parked. There's another bug that's been there for a long time now but
I don't know when it was introduced which is when one moves from
console to console the reading cursor stays where it was most of the
time instead of being sync'd to the screen cursor upon accessing the
console. It's only slightly iritating so I never mentioned it but
since I seem to be in a bitching mood lately figured I'd say
something.

It's: Speakup version 3.1.6

   Kirk

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
