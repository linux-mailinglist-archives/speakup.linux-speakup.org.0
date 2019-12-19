Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 606FD126608
	for <lists+speakup@lfdr.de>; Thu, 19 Dec 2019 16:45:52 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 55A091C46B1; Thu, 19 Dec 2019 10:45:50 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 196981C4690;
	Thu, 19 Dec 2019 10:45:32 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 9AE091C3369; Thu, 19 Dec 2019 10:45:27 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by befuddled.reisers.ca (Postfix) with ESMTPS id BA26F1C0826
 for <speakup@linux-speakup.org>; Thu, 19 Dec 2019 10:45:26 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
 by mailbackend.panix.com (Postfix) with ESMTP id 47dx6F2SQ5z1h8k
 for <speakup@linux-speakup.org>; Thu, 19 Dec 2019 10:45:25 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
 id 47dx6F0p14zcbc; Thu, 19 Dec 2019 10:45:25 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by panix1.panix.com (Postfix) with ESMTP id 47dx6F0MXyzcbV
 for <speakup@linux-speakup.org>; Thu, 19 Dec 2019 10:45:25 -0500 (EST)
Date: Thu, 19 Dec 2019 10:45:24 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: audionoir.sh
Message-ID: <alpine.NEB.2.21.1912191043150.10818@panix1.panix.com>
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

Here's a script that plays audionoir.sh now.  Modify the station variable
though to another working radio stream and you can get it playing that
stream too.

#!/usr/bin/env bash
# file: audionoir.sh - listen to audionoir radio script
# from: radio.sh - template for new stations
station="http://198.245.61.123:8000/noir/"
rvlc --quiet --novideo --key-vol-up 123 --no-skinned-playlist $station

-- 

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
