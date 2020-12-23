Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AB03B2E1C4B
	for <lists+speakup@lfdr.de>; Wed, 23 Dec 2020 13:40:13 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 01596380FA3; Wed, 23 Dec 2020 07:40:12 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=icloud.com header.i=@icloud.com header.a=rsa-sha256 header.s=1a1hai header.b=Rku/V33a;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3DA5F380F50;
	Wed, 23 Dec 2020 07:40:12 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 9D91D380BB0; Wed, 23 Dec 2020 07:40:10 -0500 (EST)
Received: from st43p00im-zteg10063401.me.com (st43p00im-zteg10063401.me.com
 [17.58.63.175])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 6DDB6380969
 for <speakup@linux-speakup.org>; Wed, 23 Dec 2020 07:40:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1608727208;
 bh=utp/IMgO1D89YcqZCeLeIoOo9gjKFt1vWe2mADon4WE=;
 h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To;
 b=Rku/V33aPrVnGi7kP6tDr8+p3mNn75bdcfvYea4cgu/tRSckwhD0IesrUpAXU8Vkc
 6GE0c39bEq6VhzKeKPwec38cJrXZqAb9jcjHeVfW4S9ljBlpXilmgTr0uGSR7KykR/
 KV66drVxeTJdcXA0Za/eJPPRDgOMIWye5pnwB7gq09Vk8Vuk8d3HvH2nRQxXNjNcV5
 lQWXcB8fHO84doEFvQyyttEaIsMGVPh8mfAjyD5EDOS2bF8DILPZQiKoaJ2qO59f/t
 ICUmFpL6QRdf8tJq6TCBcvlf9mJAcvpZMQuEW8ozX1N8Mt7W6TT8O+5ZrWA65TRaMZ
 8PSZQRU3W+QhA==
Received: from [192.168.1.77] (cpe-69-23-57-146.natcky.res.rr.com
 [69.23.57.146])
 by st43p00im-zteg10063401.me.com (Postfix) with ESMTPSA id BBC714A045E
 for <speakup@linux-speakup.org>; Wed, 23 Dec 2020 12:40:08 +0000 (UTC)
From: Reece O'Bryan <reece.obryan@icloud.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 23 Dec 2020 07:40:07 -0500
Subject: Re: Dual Boot Questions / VirtualBox
Message-Id: <77D25D50-B4EA-4B47-BC95-17E17F6CEABC@icloud.com>
References: <CA5BEE26-38AC-4030-A0AA-706B0AAE6378@icloud.com>
 <20201223045644.GA11497@gregn.net>
In-Reply-To: <20201223045644.GA11497@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
X-Mailer: iPhone Mail (16C101)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-23_06:2020-12-22,
 2020-12-23 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2012230094
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

Hi,

Can you describe more about your set up that you are explaining. Pretty positive you are talking about it being a MacBook for the host operating system. Are you then talking about running virtual machines or dual booting?

Why would you run both NVDA and Orca at the same time?

So for server purposes, a lightweight and yet accessible box on command line only needs speakup, espeak-ng,
and espeakup?

I tried fixing the syntax to be more readable. Is this what you are referring to? Please let me know if it is not so that I can adjust. 

Thank you,

-Reece 

> On Dec 22, 2020, at 11:56 PM, Gregory Nowak <greg@gregn.net> wrote:
> 
>> On Tue, Dec 22, 2020 at 09:01:58PM -0500, Reece O'Bryan wrote:
>> Screen reading or orca wise, what potential issues am I looking out
> for? I Understand that I would need to enter the password to decrypt
> the hard drive without a screenreader. Is there any way to make the
> boot loader speak?
> 
> Not that I'm aware of. Orca works well for me without major
> issues. There are some sites where I need to resort to firefox and
> NVDA, but orca meets most of my daily needs. The only other issue with
> orca is not really with orca, and that is that it doesn't play nice
> with espeakup. This is because speech-dispatcher is setup to use
> pulseaudio by default, leaving speech-dispatcher and espeakup to fight
> over controlling the sound hardware. The solution I use here is to
> configure speech-dispatcher to use libao, and to dump
> pulseaudio. There are those who choose to work with pulseaudio rather
> than dumping it, and maybe those individuals will chime in here.
> 
>> If I were to just run a command line version of Linux what is the minimum I would need to make it actually talk and still be functional? 
> 
> As far as making it talk, all you would need are speakup, espeak-ng,
> and espeakup. As far as making it functional, that depends on what you
> want to do with it. I use mutt to read mail in the command line, and
> either vi or emacs for editing text files. The lynx and elinks
> browsers still work with a web site here and there, but relying on
> them for daily web browsing isn't an option in my opinion. I'm not
> aware of any text browsers out there that can do javascript, which
> most sites seem to rely on these days.
> 
> Also, can you please wrap your lines? That would make it easier to
> reply to you inline.
> 
> Greg
> 
> 
> -- 
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> skype: gregn1
> (authorization required, add me to your contacts list first)
> If we haven't been in touch before, e-mail me before adding me to your contacts.
> 
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
