Return-Path: <speakup+bounces-625-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AF95B5A0312
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 22:56:23 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ukr.net header.i=@ukr.net header.a=rsa-sha256 header.s=fsm header.b=ox+6O3NZ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 94CC33847CD; Wed, 24 Aug 2022 16:56:14 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7DFF6380AAB
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 16:56:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CF0D83809AC; Wed, 24 Aug 2022 16:56:10 -0400 (EDT)
Received: from frv150.fwdcdn.com (frv150.fwdcdn.com [212.42.77.150])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E8D54380996
	for <speakup@linux-speakup.org>; Wed, 24 Aug 2022 16:56:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=ukr.net;
	s=fsm; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:
	To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=GJS/U/3887xula/9aY5eF6sE6dFhi7YXPbCDr/MUdt4=; b=ox+6O3NZ0AUkxnkmDy9w6h6+fR
	y93V6UFhmipWio3CNbvns0wXMogve4rebsPvhCsTo1HxPbmwh7+20ji5cvkrby2xW3JWa0q8O/2JC
	fFmu0mK0ktGGYGEMmQEtVxrlUcxGYUjOfKYPhI1cJg/pBUjH6txhWbPd64TIfjuntD6M=;
Received: from public-gprs396388.centertel.pl ([37.47.179.165] helo=[192.168.25.9])
	by frv150.fwdcdn.com with esmtpsa ID 1oQxPv-0000uG-Vh
	for speakup@linux-speakup.org; Wed, 24 Aug 2022 23:56:04 +0300
Message-ID: <62d5bc47-f8e4-ea38-bbd5-a121015556b2@ukr.net>
Date: Wed, 24 Aug 2022 22:56:03 +0200
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
Subject: Re: hopefully some help with AntiX
Content-Language: en-US
To: speakup@linux-speakup.org
References: <202208241649.27OGnL8e007327@nfbcal.org>
 <012d01d8b7f1$6e82b210$80ffa8c0@Win7VM>
 <013801d8b7fa$78626150$80ffa8c0@Win7VM>
From: Volodymyr Dorozhinsky <dorozhinsky@ukr.net>
Disposition-Notification-To: Volodymyr Dorozhinsky <dorozhinsky@ukr.net>
In-Reply-To: <013801d8b7fa$78626150$80ffa8c0@Win7VM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Result: IP=37.47.179.165; mail.from=dorozhinsky@ukr.net; dkim=pass; header.d=ukr.net
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,


to install ssh server in Debian You should run:


sudo apt install openssh-server -y


At least this worked for me in Ubuntu.


Best regards

Volodymyr


On 8/24/22 22:45, K0LNY_Glenn wrote:
> this is strange,
> I tried again,
> sudo apt install openssh -y
> and it said that package is not available, but may be under another package
> and it sounded like it said
> try openssh-client
> I don't think, that may only outbound on 22.
> Glenn
> ----- Original Message -----
> From: "K0LNY_Glenn" <glenn@ervin.email>
> To: "Brian Buhrow" <buhrow@nfbcal.org>; "Willem van der Walt"
> <wvdwalt@csir.co.za>
> Cc: "Speakup is a screen review system for Linux."
> <speakup@linux-speakup.org>; <buhrow@nfbcal.org>
> Sent: Wednesday, August 24, 2022 2:40 PM
> Subject: Re: hopefully some help with AntiX
>
>
> Is ufw the only method to open or close ports?
> I still cannot get in...
> I did:
> sudo ufw allow 22/tcp
> and it didn't give me an error.
> I tried system restart ufw
> and systemctl restart ufw
> with sudo of course, and it did not like the command.
> So I rebooted, but I still get connection refused when trying to SSH into
> it.
> I've tried to stop the ufw, but I don't know if it got stopped.
> I say, what the hell are people thinking about closing all ports.
> A bunch of paranoid people.
> Why don't they leave at least 22 open and they could create a pop up message
> on startup that if not using SSH, it may be good to close it.
> This really fucks things up for the Blind!
>
> Glenn
> ----- Original Message -----
> From: "Brian Buhrow" <buhrow@nfbcal.org>
> To: "K0LNY_Glenn" <glenn@ervin.email>; "Willem van der Walt"
> <wvdwalt@csir.co.za>
> Cc: "Speakup is a screen review system for Linux."
> <speakup@linux-speakup.org>; <buhrow@nfbcal.org>
> Sent: Wednesday, August 24, 2022 11:49 AM
> Subject: Re: hopefully some help with AntiX
>
>
> Hello Glen.  There is a faster way to determine if the machine you're trying
> to reach is
> listening on the network on the appropriate ports.  Nmap is good for finding
> which ports a
> machine is paying attention to, but if you know the port numbers, use telnet
> instead.  If
> you don't have telnet installed on your working machine, I highly recommend
> installing it.
> Then, do something like:
> telnet <ipaddress of target machine> <port number>
> You should see something like:
> trying <ipaddress> ...
> Then, you'll either get one of three things:
>
> 1.  A long delay followed by: connectioned timed out trying to reach <ip
> address>
>
> 2.  Connect: connection refused.
>
> 3.  Connected, escape is control-], followed by any banners the far end
> might produce, or none
> if it waits for you to send the first message.
>
> If you get option 2 and the machine you're connecting to is on the same
> network as the one
> you're connecting from, then you know the machine is on the network, but not
> listening on the
> port you tried.
>
> If you get option 1, then it's highly likely the target machine is not
> connected to the
> network.
>
> I use this for testing connections to a huge variety of ports as it allows
> me to determine at
> which layer a problem is occurring.
>
> -thanks
> -Brian
>
>
>
>

