Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EF6AC1AF959
	for <lists+speakup@lfdr.de>; Sun, 19 Apr 2020 12:37:00 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3BBB51C73D6; Sun, 19 Apr 2020 06:37:00 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=default header.b=eD6B1+RM;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 594201C5784;
	Sun, 19 Apr 2020 06:36:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 874191C2C19; Sun, 19 Apr 2020 06:36:33 -0400 (EDT)
Received: from opera.rednote.net (opera.rednote.net
 [IPv6:2600:3c03:e000:295::e])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 7FFEC1C0B50
 for <speakup@linux-speakup.org>; Sun, 19 Apr 2020 06:36:27 -0400 (EDT)
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
 by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 03JAaMwO017061
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
 for <speakup@linux-speakup.org>; Sun, 19 Apr 2020 10:36:22 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 03JAaMwO017061
Authentication-Results: opera.rednote.net;
 dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: opera.rednote.net;
 spf=pass smtp.mailfrom=janina@rednote.net
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 03JAaMwO017061
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rednote.net;
 s=default; t=1587292582;
 bh=gx6tPYuVsIN3UaaeCsWREMOI02MUFOmNEEXBb8AQEeo=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=eD6B1+RMmRuj2Dydqy+FUYovWHSNPT5RHOlvmBt+YsB8HgRAs1PdVzsaXiW/+jJi2
 XsQo+sd4KHiyG7uaZfGcext6bXvG+weZ6/LJf/WxJri9vV9mNcj3GjHbTDwk8i2/ur
 UyteWx0UnUsFbLYBGuY3aizyzXmHdrmUW4/2Ava4=
Received: (from janina@localhost)
 by rednote.net (8.15.2/8.15.2/Submit) id 03JAaMWc017060
 for speakup@linux-speakup.org; Sun, 19 Apr 2020 06:36:22 -0400
Date: Sun, 19 Apr 2020 06:36:22 -0400
From: Janina Sajka <janina@rednote.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: log file noise
Message-ID: <20200419103622.GA2027@rednote.net>
References: <006d01d6158d$a10093f0$e301bbd0$@gmail.com>
 <alpine.DEB.2.21.1.2004181650280.6234@willempc.meraka.csir.co.za>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1.2004181650280.6234@willempc.meraka.csir.co.za>
X-Operating-System: Linux opera.rednote.net 5.5.17-200.fc31.x86_64
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

I agree with Willem. cut is the command you want for trimming the date
and time stamp off the beginning of each line in the log file, e.g.
/var/log/messages.

This is the strategy I used for years.

More recently I haven't done this with journalctl output.  I think the
same basic approach using cut should work, but you probably need to turn
off journalctl's paging.

Best,

Janina

Willem van der Walt writes:
> Hi,
> Something like tail -50 /var/log/syslog|cut -f5- -d' '
> man cut for details, but basicly, it says show all columns starting with
> column 5 where columns are delimmited by space.
> HTH, Willem
> 
> 
> On Sat, 18 Apr 2020, Chris Zenchenko wrote:
> 
> > [The e-mail server of the sender could not be verified (SPF Record)]
> > 
> > Not exactly a Speakup issue but I'm wondering if anyone has figured out a
> > way to read through log files minus the date and time.
> > I'd like to be able to run through a file without all that extra info at the
> > start of each entry.
> > If I find something important then of course I want to know when but for
> > just skimming through a file all that extra speech is making me crazy.
> > Ok, more crazy than I am already!
> > 
> > _______________________________________________
> > Speakup mailing list
> > Speakup@linux-speakup.org
> > http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> > 
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

-- 

Janina Sajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
