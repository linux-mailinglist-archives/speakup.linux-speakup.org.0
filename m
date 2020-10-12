Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id D563428B5F5
	for <lists+speakup@lfdr.de>; Mon, 12 Oct 2020 15:20:31 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6F366380BB5; Mon, 12 Oct 2020 09:20:31 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=default header.b=Kgv3uCsI;
	dkim=fail reason="key not found in DNS" header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=twLIVg1g;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D40C9380BDB;
	Mon, 12 Oct 2020 09:20:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 3AF5D380BB4; Mon, 12 Oct 2020 09:20:26 -0400 (EDT)
Received: from opera.rednote.net (opera.rednote.net
 [IPv6:2600:3c03:e000:295::e])
 by befuddled.reisers.ca (Postfix) with ESMTPS id CEC52380974
 for <speakup@linux-speakup.org>; Mon, 12 Oct 2020 09:20:25 -0400 (EDT)
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
 by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 09CDKNd8038945
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
 for <speakup@linux-speakup.org>; Mon, 12 Oct 2020 13:20:23 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 09CDKNd8038945
Authentication-Results: opera.rednote.net;
 dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: opera.rednote.net;
 spf=pass smtp.mailfrom=janina@rednote.net
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 09CDKNd8038945
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rednote.net;
 s=default; t=1602508823;
 bh=YdSfWfUlmHQPC46J3MdxF+KzUFGO5ZzlSN1+n1KhKx4=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=Kgv3uCsINCQguzjE8AMz0ZPWFxo5N1fD0B8m1N4UQQsM4+Cvp7E21zfJy5KzpqqoM
 lx8d0k5P2N+vreAThQsXCcHBpY3G10DkILUJMEmD7WORmRNiyiLdpSNjQH1HcDLBXb
 Q2QpWf1VVr5DrUALqbXOraYeClaBZvbpyadUF/vs=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
 t=1602508823;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CNwP4NVvFrenLXJIxJ2bpyZQbky2JJt2qYU1d2D/5E4=;
 b=twLIVg1g+t5UTTGvcQFGxZmUb5eusS+XJLiyrZrPw+TXx9///JqMOzDNjZForRp5otcpSL
 6pyskl/0cLf7zMhAmAcYLrbtYeKvXKMGK2Mzh31KFltdLACF/1uOmcJEfodhIhNN8xHStu
 xxdtkwAQ4l/r6JoKjEX3Q+6Hg8SNGHA=
Received: (from janina@localhost)
 by rednote.net (8.15.2/8.15.2/Submit) id 09CDKNpt038944
 for speakup@linux-speakup.org; Mon, 12 Oct 2020 09:20:23 -0400
Date: Mon, 12 Oct 2020 09:20:23 -0400
From: Janina Sajka <janina@rednote.net>
To: speakup@linux-speakup.org
Subject: Re: So, where'd the volume controls get to?
Message-ID: <20201012132023.GA1585@rednote.net>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
X-Operating-System: Linux opera.rednote.net 5.8.13-100.fc31.x86_64
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

+1 to Kirk. I'm also wondering about volume control and I'm also still
stuck on the old espeak.

Of the two the volume control is actually more important for me, because
I have Orca using the same audio device and need to level the volume
with Speakup. This was always so much easier to do on the Speakup side.

Best,

Janina

Kirk Reiser writes:
> Hello Samuel et al: The latest version of speakup appears to have
> replaced the volume controls with inflection controls. I don't really
> have a problem with this if the volume controls have just been moved
> to another key combination but I haven't been able to find where they
> are now. I may also be out to lunch but I don't remember any
> discussion about moving them or the reason for doing so here on the
> list. Can someone clarify the situation for me please?
> 
> BTW, a lot of people use the volume controls so I hope they haven't
> been arbitrarily removed.
> 
> IMO espeakup is still entirely brain dead so a lot of us still have to
> use very old versions from back before espeak-en to get decent
> performence. It's just an observation.
> 
>   Kirk
> 
> 
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
