Return-Path: <speakup+bounces-406-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AFE7A514CD8
	for <lists+speakup@lfdr.de>; Fri, 29 Apr 2022 16:28:27 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 97FB3380D4D; Fri, 29 Apr 2022 10:28:26 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 836493808C7
	for <lists+speakup@lfdr.de>; Fri, 29 Apr 2022 10:28:26 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 046223807F4; Fri, 29 Apr 2022 10:28:22 -0400 (EDT)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D3C9B3807F4
	for <speakup@linux-speakup.org>; Fri, 29 Apr 2022 10:28:21 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 18E2120164;
	Fri, 29 Apr 2022 16:28:19 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SY08BDkqk9Wk; Fri, 29 Apr 2022 16:28:19 +0200 (CEST)
Received: from begin (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 6C8A82015D;
	Fri, 29 Apr 2022 16:28:18 +0200 (CEST)
Received: from samy by begin with local (Exim 4.95)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1nkRbV-006Sju-NJ;
	Fri, 29 Apr 2022 16:28:17 +0200
Date: Fri, 29 Apr 2022 16:28:17 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Niklas Schnelle <schnelle@linux.ibm.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-pci@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	"open list:SPEAKUP CONSOLE SPEECH DRIVER" <speakup@linux-speakup.org>
Subject: Re: [PATCH 06/37] speakup: add HAS_IOPORT dependency for
 SPEAKUP_SERIALIO
Message-ID: <20220429142817.knvopowhs2ibzz6z@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Niklas Schnelle <schnelle@linux.ibm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-pci@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	"open list:SPEAKUP CONSOLE SPEECH DRIVER" <speakup@linux-speakup.org>
References: <20220429135108.2781579-1-schnelle@linux.ibm.com>
 <20220429135108.2781579-12-schnelle@linux.ibm.com>
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
In-Reply-To: <20220429135108.2781579-12-schnelle@linux.ibm.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Niklas Schnelle, le ven. 29 avril 2022 15:50:09 +0200, a ecrit:
> In a future patch HAS_IOPORT=n will result in inb()/outb() and friends
> not being declared. SPEAKUP_SERIALIO thus needs to depend on HAS_IOPORT.
> 
> Co-developed-by: Arnd Bergmann <arnd@kernel.org>
> Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/accessibility/speakup/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/accessibility/speakup/Kconfig b/drivers/accessibility/speakup/Kconfig
> index 07ecbbde0384..e84fb617acc4 100644
> --- a/drivers/accessibility/speakup/Kconfig
> +++ b/drivers/accessibility/speakup/Kconfig
> @@ -46,6 +46,7 @@ if SPEAKUP
>  config SPEAKUP_SERIALIO
>  	def_bool y
>  	depends on ISA || COMPILE_TEST
> +	depends on HAS_IOPORT
>  
>  config SPEAKUP_SYNTH_ACNTSA
>  	tristate "Accent SA synthesizer support"
> -- 
> 2.32.0
> 

-- 
Samuel
---
Pour une évaluation indépendante, transparente et rigoureuse !
Je soutiens la Commission d'Évaluation de l'Inria.

