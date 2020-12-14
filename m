Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4661B2D9EDD
	for <lists+speakup@lfdr.de>; Mon, 14 Dec 2020 19:25:15 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BAD67380F9F; Mon, 14 Dec 2020 13:25:13 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 27251380F21;
	Mon, 14 Dec 2020 13:25:12 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 72916380BF1; Mon, 14 Dec 2020 13:25:10 -0500 (EST)
Received: from omta02.suddenlink.net (omta02.suddenlink.net [208.180.40.72])
 by befuddled.reisers.ca (Postfix) with ESMTP id 46D90380967
 for <speakup@linux-speakup.org>; Mon, 14 Dec 2020 13:25:10 -0500 (EST)
Received: from wb5agz ([47.217.109.16]) by dalofep02.suddenlink.net
 (InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
 id <20201214182509.ENNY1792.dalofep02.suddenlink.net@wb5agz>
 for <speakup@linux-speakup.org>; Mon, 14 Dec 2020 12:25:09 -0600
Received: from martin by wb5agz with local (Exim 4.92)
 (envelope-from <martin.m@suddenlink.net>) id 1kosWy-0005Aq-Ua
 for speakup@linux-speakup.org; Mon, 14 Dec 2020 12:25:08 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: 8-bit characters in output
MIME-Version: 1.0
Content-ID: <19890.1607970308.1@wb5agz>
Date: Mon, 14 Dec 2020 12:25:08 -0600
Message-Id: <E1kosWy-0005Aq-Ua@wb5agz>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
 dalofep02.suddenlink.net from [47.217.109.16] using ID
 martin.m@suddenlink.net at Mon, 14 Dec 2020 12:25:09 -0600
X-CM-Analysis: v=2.3 cv=EbC2v8uC c=1 sm=1 tr=0 cx=a_idp_d
 a=vgFQBM89cIsqvvZDmBSopQ==:117 a=vgFQBM89cIsqvvZDmBSopQ==:17
 a=kj9zAlcOel0A:10 a=zTNgK-yGK50A:10 a=wC5lZz0xddkA:10
 a=-E_IKXRDsbKmI_n-Hj0A:9 a=CjuIK1q_8ugA:10 a=pHzHmUro8NiASowvMSCR:22
 a=xoEH_sTeL_Rfw54TyV31:22
X-CM-Envelope: MS4wfByD872Cv2Fe0OiVFCFJ4h3JDoXCpguWkksvyeDhJzSmtylmySp25wLuJt80tXkk7RpKk80nueGMC3F+vdkRaH03gmuObGiqlroM4k2N4XLnfgRFk54s
 VN4Qd8EBNJSuQcl81akZngGS7znQtjYhDQnATinBRdW8Z9oib/UALMBr
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

On many occasions, I hear output while reading text that I think
is probably 8-bit data because certain characters are spoken that
don't even exist in the text I am reading.

	I may be reading quoted text in an email or maybe
highlighted text in instructions and I hear the one-half symbol
which is pronounced by speakup as a half plus the umlaut from
German text.

	Occasionally when printing output that can best be described
as garbage such as accidentally catting a binary file, speakup
starts chanting a half umlaut or even 1fourth followed by umlauts
or other words that turn out to be not words but characters that
trigger speakup to recite symbols for 1/4th, etc.

	I once examined an email message that was heavily in to
a half-umlaut on about every line and found that the other persons
email client placed a circumflex in quoted lines.

	At other times, words like the contraction of "I am" as
in I apostrophe M are read as IBM like the computer
manufacturer.

	Basically, I certainly understand why this is happening
but want to know if there is anything I can do at the speakup
level to properly process text so that it doesn't sound like
corrupted data.

	One thing I did for several years was to filter the
output of text such as email or just text files through a filter
that removed bit 7 if it was set.  This got rid of the
a half-umlaut chant but replaced it with occasional corruption
when an 8-bit character with bit 7 cleared equals a printable
ASCII character.

	This is more of an annoyance than a show stopper so is
there a translation table or a filter that can be made to fix
this issue?

	Speakup is a fabulous system so I'm not griping at all.

	Thanks for either instructions as to what to do or a link
to such instructions.

Martin McCormick
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
