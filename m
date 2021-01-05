Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EAD5F2EB176
	for <lists+speakup@lfdr.de>; Tue,  5 Jan 2021 18:35:08 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E6A63380FBB; Tue,  5 Jan 2021 12:35:07 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=jykXOs+0;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 36B0D380FA9;
	Tue,  5 Jan 2021 12:35:06 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 8DF58380ED3; Tue,  5 Jan 2021 12:35:05 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 36B20380EC6
 for <speakup@linux-speakup.org>; Tue,  5 Jan 2021 12:35:05 -0500 (EST)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
 by mailbackend.panix.com (Postfix) with ESMTP id 4D9KPy5dHbz1hx8
 for <speakup@linux-speakup.org>; Tue,  5 Jan 2021 12:35:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
 t=1609868102; bh=mfFLcvs4KLmsLD8IwgHmhvPxXz6ouX6K6jyYWe8+L9E=;
 h=Date:From:To:Subject;
 b=jykXOs+0lFbzaUQm5L0l03L2rHD/dSUsP9CVuncoIjWisy+84jBlN7ydJ3t0HPen9
 KpaUx14vHksxDOpmuLNHu740GFjnbZpu5KhpsyQJrqftzJAfELg8gPsm2O4FF1lP9o
 ElWeO4qmwA8h4Hrq0XcZE1XRQg9yXTCiuBTU08D0=
Received: by panix3.panix.com (Postfix, from userid 20196)
 id 4D9KPy53Zbz1QXJ; Tue,  5 Jan 2021 12:35:02 -0500 (EST)
Date: Tue, 5 Jan 2021 12:35:02 -0500
From: Rudy Vener <salt@panix.com>
To: speakup@linux-speakup.org
Subject: spelling words with military letter pronunciation
Message-ID: <20210105173502.GA17449@panix.com>
MIME-Version: 1.0
Content-Disposition: inline
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


I recall a Vocal Eyes feature I used very often. When I hit the speak word key once, it would
speak the word, hit it twice it would spell the word, hit it thrice 
it would spell the word with military alphabet pronunciation (alpha, bravo, charlie, etc).

Speakup only allows me military letter pronunciation when I hit the 
speak letter key twice, and only speaks the letter where the cursor 
rests. This makes it a kluge to hear the entire word spelled in military pronunciation.

A feature to tap the speak word key thrice to get military spelling 
would be a great boon to those of us who are deaf as well as blind.

Thanks.

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
