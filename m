Return-Path: <speakup+bounces-966-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B204B73CE41
	for <lists+speakup@lfdr.de>; Sun, 25 Jun 2023 05:26:36 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=PzGznrHC;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3E800382586; Sat, 24 Jun 2023 23:26:36 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1F3A838252D
	for <lists+speakup@lfdr.de>; Sat, 24 Jun 2023 23:26:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 30272382532; Sat, 24 Jun 2023 23:26:28 -0400 (EDT)
Received: from out-59.mta0.migadu.com (out-59.mta0.migadu.com [91.218.175.59])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EE18A382445
	for <speakup@linux-speakup.org>; Sat, 24 Jun 2023 23:26:27 -0400 (EDT)
Date: Sun, 25 Jun 2023 13:25:35 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1687663556;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=fb3iNHl40BX+XtBpndMiUmelYTtMgu1cZxjA0tl6Db8=;
	b=PzGznrHCzXwinqGSr4iB1oolBRZMzS6JxTSSHxHmhpyS3uioCcNgifQeo+MTOTXrwrk9JS
	8GLPnLuv5p8Wa64V7yLVzOvCHpyroNkXtYDMlJk9GOguAcFJhSxNGtQuhIBp4S+kyBSacp
	aL1ReaMu/OOJpe2a6TumdCvzR83O6uTkT7AhIaTysU/1Yy+ztbzw9oG2xLuAXlI8fc8zZo
	FmO2ZyPgW3xuKycYV9QbwmFeX1QL2atvmdjX7/6P4lqnl809K34/KDfQYTWINuuX6IwdVr
	MbcIxFPMlbTS/hYZmI7HDWqlDacp2aZeczk38cu6YveBtnpWHM+KgovTGPS3rw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Tyler Spivey <tspivey@pcdesk.net>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: ot: dectalk internal drivers?
Message-ID: <ZJezr66-vWtVj5zE@titan>
References: <Pine.LNX.4.64.2306241500460.774016@users.shellworld.net>
 <1486e800-a981-31bd-05da-86699f680285@pcdesk.net>
 <Pine.LNX.4.64.2306242309530.778686@users.shellworld.net>
 <ZJextwg4IF88wZpM@titan>
 <Pine.LNX.4.64.2306242321590.778686@users.shellworld.net>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.2306242321590.778686@users.shellworld.net>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I think you're supposed to extract it in DOS.

On Sat, Jun 24, 2023 at 11:22:48PM -0400, Karen Lewellen wrote:
> when I downloaded the file and tried to execute it I got the message, this
> is  a windowes executable file.
> 
> Will try once more.
> q
> 
> 
> 
> On Sun, 25 Jun 2023, Jookia wrote:
> 
> > They are DOS exe files.
> > 
> > On Sat, Jun 24, 2023 at 11:10:24PM -0400, Karen Lewellen wrote:
> > > Wait...why is this a windows file?
> > > I do not have words for that.
> > > 
> > > 
> > > 
> > > On Sat, 24 Jun 2023, Tyler Spivey wrote:
> > > 
> > > > You just need the dos drivers? My site has them for both the PC1 and PC2:
> > > > https://allinaccess.com/happ/
> > > > 
> > > > 
> > > > On 6/24/2023 12:02 PM, Karen Lewellen wrote:
> > > > >  Seeking these.
> > > > >  As it can run with speakup, anyone have them?
> > > > >  Thanks,
> > > > >  Karen
> > > > > 
> > > > > 
> > > > > 
> > > > 
> > > > 
> > > 
> > 
> 

