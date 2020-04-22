Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 00DF21B510B
	for <lists+speakup@lfdr.de>; Thu, 23 Apr 2020 01:55:54 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7A1181C5802; Wed, 22 Apr 2020 19:55:51 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id ABA161C57BA;
	Wed, 22 Apr 2020 19:55:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id D3AFE1C57BA; Wed, 22 Apr 2020 19:55:34 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by befuddled.reisers.ca (Postfix) with ESMTPS id AE9961C0B50
 for <speakup@linux-speakup.org>; Wed, 22 Apr 2020 19:55:33 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
 by mailbackend.panix.com (Postfix) with ESMTP id 496y4468m9z1TwH
 for <speakup@linux-speakup.org>; Wed, 22 Apr 2020 19:55:32 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
 id 496y4458Yjzcbc; Wed, 22 Apr 2020 19:55:32 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by panix1.panix.com (Postfix) with ESMTP id 496y444jk3zcbV
 for <speakup@linux-speakup.org>; Wed, 22 Apr 2020 19:55:32 -0400 (EDT)
Date: Wed, 22 Apr 2020 19:55:32 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: speakup-utils package broken
Message-ID: <alpine.NEB.2.21.2004221951280.24914@panix1.panix.com>
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

For the archlinux users using espeakup once having run speakupconf save as
a user then rebooting
the command throws two errors on line 78 and line 93 both of which are too
many arguments.
I didn't use speakupconf --load since that wasn't documented in my
.bash_profile file
and adding a specific directory path to the configuration failed to clear
this error.
I've taken the command out to clear this error for now.



--

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
