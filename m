Return-Path: <speakup+bounces-968-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C3D2F73CE66
	for <lists+speakup@lfdr.de>; Sun, 25 Jun 2023 06:20:55 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=LcveJWbd;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8982E382569; Sun, 25 Jun 2023 00:20:54 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 697AD3823C3
	for <lists+speakup@lfdr.de>; Sun, 25 Jun 2023 00:20:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8FC6C38252D; Sun, 25 Jun 2023 00:20:46 -0400 (EDT)
Received: from out-15.mta0.migadu.com (out-15.mta0.migadu.com [91.218.175.15])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A80F6382399
	for <speakup@linux-speakup.org>; Sun, 25 Jun 2023 00:20:44 -0400 (EDT)
Date: Sun, 25 Jun 2023 14:20:21 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1687666842;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rNADI0AySdbj8ClGHOLPKD7tlXJKT2ephcUtt1RUnhI=;
	b=LcveJWbdOA/46d746sO0/4HYTtTFAAyMCYpaQtEfAuoQKtDZmGgWTVpeVejL4HCafjuOVz
	KQW0DX6j2I75l/cBVn/RGOPmv4tPRUZWtuFljnWd7iUnSwKFKdajqTKXAeCL1acpn1Ri1N
	+/4xORkl+Hwbd/be/lM4KupXJ0WTROPcQpBXvs/tYf3UDicuZki/iykhwIhmZTkVC42EFy
	gbBrjr75kHQzjdVwE0ybFs2ZeGV6KIIbNRK2sPZ9cxaEXLVGPKAK0MIjS072VA71BiNVIG
	KVUA0MmSW7Q730XMyFGdQFw9yJiS6hO+GsHc2AAchZ3W03236IcX1Tgkwyqbww==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Tyler Spivey <tspivey@pcdesk.net>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: ot: dectalk internal drivers?
Message-ID: <ZJfAha6CVrpAGVsh@titan>
References: <Pine.LNX.4.64.2306241500460.774016@users.shellworld.net>
 <1486e800-a981-31bd-05da-86699f680285@pcdesk.net>
 <Pine.LNX.4.64.2306242309530.778686@users.shellworld.net>
 <ZJextwg4IF88wZpM@titan>
 <Pine.LNX.4.64.2306242321590.778686@users.shellworld.net>
 <ZJezr66-vWtVj5zE@titan>
 <Pine.LNX.4.64.2306242359540.779316@users.shellworld.net>
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
In-Reply-To: <Pine.LNX.4.64.2306242359540.779316@users.shellworld.net>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

No problem :)

I'm not too sure, I haven't tried or tested this or have the hardware.

I would guess you need to run dt.bat to run the drivers unless it's an
installer that sets up things in CONFIG.SYS.

Which file did you download?

On Sun, Jun 25, 2023 at 12:02:33AM -0400, Karen Lewellen wrote:
> Profound apologies...its been a deeply stressful time.
> When I ran pkunzip it opened just fine.
> I do have a question though.
> I note no install, does that mean I need only say  run dt.bat for the
> drivers to run?
> i. e. place that in my autoexec.bat?
> I want to test things before doing that  if I can.
> Goal is running it with business vision.
> Thanks,
> 
> 
> 
> On Sun, 25 Jun 2023, Jookia wrote:
> 
> > I think you're supposed to extract it in DOS.
> > 
> > On Sat, Jun 24, 2023 at 11:22:48PM -0400, Karen Lewellen wrote:
> > > when I downloaded the file and tried to execute it I got the message, this
> > > is  a windowes executable file.
> > > 
> > > Will try once more.
> > > q
> > > 
> > > 
> > > 
> > > On Sun, 25 Jun 2023, Jookia wrote:
> > > 
> > > > They are DOS exe files.
> > > > 
> > > > On Sat, Jun 24, 2023 at 11:10:24PM -0400, Karen Lewellen wrote:
> > > > > Wait...why is this a windows file?
> > > > > I do not have words for that.
> > > > > 
> > > > > 
> > > > > 
> > > > > On Sat, 24 Jun 2023, Tyler Spivey wrote:
> > > > > 
> > > > > > You just need the dos drivers? My site has them for both the PC1 and PC2:
> > > > > > https://allinaccess.com/happ/
> > > > > > 
> > > > > > 
> > > > > > On 6/24/2023 12:02 PM, Karen Lewellen wrote:
> > > > > > >  Seeking these.
> > > > > > >  As it can run with speakup, anyone have them?
> > > > > > >  Thanks,
> > > > > > >  Karen
> > > > > > > 
> > > > > > > 
> > > > > > > 
> > > > > > 
> > > > > > 
> > > > > 
> > > > 
> > > 
> > 
> > 

