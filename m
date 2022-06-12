Return-Path: <speakup+bounces-458-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 52FE9547B42
	for <lists+speakup@lfdr.de>; Sun, 12 Jun 2022 19:49:37 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DCF78380A78; Sun, 12 Jun 2022 13:49:36 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C71BF380916
	for <lists+speakup@lfdr.de>; Sun, 12 Jun 2022 13:49:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BC21B380A67; Sun, 12 Jun 2022 13:49:31 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9882138082A
	for <speakup@linux-speakup.org>; Sun, 12 Jun 2022 13:49:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id D4F6F20188;
	Sun, 12 Jun 2022 19:49:29 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BSDcosFd3M4d; Sun, 12 Jun 2022 19:49:29 +0200 (CEST)
Received: from begin (anantes-655-1-33-15.w83-195.abo.wanadoo.fr [83.195.225.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 1FED420184;
	Sun, 12 Jun 2022 19:49:29 +0200 (CEST)
Received: from samy by begin with local (Exim 4.95)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1o0RiK-001SSp-VT;
	Sun, 12 Jun 2022 19:49:28 +0200
Date: Sun, 12 Jun 2022 19:49:28 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Sasha Levin <sashal@kernel.org>
Cc: Pavel Machek <pavel@denx.de>, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org, Zheng Bin <zhengbin13@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	trix@redhat.com, salah.triki@gmail.com, speakup@linux-speakup.org
Subject: Re: [PATCH AUTOSEL 5.10 21/38] accessiblity: speakup: Add missing
 misc_deregister in softsynth_probe
Message-ID: <20220612174928.msxmjn67cngztfcc@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Sasha Levin <sashal@kernel.org>, Pavel Machek <pavel@denx.de>,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Zheng Bin <zhengbin13@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	trix@redhat.com, salah.triki@gmail.com, speakup@linux-speakup.org
References: <20220607175835.480735-1-sashal@kernel.org>
 <20220607175835.480735-21-sashal@kernel.org>
 <20220608210830.GA1306@duo.ucw.cz>
 <YqYmt5wAXWt7Ggzu@sashalap>
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
In-Reply-To: <YqYmt5wAXWt7Ggzu@sashalap>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Sasha Levin, le dim. 12 juin 2022 13:47:35 -0400, a ecrit:
> On Wed, Jun 08, 2022 at 11:08:30PM +0200, Pavel Machek wrote:
> > > From: Zheng Bin <zhengbin13@huawei.com>
> > > 
> > > [ Upstream commit 106101303eda8f93c65158e5d72b2cc6088ed034 ]
> > > 
> > > softsynth_probe misses a call misc_deregister() in an error path, this
> > > patch fixes that.
> > 
> > This seems incorrect. Registration failed, we can't really deregister.

The synthu_device registration failed, yes, but the patch is about
unregistering synth_device, which was registered just above (notice
synth_device != synthu_device)

Samuel

