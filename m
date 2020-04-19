Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 0C1D91AF95A
	for <lists+speakup@lfdr.de>; Sun, 19 Apr 2020 12:40:07 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7CB621C5786; Sun, 19 Apr 2020 06:40:05 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=default header.b=BcyUx6H3;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 28E1B1C73E0;
	Sun, 19 Apr 2020 06:39:25 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id D9A791C2C19; Sun, 19 Apr 2020 06:39:22 -0400 (EDT)
Received: from opera.rednote.net (opera.rednote.net
 [IPv6:2600:3c03:e000:295::e])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 8EF8E1C0B50
 for <speakup@linux-speakup.org>; Sun, 19 Apr 2020 06:39:21 -0400 (EDT)
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
 by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 03JAdLFP017107
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
 for <speakup@linux-speakup.org>; Sun, 19 Apr 2020 10:39:21 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 03JAdLFP017107
Authentication-Results: opera.rednote.net;
 dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: opera.rednote.net;
 spf=pass smtp.mailfrom=janina@rednote.net
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 03JAdLFP017107
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rednote.net;
 s=default; t=1587292761;
 bh=rukjL9+4fAJ70A0McH17iz/qNWxxKwLzWRFlr3VQsYE=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=BcyUx6H3xniwbpUwuWJD3shvCCNGQ413DAbHxtF5xNFnvwJzm+M8yC2RkYTsASx57
 1hdHMRHNza/uXRQfnrfn4lVxIwz8GDRc0d94+EmqPPxubafJ4DFSi9uOL/Ywu5jJl3
 5LdtQ12/oAKDxJ3nQiQjewO/bhjiB8MGVLnE+UAE=
Received: (from janina@localhost)
 by rednote.net (8.15.2/8.15.2/Submit) id 03JAdLPT017106
 for speakup@linux-speakup.org; Sun, 19 Apr 2020 06:39:21 -0400
Date: Sun, 19 Apr 2020 06:39:21 -0400
From: Janina Sajka <janina@rednote.net>
To: speakup@linux-speakup.org
Subject: Re: log file noise
Message-ID: <20200419103921.GB2027@rednote.net>
References: <006d01d6158d$a10093f0$e301bbd0$@gmail.com>
 <272d3036-9319-8265-2526-91a53800324b@jasonjgw.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <272d3036-9319-8265-2526-91a53800324b@jasonjgw.net>
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

Wow. I hadn't seen that switch before. Thanks, Jason. Very compelling!

Best,

Janina

Jason White writes:
> 
> On 4/18/20 10:28 AM, Chris Zenchenko wrote:
> > Not exactly a Speakup issue but I'm wondering if anyone has figured out a
> > way to read through log files minus the date and time.
> 
> The journalctl -o short option may be useful if the logs are created by
> systemd-journald.
> 
> 
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
