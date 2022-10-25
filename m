Return-Path: <speakup+bounces-768-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4A7BB60CA49
	for <lists+speakup@lfdr.de>; Tue, 25 Oct 2022 12:48:49 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 93AE2383FF2; Tue, 25 Oct 2022 06:48:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7E81838079C
	for <lists+speakup@lfdr.de>; Tue, 25 Oct 2022 06:48:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 60A6A383E9E; Tue, 25 Oct 2022 06:48:41 -0400 (EDT)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 777B4383E9B
	for <speakup@linux-speakup.org>; Tue, 25 Oct 2022 06:48:39 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 580732012C;
	Tue, 25 Oct 2022 12:48:36 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JvSzNkeAq4sF; Tue, 25 Oct 2022 12:48:36 +0200 (CEST)
Received: from begin (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 8438120119;
	Tue, 25 Oct 2022 12:48:34 +0200 (CEST)
Received: from samy by begin with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1onHU1-00946j-2N;
	Tue, 25 Oct 2022 12:48:33 +0200
Date: Tue, 25 Oct 2022 12:48:33 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Eric Curtin <ecurtin@redhat.com>
Cc: gregkh@linuxfoundation.org, William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	"open list:SPEAKUP CONSOLE SPEECH DRIVER" <speakup@linux-speakup.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] speakup: include types.h so u_char is a known type
Message-ID: <20221025104833.io3spnxw7724vlhb@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Eric Curtin <ecurtin@redhat.com>, gregkh@linuxfoundation.org,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	"open list:SPEAKUP CONSOLE SPEECH DRIVER" <speakup@linux-speakup.org>,
	open list <linux-kernel@vger.kernel.org>
References: <20221025101828.1626490-1-ecurtin@redhat.com>
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
In-Reply-To: <20221025101828.1626490-1-ecurtin@redhat.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

Eric Curtin, le mar. 25 oct. 2022 11:18:24 +0100, a ecrit:
> Fixes build of utils.h header file, occurred when building kernel on
> postmarketOS on Lenovo Duet Chromebook.
> 
>   drivers/accessibility/speakup/utils.h:57:9: error: unknown type name 'u_char'; did you mean 'char'?
>      57 |         u_char *pn = (u_char *)name;
>         |         ^~~~~~
>         |         char
> 

There is already a patch pending commit that just replaces it with
unsigned char.

(see
Subject: [PATCH] speakup: replace utils' u_char with unsigned char
)

Samuel

