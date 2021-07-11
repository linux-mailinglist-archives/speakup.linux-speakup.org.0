Return-Path: <speakup+bounces-236-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8A7B23C3C0F
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 13:57:31 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 27F1F380F66; Sun, 11 Jul 2021 07:57:31 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 14419380F05
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 07:57:31 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 48329380F30; Sun, 11 Jul 2021 07:57:26 -0400 (EDT)
Received: from re-prd-fep-046.btinternet.com (mailomta21-re.btinternet.com [213.120.69.114])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E93CF380F05
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 07:57:25 -0400 (EDT)
Received: from re-prd-rgout-005.btmx-prd.synchronoss.net ([10.2.54.8])
          by re-prd-fep-046.btinternet.com with ESMTP
          id <20210711115724.VHPC24326.re-prd-fep-046.btinternet.com@re-prd-rgout-005.btmx-prd.synchronoss.net>
          for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 12:57:24 +0100
Authentication-Results: btinternet.com;
    auth=pass (PLAIN) smtp.auth=mike.ray@btinternet.com
X-SNCR-Rigid: 60DCD71101AE443B
X-Originating-IP: [86.146.66.95]
X-OWM-Source-IP: 86.146.66.95 (GB)
X-OWM-Env-Sender: mike.ray@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvtddruddtgdegiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedtudenucenucfjughrpehruffvfhfhkffffgggjggtgfesthekredttdefjeenucfhrhhomhepofhikhgvucftrgihuceomhhikhgvsehrrghsphgsvghrrhihvhhirdhorhhgqeenucggtffrrghtthgvrhhnpeejteetkeehhfdvveehvdfggfektdetgefggeeuleehtefhhfetfeektdeuledvueenucfkphepkeeirddugeeirdeiiedrleehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplgduledvrdduieekrddtrdefngdpihhnvghtpeekiedrudegiedrieeirdelhedpmhgrihhlfhhrohhmpeeomhhikhgvsehrrghsphgsvghrrhihvhhirdhorhhgqecuuefqffgjpeekuefkvffokffogfdprhgtphhtthhopeeoshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrgheq
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from [192.168.0.3] (86.146.66.95) by re-prd-rgout-005.btmx-prd.synchronoss.net (5.8.340) (authenticated as mike.ray@btinternet.com)
        id 60DCD71101AE443B for speakup@linux-speakup.org; Sun, 11 Jul 2021 12:57:23 +0100
Reply-To: mike@raspberryvi.org
Subject: Re: Installing OS on rackmount server
To: speakup@linux-speakup.org
References: <20210711.104927.121.1@[192.168.1.100]>
 <5ff69fe5-fb5b-5233-0c71-1165b9111eed@raspberryvi.org>
 <dc6281a5-97c3-b90f-3d28-bb1066d05259@poczta.onet.pl>
 <87y2ad14ol.fsf@the-brannons.com>
From: Mike Ray <mike@raspberryvi.org>
Message-ID: <36dd5c85-c450-f17f-0ae7-de5395323d14@raspberryvi.org>
Date: Sun, 11 Jul 2021 12:57:22 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
In-Reply-To: <87y2ad14ol.fsf@the-brannons.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


Chris,

I didn't know any of this. Going to file it away. Thanks.

Mike

On 11/07/2021 12:16, Chris Brannon wrote:
> Michał Zegan <webczat_200@poczta.onet.pl> writes:
> 
>> serial console >>> any screenreader for anything text mode IMO. do you
>> have a serial console and any way to make it usable?
> 
> Any rackmount server worth owning is going to have IPMI with SOL (serial over
> LAN).  When I set up our rackmount server late last year, we put a DHCP
> server and ipmitool on a Raspberry Pi and plugged that puppy into the
> IPMI network interface on the server.  The Pi handed out an IP address
> for the server's IPMI over DHCP, and we logged into the Pi through ssh
> to run ipmitool to configure the server.  In this setup, the Pi was
> connected to our home network through wifi.
> 
> You may need to enable serial over LAN in the BIOS.  We got lucky and it
> was pre-configured for us.
> 
> Serial over LAN also gives you a serial console for the BIOS, once it is
> enabled.  You get full boot-up to shutdown access.
> 
> So hopefully your server has IPMI and SOL.
> 
> -- Chris
> 


-- 
Michael A. Ray
Analyst/Programmer
Witley, Surrey, South-east UK
cismale het

"Perfection is achieved, not when there is nothing more to add, but when
there is nothing left to take away." -- A. de Saint-Exupery

