Return-Path: <speakup+bounces-455-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 12667544FFC
	for <lists+speakup@lfdr.de>; Thu,  9 Jun 2022 16:57:18 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 02B163812DA; Thu,  9 Jun 2022 10:57:17 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E235F3812CF
	for <lists+speakup@lfdr.de>; Thu,  9 Jun 2022 10:57:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ACCFE3807B3; Thu,  9 Jun 2022 10:57:15 -0400 (EDT)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8F9D73807A8
	for <speakup@linux-speakup.org>; Thu,  9 Jun 2022 10:57:15 -0400 (EDT)
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 8CC40621D8B; Thu,  9 Jun 2022 14:57:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 89ED56201B0
	for <speakup@linux-speakup.org>; Thu,  9 Jun 2022 10:57:14 -0400 (EDT)
Date: Thu, 9 Jun 2022 10:57:14 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: [Alpine-info] Gmail IMAP with username+password (was: Instructions
 to configure XOAUTH2 in Gmail have changed) (fwd)
Message-ID: <Pine.LNX.4.64.2206091054130.1223878@server2.shellworld.net>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

given Glenn's question, sharing the below in case these steps help 
someone.
kare


---------- Forwarded message ----------
Date: Thu, 9 Jun 2022 09:52:58 +0200 (CEST)
To: Alpine-info List <alpine-info@u.washington.edu>
Subject: Re: [Alpine-info] Gmail IMAP with username+password (was: Instructions
     to configure XOAUTH2 in Gmail have changed)


Hello all,

I answer to this thread to keep the context.

First - Eduardo, thank you very much for keeping alpine alive and adding new
features!

>   with the upcoming change in gmail whereas username/passwords combination
> will stop working many users are attempting to configure Alpine woth XOAUTH2.

This change affected me yesterday - I have found that offlineimap cannot sync
the emails from gmail to my dovecot server (I don't know why, but my dovecot
IMAP is faster than Gmail IMAP in alpine, therefore I sync extern IMAPs to my
IMAP). I have logged in to my gmail and I have found, the "use less secure
apps" option is really deactivated and disabled forever.

A few months ago, when this change has been announced, I have found in the
google account the possibility to generate special application password. So I
have tested it on one low-prio account. I had to activate 2-step verification
and then I could generate special password for Mail. With this password and my
email I was able to login to IMAP using simple username+password
authentication.

And yesterday, I have activated 2-step verification (with smartphone "Yes"
click, SMS/voice call, time based OTP [google auth, andotp] and backup codes)
for all my gmail accounts and then I could generate special random password
for IMAP login. So now my offlineimap works again.

Yes, I have to login with 2-step verification to google from webclient, but the
most important is that IMAP works with simple username+password again. It works
in alpine too, if you save the password to password file, then you don't need
to remeber or copy it everytime you start alpine. Great is that you can still
use gmail IMAP in other apps without XOAUTH2 support (as my old offlineimap
version) without any changes except password.

I hope this information helps you.

Regards,

Robert Wolf.
_______________________________________________
Alpine-info mailing list
Alpine-info@u.washington.edu
http://mailman12.u.washington.edu/mailman/listinfo/alpine-info


