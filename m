Return-Path: <speakup+bounces-473-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7502856D1C8
	for <lists+speakup@lfdr.de>; Mon, 11 Jul 2022 00:22:04 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=rHlQ+WzT;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0F86A380C15; Sun, 10 Jul 2022 18:22:04 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E15E0380BB5
	for <lists+speakup@lfdr.de>; Sun, 10 Jul 2022 18:22:03 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 28604380B88; Sun, 10 Jul 2022 18:21:57 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id A2C44380B61
	for <speakup@linux-speakup.org>; Sun, 10 Jul 2022 18:21:56 -0400 (EDT)
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 4426E20440;
	Sun, 10 Jul 2022 23:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1657487994; bh=ZnMrHydYlmyU/7dO42ZQQraedNAfRUBEFY3srdst3Ug=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rHlQ+WzT7vWo+TuzR7bPp4eo43TIZT3TPz2HB4jnlcu1SJRZ83jSFBgMJleyqnJAb
	 N39uop3ZwVjW3ZHOCNYAIzeR593XOT5JCWWRZsfzQ22JWrcRSl1QaRUvNhVRKMP5fY
	 lPh45Q/XnVOzTsp4jE1DDeeqnBvX+fZEQb74aBlcHQJcETQR+E4QfadJa4YKnsBZYv
	 BRQuEuqntvPd1n742pO9yiC94WvyeYSqThzNU0i5w0Vb9ldfH10Q7vdAloVW79voC6
	 Rt/Y6pLpHGYzAelPaJp4bFuTypjzpxtYQtpRdt8mi/D1vLkKh2DkJjxODuSs5xx4FH
	 tB1Hyj5AHFOnQ==
Message-ID: <01ad6914-5266-6d87-240f-072aa572a7e9@slint.fr>
Date: Mon, 11 Jul 2022 00:21:49 +0200
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: About no_interrupt?
Content-Language: en-US
To: Karen Lewellen <klewellen@shellworld.net>,
 Chime Hart <chime@hubert-humphrey.com>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>, speakup@linux-speakup.org
References: <e12ad8db-3330-1eb3-bd02-65800c170ea9@hubert-humphrey.com>
 <20220710191638.ifp4speglszs3hm4@begin>
 <221ddb78-9ec2-6f00-b249-50dcbb7e57ef@hubert-humphrey.com>
 <a029ad61-468a-0daf-e245-fc679f1a8dab@hubert-humphrey.com>
 <Pine.LNX.4.64.2207101628140.440089@server2.shellworld.net>
 <20220710203826.3wasqo5hnxf3zdep@begin>
 <Pine.LNX.4.64.2207101659370.441118@server2.shellworld.net>
 <b9ac0798-5749-12be-6dbb-9d05f7e48078@hubert-humphrey.com>
 <Pine.LNX.4.64.2207101720510.441523@server2.shellworld.net>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <Pine.LNX.4.64.2207101720510.441523@server2.shellworld.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Not sure I understand this discussion but if I do the PrintScreen key interrupts
Speakup saying "You killed speakup" and pressing it again resumes speech saying
"I'm aLive!" and this has been the case since ages.

Maybe I miss something, then what?

Didier

Le 10/07/2022 à 23:22, Karen Lewellen a écrit :
> ...Which given how long you have been using speakup, and how much hardware you  
> have invested is rather disturbing, no?
> what is this keystroke Samuel, perhaps the problem chime is having already has  
> a solution?
> 
> 
> 
> On Sun, 10 Jul 2022, Chime Hart wrote:
> 
>> Well, I suppose if I understood much more, I could try-and-run Fenrir with
>> Allison. I did install fenrir, sure alot of packages. While Fenrir has some
>> options which Speakup does not, what I would really want would be a Speakup
>> keymap for Fenrir. Chris was opened to that if it were supplied. From running
>> a search, Fenrir works with these embedded voices, but again like a speakup
>> situation, we would need real life experiences, "can you interrupt speech"?
>> And as to Karen's question, I have never heard of a pause keystroke in Speakup.
>> Chime
>>
>>
> 

