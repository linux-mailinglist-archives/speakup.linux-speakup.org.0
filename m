Return-Path: <speakup+bounces-849-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 15D88620794
	for <lists+speakup@lfdr.de>; Tue,  8 Nov 2022 04:36:33 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=TtCFOu71;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9D72138364F; Mon,  7 Nov 2022 22:36:32 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7D5933835F8
	for <lists+speakup@lfdr.de>; Mon,  7 Nov 2022 22:36:32 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D10913835FB; Mon,  7 Nov 2022 22:36:23 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 781E43835F6
	for <speakup@linux-speakup.org>; Mon,  7 Nov 2022 22:36:23 -0500 (EST)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2d06:e42e:ff5e:6cc0:f355:2381])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id BD630419;
	Mon,  7 Nov 2022 19:36:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1667878580; bh=Z6A+9oV7FCHJSoF9VcyS5hHvXAzvFT2WVkQYD458vw0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TtCFOu713clBTo2fTa8Ie9zEoAq2nIamvZDxNqyy7zJ7vW8lOyhddLoJXmGnsy+3T
	 CPVbaP4EBFOiVquETnPaWLWJoecldHw1VrlOK+Hn7nm0Mi3OJSpqqZfDQ/FSVo2FH0
	 kCNcG8yFJV/t1eLke/KGrkPuIn2MLxPZv7SailnI1kx93m+9LoIQQOZB0ylGmeWF6Q
	 LlnpHhgN8bcINy88trOaPLM1FyuJUvpyxkTwa7SbliWOgWTGxbG2iZAUl+2L3JcS23
	 GuE1ifQpmwUKq3E/fWXwYqChhmyg0TKOK3BFeGem7fQY6+8GgFztQ8h0p7+f7y+Ki+
	 MQrzY8TzaSvrw==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id EC8C1C0DF; Mon,  7 Nov 2022 20:36:19 -0700 (MST)
Date: Mon, 7 Nov 2022 20:36:19 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Voxin/ibmtts with eSpeakup
Message-ID: <Y2nOs9L1uekJ4mSA@gregn.net>
References: <Y2RSm7hG8WHdiygs@gregn.net>
 <0b4101d8f063$69069fe0$80ffa8c0@Win7VM>
 <Y2XF6wmcbFCsq5l/@gregn.net>
 <0bc501d8f0bd$c222dee0$80ffa8c0@Win7VM>
 <Y2XV2QOPjryMKRJv@gregn.net>
 <0c3801d8f145$e2eb2b90$80ffa8c0@Win7VM>
 <Y2h53YPr311PDObk@gregn.net>
 <0d4001d8f25b$b873c450$80ffa8c0@Win7VM>
 <Y2mVfR5AnGTOs9Sm@gregn.net>
 <0dec01d8f321$3d253ab0$80ffa8c0@Win7VM>
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
In-Reply-To: <0dec01d8f321$3d253ab0$80ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Since you say it seems to work, I'm not sure why it says it failed to
load earlier during boot. The only suggestion I can think of is to
tell speakup to be quiet from boot until you start typing or reviewing
the screen.

Greg


On Mon, Nov 07, 2022 at 09:21:47PM -0600, K0LNY_Glenn wrote:
> Hi Greg,
> Well, so far so good, only I still get about twenty very slow speaking Voxin 
> voice errors on bootup, spoken with Voxin , the message is:
> 
> failed
> failed to load voxin speech module.
> 
> But the voxin voice spoke correctly with the speakupconf load settings 
> loaded after that, and voxin sounds normal, and except for that annoying 
> slow load up error, it is now working in speakup.
> So making the /home/lenny/.config/speech-dispatcher/modules directory and 
> putting voxin.conf there seems to fixed things.
> Glenn
> 


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

