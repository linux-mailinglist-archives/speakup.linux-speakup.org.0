Return-Path: <speakup+bounces-1157-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 73D4A928FF5
	for <lists+speakup@lfdr.de>; Sat,  6 Jul 2024 03:33:24 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=cudneys.ca header.i=@cudneys.ca header.a=rsa-sha256 header.s=default header.b=Lq5oJWpW;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 43A8BC81C6B; Fri, 05 Jul 2024 21:33:08 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 27A58C80BA4
	for <lists+speakup@lfdr.de>; Fri, 05 Jul 2024 21:33:08 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0A52BC80FEF; Fri, 05 Jul 2024 21:33:00 -0400 (EDT)
Received: from cloud (cudneys.ca [198.251.72.142])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DD9B3C80BA4
	for <speakup@linux-speakup.org>; Fri, 05 Jul 2024 21:32:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cudneys.ca;
	s=default; t=1720229576;
	bh=N7BOncQYNK4IBTPfVJEuwXNESuC7NosPYKonr+p6qDk=;
	h=Date:From:To:Subject:From;
	b=Lq5oJWpWPMzUUs0+oK/H9dejxQ8YNhdkC9zkT66Ru0wJlpGkPTQnpzJyP4b49SRIi
	 DmIBy7ZCmaFMAeqiRxM9erVP2mu2rMlJkPHNynPEklQsMa5kVGqEys6cbgrvTpWTA1
	 yGAQZMo8roAVVVTQJJH+JJ17IbT92n6ECTly4/fY6P8oUcv3VDOIGZPFHlgVuPje6E
	 PXNW24BS9h7JaItKbcoXj2j9xo/y69Vk651Y9Z/++Brvw6PtLKDCB/TUpCiLNubVVo
	 JpD0RZby4Yxe68LMYZl1wuTNaG6XlSFIdBLoQP9r9NDiaemG9WzYm58wmWm7I8P5h1
	 MtyhwsuFqJ9LA==
Received: by cloud (Postfix, from userid 1000)
	id 5B00B3FC48; Fri, 05 Jul 2024 21:32:56 -0400 (EDT)
Date: Fri, 5 Jul 2024 21:32:56 -0400
From: "Terry D. Cudney" <terry@cudneys.ca>
To: speakup@linux-speakup.org
Subject: howto run speakup/orca concurrently in ubuntu 22.04 or 24.04
Message-ID: <ZoieyBFD0TXlL_bd@cudneys.ca>
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
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,

	I'm new to this list. So, please bear with me...

	I have run Debian cli-only with speakup for years... no problem

	I recently acquired a Thinkpad laptop with Windows 11 installed. I shrunk the Windows partition and installed Ubuntu 22.04 (why ubuntu? because Lenovo claimed that Ubuntu 22.04 is "Certified" on this device). After initial setup, I installed espeakup, expecting that speakup would come up talking on the next reboot... Not so!

	So, my question:

	Has anyone had success in installing/running espeakup/speakup onUbuntu 22.04?

	I have tried with the gui/orca running and notrunning... same result: speakup does not talk.

	I'd be happy to run cli-only if speakup would run fromboot time.

	Ideally though, if it is possible to run cli/speakup and gui/orca concurrently, that would be great!

	All suggestions are welcome.

	TIA,

	--terry
	
-- 
Name: Terry D. Cudney
Telephone: 289-488-4882 ext 1
E-mail: terry@cudneys.ca
 

