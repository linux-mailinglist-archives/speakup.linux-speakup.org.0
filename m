Return-Path: <speakup+bounces-1074-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 38B268489D9
	for <lists+speakup@lfdr.de>; Sun,  4 Feb 2024 01:16:53 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ABAF6382671; Sat,  3 Feb 2024 19:16:52 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9486A382133
	for <lists+speakup@lfdr.de>; Sat,  3 Feb 2024 19:16:52 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4D6DD3821A3; Sat,  3 Feb 2024 19:16:48 -0500 (EST)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 24586382128
	for <speakup@linux-speakup.org>; Sat,  3 Feb 2024 19:16:48 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 86526A0174;
	Sun,  4 Feb 2024 01:16:46 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sCcj7J_Kdhpu; Sun,  4 Feb 2024 01:16:46 +0100 (CET)
Received: from begin (aamiens-653-1-111-57.w83-192.abo.wanadoo.fr [83.192.234.57])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 57BB2A011B;
	Sun,  4 Feb 2024 01:16:46 +0100 (CET)
Received: from samy by begin with local (Exim 4.97)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1rWQBh-000000042i0-2ZWx;
	Sun, 04 Feb 2024 01:16:45 +0100
Date: Sun, 4 Feb 2024 01:16:45 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, speakup@linux-speakup.org
Subject: Re: [PATCH] speakup: Fix 8bit characters from direct synth
Message-ID: <20240204001645.oj44wnx3ifk2l7tg@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
	speakup@linux-speakup.org
References: <20240203233600.gu4qci36fpnro3ui@begin>
 <2024020308-until-overact-a7b1@gregkh>
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
In-Reply-To: <2024020308-until-overact-a7b1@gregkh>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Greg KH, le sam. 03 févr. 2024 16:03:20 -0800, a ecrit:
> On Sun, Feb 04, 2024 at 12:36:00AM +0100, Samuel Thibault wrote:
> > When userland echoes 8bit characters to /dev/synth with e.g.
> > 
> > echo -e '\xe9' > /dev/synth
> > 
> > synth_write would get characters beyond 0x7f, and thus negative when
> > char is signed.  When given to synth_buffer_add which takes a u16, this
> > would sign-extend and produce a U+ffxy character rather than U+xy.
> > Users thus get garbled text instead of accents in their output.
> > 
> > Let's fix this by making sure that we read unsigned characters.
> > 
> > Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
> > Fixes: 89fc2ae80bb1 ("speakup: extend synth buffer to 16bit unicode characters")
> > Cc: stable@vger.kernel.org
> > 
> > ---
> >  drivers/accessibility/speakup/synth.c |    3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > --- a/drivers/accessibility/speakup/synth.c
> > +++ b/drivers/accessibility/speakup/synth.c
> > @@ -208,8 +208,9 @@ void spk_do_flush(void)
> >  	wake_up_process(speakup_task);
> >  }
> >  
> > -void synth_write(const char *buf, size_t count)
> > +void synth_write(const char *_buf, size_t count)
> >  {
> > +	const unsigned char *buf = (const unsigned char *) _buf;
> >  	while (count--)
> >  		synth_buffer_add(*buf++);
> >  	synth_start();
> 
> Nit, I think you need a blank line after the new variable definition.

Ok.

> And why can't we just change these to be u8 instead of "char"?  Wouldn't
> that solve this issue overall better?

I was wondering, but an example of caller is synth_direct_store, which
calls string_unescape_any_inplace on the buffer, which does take a char*
and I guess won't change.

Samuel

