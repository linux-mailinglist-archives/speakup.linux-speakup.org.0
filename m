Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D1082233374
	for <lists+speakup@lfdr.de>; Thu, 30 Jul 2020 15:52:40 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4B1961C06D1; Thu, 30 Jul 2020 09:52:39 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=default header.b=YpxuVqFg;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 840611C06DB;
	Thu, 30 Jul 2020 09:51:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 616461C06CF; Thu, 30 Jul 2020 09:51:24 -0400 (EDT)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B5F5A1C0453
 for <speakup@linux-speakup.org>; Thu, 30 Jul 2020 09:51:19 -0400 (EDT)
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
 by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 06UDn5fO283873
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
 for <speakup@linux-speakup.org>; Thu, 30 Jul 2020 13:49:05 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 06UDn5fO283873
Authentication-Results: opera.rednote.net;
 dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: opera.rednote.net;
 spf=pass smtp.mailfrom=janina@rednote.net
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 06UDn5fO283873
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rednote.net;
 s=default; t=1596116945;
 bh=X1PS4AhuPztfUBlg9YGjJfds4G+HtjxDI6QiextMYkA=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=YpxuVqFgLfuK1v3nVWNmSvyDlpMaXYDRgaTJKqu0Vhwfwy/iiWsxIbaqoKsipM1TP
 f7rDnDn/6xFkfgPZGq6cV44Pc/ytfgktmB+rb+vAGuunK6bsgb5CzD41gfNVJF20KH
 8bP2lI96tPOr4hp/5QezjI7Ir3rpz7kisK6aN5iI=
Received: (from janina@localhost)
 by rednote.net (8.15.2/8.15.2/Submit) id 06UDn5Jh283872
 for speakup@linux-speakup.org; Thu, 30 Jul 2020 09:49:05 -0400
Date: Thu, 30 Jul 2020 09:49:05 -0400
From: Janina Sajka <janina@rednote.net>
To: speakup@linux-speakup.org
Subject: Re: [PATCH] staging/speakup: Move out of staging
Message-ID: <20200730134905.GB2791@rednote.net>
References: <20200728211208.691249-1-samuel.thibault@ens-lyon.org>
 <c4cb56cca7928f92d642aef467244db434bff26f.camel@perches.com>
 <20200729003623.d42ljafn6sd7y2be@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200729003623.d42ljafn6sd7y2be@function>
X-Operating-System: Linux opera.rednote.net 5.7.9-100.fc31.x86_64
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

Thanks again for all your patience and support over the many
yearsgetting to this point, Samuel. You're a hero to us.

Janina

Samuel Thibault writes:
> Joe Perches, le mar. 28 juil. 2020 17:24:47 -0700, a ecrit:
> > On Tue, 2020-07-28 at 23:12 +0200, Samuel Thibault wrote:
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > []
> > > @@ -16077,6 +16077,15 @@ Q:	https://patchwork.kernel.org/project/linux-sparse/list/
> > >  B:	https://bugzilla.kernel.org/enter_bug.cgi?component=Sparse&product=Tools
> > >  F:	include/linux/compiler.h
> > >  
> > > +SPEAKUP CONSOLE SPEECH DRIVER
> > > +M:	William Hubbs <w.d.hubbs@gmail.com>
> > > +M:	Chris Brannon <chris@the-brannons.com>
> > > +M:	Kirk Reiser <kirk@reisers.ca>
> > > +M:	Samuel Thibault <samuel.thibault@ens-lyon.org>
> > > +L:	speakup@linux-speakup.org
> > > +W:	http://www.linux-speakup.org/
> > > +F:	drivers/accessibility/speakup/
> > 
> > S:? 	Supported / Maintained / Odd Fixes ?
> 
> Ah, yes.  I should have read the documentation at the top, instead of
> assuming that "S:" standed for the reason for being in "S"taging.
> 
> Submitted a v2.
> 
> Samuel
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
