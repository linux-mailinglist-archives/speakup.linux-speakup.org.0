Return-Path: <speakup+bounces-798-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6D61B611982
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 19:42:51 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=myKDq1Ft;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7D85F38401E; Fri, 28 Oct 2022 13:42:50 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5A766383FEF
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 13:42:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F31E4383FEB; Fri, 28 Oct 2022 13:42:40 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 85185383FE7
	for <speakup@linux-speakup.org>; Fri, 28 Oct 2022 13:42:40 -0400 (EDT)
Received: from [192.168.0.11] (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 70ED920CE3
	for <speakup@linux-speakup.org>; Fri, 28 Oct 2022 18:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1666975156; bh=TSmLex3hBoSGTWwxNlMUJO9qNKSxke//H7VNY4qgb7Y=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=myKDq1FtGPenc9wSkrbbdF2wIFkqGBqTnX8nz8L+Y6gzF4hYKlxGaHHZ6wl7VbIN5
	 C4NwHmKV5RFH5LmZgwSWU9BOJb0BC02sPEighqgeFmV3Biwaw5x1FnKhPF28thOmKl
	 f7DG5CVkcd7k60+s7/pI82TO0uQhGROi3eNd9zZg/AqykM6VLlLRyODdJTgAYcW2C5
	 KEyqsS+5NAgdwynHO1QuoYe+Hopzo2TDZXUWp24Bv/jMhpezLhbXnzjG0j13ZvJbXL
	 G9qdlFij0vCLSv8wKbk+zngMuL5ftEM+fc3+6SOGdt3WyjE5JtugNHatBaerQGmBN/
	 Nmwu9BYPt0cVQ==
Message-ID: <082beb13-bca6-f001-6b28-8a2e14ad7b25@slint.fr>
Date: Fri, 28 Oct 2022 19:42:34 +0000
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: Installing Voxin
To: speakup@linux-speakup.org
References: <d06e087d-7752-f42e-25ff-d2e736b5ed3b@hubert-humphrey.com>
 <086601d8ea59$9bd758c0$87ffa8c0@Win7VM>
 <ebac52ac-209b-686e-ad06-d743658cc6cb@hubert-humphrey.com>
 <087e01d8ea5c$c01349d0$87ffa8c0@Win7VM>
 <5a70be54-54a6-fd05-d02f-7fdc5a24d691@hubert-humphrey.com>
 <088501d8ea5e$9033f820$87ffa8c0@Win7VM>
 <ce900000-695c-23de-19f0-6bb50e7fcd25@hubert-humphrey.com>
 <089101d8ea60$a48a59c0$87ffa8c0@Win7VM>
 <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com>
 <089c01d8ea67$be809ae0$87ffa8c0@Win7VM> <Y1tQ09YHFIMW5W2P@gregn.net>
 <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM>
 <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com>
 <090701d8eaef$9a45f930$87ffa8c0@Win7VM>
Content-Language: en-US
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <090701d8eaef$9a45f930$87ffa8c0@Win7VM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

The fenrir settings live in:
/etc/fenrirscreenreader/settings/settings.conf

The config file in GitHub is here:
https://github.com/chrys87/fenrir/blob/master/config/settings/settings.conf
I have added some comments to this file maybe this can helps:
https://slackware.uk/slint/x86_64/slint-15.0/source/fenrir/settings.conf

Other than that, I suggest that you post your question in the stoomux mailing
list: stormux@groups.io

Cheers,
Didier


Le 28/10/2022 à 17:06, K0LNY_Glenn a écrit :
> I installed fenrir from the repository, and now when I boot, I can silently 
> log in  and run fenrir now, and I get the fenrir tone, but no TTS.
> If I do spd-say test, that works.
> The speaker-test still works, and when it boots, the crontab script that 
> uses espeak-ng speaks the IP Address like it should.
> So, what would be the best thing to look into for getting Fenrir to use 
> Voxin?
> Thanks.
> 
> Glenn
> ----- Original Message ----- 
> From: "Chime Hart" <chime@hubert-humphrey.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>
> Cc: "Gregory Nowak" <greg@gregn.net>; "Speakup is a screen review system for 
> Linux." <speakup@linux-speakup.org>
> Sent: Friday, October 28, 2022 11:24 AM
> Subject: Re: Installing Voxin
> 
> 
> Hi Glen: Just guessing, unless you were to install a Debian package of 
> Fenrir,
> you could try putting a dot slash ahead of fenrir.
> Chime
> 
> 
> 

