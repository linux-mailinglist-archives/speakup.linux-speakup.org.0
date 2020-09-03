Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C70BD25C82E
	for <lists+speakup@lfdr.de>; Thu,  3 Sep 2020 19:40:43 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EA3E61C087D; Thu,  3 Sep 2020 13:40:31 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id ECF4F1C087B;
	Thu,  3 Sep 2020 13:39:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id DF6CE1C0858; Thu,  3 Sep 2020 13:39:48 -0400 (EDT)
Received: from omta01.suddenlink.net (omta01.suddenlink.net [208.180.40.71])
 by befuddled.reisers.ca (Postfix) with ESMTP id 0FE591C0850
 for <speakup@linux-speakup.org>; Thu,  3 Sep 2020 13:39:46 -0400 (EDT)
Received: from wb5agz ([47.217.105.76]) by dalofep01.suddenlink.net
 (InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
 id <20200903173946.CISR7821.dalofep01.suddenlink.net@wb5agz>
 for <speakup@linux-speakup.org>; Thu, 3 Sep 2020 12:39:46 -0500
Received: from martin by wb5agz with local (Exim 4.92)
 (envelope-from <martin.m@suddenlink.net>) id 1kDtD7-0005PL-KQ
 for speakup@linux-speakup.org; Thu, 03 Sep 2020 12:39:45 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Spelling Phonetically Under Speakup
MIME-Version: 1.0
Content-ID: <20789.1599154785.1@wb5agz>
Date: Thu, 03 Sep 2020 12:39:45 -0500
Message-Id: <E1kDtD7-0005PL-KQ@wb5agz>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
 dalofep01.suddenlink.net from [47.217.105.76] using ID
 martin.m@suddenlink.net at Thu, 3 Sep 2020 12:39:46 -0500
X-CM-Analysis: v=2.3 cv=FPxlONgs c=1 sm=1 tr=0 cx=a_idp_d
 a=0S4FDTH59LdN14syvppWKg==:117 a=0S4FDTH59LdN14syvppWKg==:17
 a=kj9zAlcOel0A:10 a=reM5J-MqmosA:10 a=7jTcn3IT1uMA:10
 a=W8_9ehPiWTmzvjCouCIA:9 a=CjuIK1q_8ugA:10 a=Z5ABNNGmrOfJ6cZ5bIyy:22
 a=SsAZrZ5W_gNWK9tOzrEV:22
X-CM-Envelope: MS4wfKoYXvgGasfBeedF2TJE8gIdJ/YKFmzu+DX+szrRby0+iqdxIQBCF011SgzEuDWzaC79J5VV8Yatd0npqqk1/kejgZw3k8YfvzEIZtWwyLFed/giKFwP
 lrzKAJOqLFHOgqlAeFSq0SEvPULHoaMJ8xOtNDGA7xRtM5wP3hHWCLtu
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

Are there any control codes one can stick in to output strings
that will cause speakup to spell the next string phonetically or
even just the next letter?

	The normal behavior if speakup sees a string that says
"house" is to say the word "house."  Would there be a command to
say "hotel oscar uniform siera echo" when passing H O U S E?

	If so, How do you resume normal operation after doing
that?

	Speakup does say an individual character phonetically if
you move the speakup cursor over a letter using the number pad
and them strike Delete twice quickly.  If this is not possible,
no big dealbut I was working on a project of mine and thought
that if it is possible, I would simply send control codes to
cause speakup to spell phonetically for amateur radio call signs.

	Thanks to all.

Martin McCormick
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
