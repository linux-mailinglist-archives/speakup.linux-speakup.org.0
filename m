Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id E614435DEA
	for <lists+speakup@lfdr.de>; Wed,  5 Jun 2019 15:29:43 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7C4821C5B01; Wed,  5 Jun 2019 09:29:43 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0C1491C6B6E;
	Wed,  5 Jun 2019 09:29:24 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 088361C5B01; Wed,  5 Jun 2019 09:29:21 -0400 (EDT)
Received: from wmauth1.doit.wisc.edu (wmauth1.doit.wisc.edu [144.92.197.141])
 by befuddled.reisers.ca (Postfix) with ESMTPS id C57151C5A7A
 for <speakup@linux-speakup.org>; Wed,  5 Jun 2019 09:29:19 -0400 (EDT)
Received: from [144.92.166.252] (vv507j.math.wisc.edu [144.92.166.252])
 by smtpauth1.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.0.1.2.20170621 64bit (built Jun 21
 2017)) with ESMTPSA id <0PSM00JT8O4TZL10@smtpauth1.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Wed, 05 Jun 2019 08:29:18 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[144.92.166.252]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-1, Version=6.4.7.2805085,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2019.6.5.131816,
 AntiVirus-Engine: 5.60.1, AntiVirus-Data: 2019.5.21.5601002,
 SenderIP=[144.92.166.252]
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: John G Heim <jheim@math.wisc.edu>
Subject: no sound except speakup
Message-id: <bb706092-7289-2093-e7d0-e1788722cc37@math.wisc.edu>
Date: Wed, 05 Jun 2019 08:29:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-version: 1.0
Content-language: en-US
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
Reply-To: jheim@math.wisc.edu, "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

I am running a debian buster machine in character mode. Speakup with 
software speech works fine but I can't get any other sound. When I use 
aplay to play a wav file, it prints the data indicating that it is 
playing the file but there is no sound. The same with espeak and spd-say 
at the command line. No error messages are displayed but there is no 
sound. I would think it was a volume problem except I can hear speakup. 
The sound card controls have volume settings, they are not user 
settings, right?

-- 
John G. Heim; jheim@math.wisc.edu; 608-263-4189
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
