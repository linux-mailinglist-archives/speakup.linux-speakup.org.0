Return-Path: <speakup+bounces-753-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8BAD7600718
	for <lists+speakup@lfdr.de>; Mon, 17 Oct 2022 08:56:21 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CF77D383F73; Mon, 17 Oct 2022 02:56:20 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BA630383ED6
	for <lists+speakup@lfdr.de>; Mon, 17 Oct 2022 02:56:20 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B18C1383EDA; Mon, 17 Oct 2022 02:56:15 -0400 (EDT)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8C7F53807AD
	for <speakup@linux-speakup.org>; Mon, 17 Oct 2022 02:56:15 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 1370420167;
	Mon, 17 Oct 2022 08:56:14 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RAbQKxLDb5ly; Mon, 17 Oct 2022 08:56:13 +0200 (CEST)
Received: from begin (lfbn-bor-1-376-208.w109-215.abo.wanadoo.fr [109.215.91.208])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id A6A2120166;
	Mon, 17 Oct 2022 08:56:13 +0200 (CEST)
Received: from samy by begin with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1okK2m-0050QZ-3B;
	Mon, 17 Oct 2022 08:56:12 +0200
Date: Mon, 17 Oct 2022 08:56:12 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: =?utf-8?B?xJBvw6BuIFRy4bqnbiBDw7RuZw==?= Danh <congdanhqx@gmail.com>
Cc: speakup@linux-speakup.org, William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>
Subject: Re: [PATCH] speakup: replace utils' u_char with unsigned char
Message-ID: <20221017065612.imtjlrx3wh5ngirc@begin>
References: <b75743026aaee2d81efe3d7f2e8fa47f7d0b8ea7.1665736571.git.congdanhqx@gmail.com>
 <20221014111417.3w2uj72mxh2diqo5@begin>
 <Y0y3SWyAwvNpVOIM@danh.dev>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y0y3SWyAwvNpVOIM@danh.dev>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

Đoàn Trần Công Danh, le lun. 17 oct. 2022 09:00:41 +0700, a ecrit:
> On 2022-10-14 13:14:17+0200, Samuel Thibault <samuel.thibault@ens-lyon.org> wrote:
> > Đoàn Trần Công Danh, le ven. 14 oct. 2022 15:38:15 +0700, a ecrit:
> > > drivers/accessibility/speakup/utils.h will be used to compile host tool
> > > to generate metadata.
> > > 
> > > "u_char" is a non-standard type, which is defined to "unsigned char"
> > > on glibc but not defined by some libc, e.g. musl.
> > > 
> > > Let's replace "u_char" with "unsigned char"
> > > 
> > > Signed-off-by: Đoàn Trần Công Danh <congdanhqx@gmail.com>
> > 
> > Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
> 
> Hi, is there a public tree for this subsystem somewhere?

No, patches are to be sent to Greg KH.

> Also, this affects linux6.0, should I put stable@ in Cc?

It'd be useful, yes.

> > 
> > > ---
> > >  drivers/accessibility/speakup/utils.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/accessibility/speakup/utils.h b/drivers/accessibility/speakup/utils.h
> > > index 4bf2ee8ac246..4ce9a12f7664 100644
> > > --- a/drivers/accessibility/speakup/utils.h
> > > +++ b/drivers/accessibility/speakup/utils.h
> > > @@ -54,7 +54,7 @@ static inline int oops(const char *msg, const char *info)
> > >  
> > >  static inline struct st_key *hash_name(char *name)
> > >  {
> > > -	u_char *pn = (u_char *)name;
> > > +	unsigned char *pn = (unsigned char *)name;
> > >  	int hash = 0;
> > >  
> > >  	while (*pn) {
> > > -- 
> > > 2.38.0.413.g74048e4d9e
> 
> -- 
> Danh
> 

