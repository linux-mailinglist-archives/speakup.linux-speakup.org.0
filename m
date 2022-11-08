Return-Path: <speakup+bounces-852-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 42761621F6D
	for <lists+speakup@lfdr.de>; Tue,  8 Nov 2022 23:44:51 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=NkAwS6sp;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7A28538365B; Tue,  8 Nov 2022 17:44:46 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5C3163835F8
	for <lists+speakup@lfdr.de>; Tue,  8 Nov 2022 17:44:46 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B50A43835FF; Tue,  8 Nov 2022 17:44:37 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2D06E3835F8
	for <speakup@linux-speakup.org>; Tue,  8 Nov 2022 17:44:37 -0500 (EST)
Received: from vbox.gregn.net (unknown [172.56.81.116])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 4BE1B419;
	Tue,  8 Nov 2022 14:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1667947444; bh=Wi9qmBd9N0urIn+LJkhuWC4H99jPNLM+i7yJv2lUlsY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NkAwS6sp5555zmBaZOJTwcnef2r3uu5Z5Niq560mCGRHL323yon25B1Ta9kEqtxec
	 7kOTS6QIQIreWlxDzvL+QyVUoQW3kU6Fx7QHmuLI54kRi97RaqfK5mRw3ZBE3XjJvH
	 p8B+gVu9raEGFxoi7HIrGWEGdQBgVjgGIAIn9SxuKLCf4q+7NyicKVe9fmfMAjHxgf
	 bK+1vzgQJUR942cY9/SSSkOa2N5bMcY0KloJyEXp0Vy2AytMfvHlJ865No5Yi2j84/
	 PCZ4b1mbN10v0/4hZ72tH5gp74RPRVmrAms/Aqws4Rul1FZJVbQ732LW5v6kYPlgUM
	 5v+fBDPMS2eAw==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 4AF8AC300; Tue,  8 Nov 2022 15:44:03 -0700 (MST)
Date: Tue, 8 Nov 2022 15:44:03 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Voxin/ibmtts with eSpeakup
Message-ID: <Y2rbs3VJzveP7yWw@gregn.net>
References: <0b4101d8f063$69069fe0$80ffa8c0@Win7VM>
 <Y2XF6wmcbFCsq5l/@gregn.net>
 <0bc501d8f0bd$c222dee0$80ffa8c0@Win7VM>
 <Y2XV2QOPjryMKRJv@gregn.net>
 <0c3801d8f145$e2eb2b90$80ffa8c0@Win7VM>
 <Y2h53YPr311PDObk@gregn.net>
 <0d4001d8f25b$b873c450$80ffa8c0@Win7VM>
 <Y2mVfR5AnGTOs9Sm@gregn.net>
 <0dec01d8f321$3d253ab0$80ffa8c0@Win7VM>
 <0e0101d8f323$7493d540$80ffa8c0@Win7VM>
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
In-Reply-To: <0e0101d8f323$7493d540$80ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

It sounds like speech-dispatcher is falling back to espeak for some
reason. I see that all the AddModule directives in
/etc/speech-dispatcher/speechd.conf are commented out by default. So
to prevent a module from loading, does one delete the AddModule
lines entirely? Any one know? It's also possible that by removing all
modules except for voxin, you're risking having no speech if voxin
doesn't load for some reason. The way to resolve this is to figure out
why voxin loads some times, but not others. However since I don't use
voxin, I'm not sure how to go about doing that.

Greg


On Mon, Nov 07, 2022 at 09:37:37PM -0600, K0LNY_Glenn wrote:
> Well I wrote too soon.
> I rebooted a second time, to see if those very slow voxin errors would 
> happen again, and espeak loaded with espeak, something about an error with 
> something, I wasn't able to review the screen.
> Maybe that is in the speech-dispatcher or IBMTTS or Voxin logs.
> Glenn


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

