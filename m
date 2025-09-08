Return-Path: <speakup+bounces-1321-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F18E2B48AA7
	for <lists+speakup@lfdr.de>; Mon,  8 Sep 2025 12:55:49 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=posteo.com.br header.i=@posteo.com.br header.a=rsa-sha256 header.s=2017 header.b=k4ktsnJA;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CDF23382741; Mon, 08 Sep 2025 06:55:48 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id ADE9238250C
	for <lists+speakup@lfdr.de>; Mon, 08 Sep 2025 06:55:48 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7641D382122; Mon, 08 Sep 2025 06:55:41 -0400 (EDT)
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 86E453820ED
	for <speakup@linux-speakup.org>; Mon, 08 Sep 2025 06:55:38 -0400 (EDT)
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 6B5B5240027
	for <speakup@linux-speakup.org>; Mon,  8 Sep 2025 12:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.com.br;
	s=2017; t=1757328936;
	bh=v6Rd/5PTn8rpjmMYq/bp0v9q86t3xg6skdkuB5DIm4c=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 Content-Transfer-Encoding:From;
	b=k4ktsnJARMN/qXRymtlSsPdWeblRXCc6eO48EfO4hftlKsSuwpZy484ZfQyGaBgVS
	 667YVjPS+eGhbPcuxQZF4mKWsCdJwl0JoLpQr3G81XBrqvhQYEOYj/h5p5F/vruZYo
	 BzOhBef6W71v6KWQRUKKAMgNWHUfhjX466Qjlqi25SoNd0Z6A8rpJxzHLmTygMmIwT
	 aupXR60Rb6+0H4iRcJuAg02U0BiuZy99vqBh1otGSAMjCI0tI6icYjifg3ecFu4Phq
	 ng/Yk2jP8Tba+bCWQ/lu03yllc1s0LY39DvlS6ODGy+muSArD7tG2ckquqPW7r5sZC
	 FJM7ZHzQoH0OQ==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4cL3lB70G5z9ryn
	for <speakup@linux-speakup.org>; Mon,  8 Sep 2025 12:55:34 +0200 (CEST)
Message-ID: <a013cbe1-4ba5-43ee-ad47-852ee4cca1e3@posteo.com.br>
Date: Mon, 08 Sep 2025 10:55:35 +0000
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Subject: Re: speakup from boot
To: speakup@linux-speakup.org
References: <aL5U_xg372xiMOJm@cudneys.ca> <aL5dVITcCcq369vC@cudneys.ca>
Content-Language: pt-BR
From: Cleverson Casarin Uliana <clul+speakup@posteo.com.br>
In-Reply-To: <aL5dVITcCcq369vC@cudneys.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Terry, I would enable pipewire to start at boot. In theory, it should 
be called by whatever speech service needed it, but in practice this 
doesn't work necessarily well. At least on my ArchLinux, I needed to 
explicitly enable the audio service, in my case pulse audio.

Good luck,
Cleverson


