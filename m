Return-Path: <speakup+bounces-742-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C517B5BF5EE
	for <lists+speakup@lfdr.de>; Wed, 21 Sep 2022 07:34:20 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=GpUt/idh;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EA0B8380A74; Wed, 21 Sep 2022 01:34:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C9BF13807FB
	for <lists+speakup@lfdr.de>; Wed, 21 Sep 2022 01:34:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A4D2E3807FB; Wed, 21 Sep 2022 01:34:10 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7BE5738065C
	for <speakup@linux-speakup.org>; Wed, 21 Sep 2022 01:34:10 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.56.81.226])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id DEB987C5;
	Tue, 20 Sep 2022 22:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1663738417; bh=gqdeeZ8KTI0vD7xmAfZwOMXPUYhZkFeGstezqUWrkFQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GpUt/idhqQdlheqqhAAfJe1OPUQ/R64DxJh5LeTaJHa+OkVDYWhsvGC4NG+rXUT3K
	 Z0Ia9iVNe02sRtieKXoep/ns8VQjkDLF1Pf84CWEm8WhuW4w0uwQUXg0IkaJolrhNL
	 C3lQZun1eJrjwFwZT6DfLlAFC/mj8XwEkx2lzswTFWZ3UkXb3zhTiiS2ZBp2UQGeot
	 8B6rlVpUbsOs+wTQ2+7mbVywK8YhjoP6pco9OH/tXIXyc4x8fPkyKppsS8dq9JpFcs
	 kGQhlD0Xgy66x1515+iXwhmK359K+N3rlnzRFKCEvAPSkiSWHk/4XfP9fNMNfsg33N
	 Y6EH5sPfpPM/A==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id A7DE4C171; Tue, 20 Sep 2022 22:33:36 -0700 (MST)
Date: Tue, 20 Sep 2022 22:33:36 -0700
From: Gregory Nowak <greg@gregn.net>
To: Chime Hart <chime@hubert-humphrey.com>
Cc: speakup@linux-speakup.org
Subject: Re: Are Their BiPass KeyStrokes in Speakup?
Message-ID: <YyqiMEqdMYShtFxT@gregn.net>
References: <68c7b66a-d07e-1966-db37-d148eb221bed@hubert-humphrey.com>
 <Yyk90Ychfb1SkCyM@gregn.net>
 <5062cee8-a86c-c419-f94b-190a566118f7@hubert-humphrey.com>
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
In-Reply-To: <5062cee8-a86c-c419-f94b-190a566118f7@hubert-humphrey.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Tue, Sep 20, 2022 at 08:43:32PM -0700, Chime Hart wrote:
> Hi Greg-and-thanks for your analysis. Your synth direct gave me permission
> denuyed, no matter tcsh or bash, also even with sudo.

You need to do this as root directly, or use su. Why this won't work with sudo
was explained on this list in another thread about your dectalk
troubles a while ago.

> And lastly, would you
> mind if I would post you answer in a DecTalk forum? Thanks in advance
> Chime

Go ahead. Caveat, I stand to be corrected on what I wrote.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

