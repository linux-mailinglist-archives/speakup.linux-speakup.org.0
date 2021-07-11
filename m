Return-Path: <speakup+bounces-237-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CFF6E3C3C11
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 13:59:15 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ADE41380F64; Sun, 11 Jul 2021 07:59:14 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 94EDF380F56
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 07:59:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 052CD380F5A; Sun, 11 Jul 2021 07:59:10 -0400 (EDT)
Received: from re-prd-fep-045.btinternet.com (mailomta26-re.btinternet.com [213.120.69.119])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6FC8B380F30
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 07:59:09 -0400 (EDT)
Received: from re-prd-rgout-002.btmx-prd.synchronoss.net ([10.2.54.5])
          by re-prd-fep-045.btinternet.com with ESMTP
          id <20210711115907.YLID16557.re-prd-fep-045.btinternet.com@re-prd-rgout-002.btmx-prd.synchronoss.net>
          for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 12:59:07 +0100
Authentication-Results: btinternet.com;
    auth=pass (PLAIN) smtp.auth=mike.ray@btinternet.com
X-SNCR-Rigid: 5ED9C0CC3B8C74B2
X-Originating-IP: [86.146.66.95]
X-OWM-Source-IP: 86.146.66.95 (GB)
X-OWM-Env-Sender: mike.ray@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvtddruddtgdegiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedtudenucenucfjughrpehruffvfhfhkffffgggjggtgfesthejredttdefjeenucfhrhhomhepofhikhgvucftrgihuceomhhikhgvsehrrghsphgsvghrrhihvhhirdhorhhgqeenucggtffrrghtthgvrhhnpeeiveffieevieehjefhvdekiedtudeikedvheehteeggffguefhteekleehueegveenucfkphepkeeirddugeeirdeiiedrleehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplgduledvrdduieekrddtrdefngdpihhnvghtpeekiedrudegiedrieeirdelhedpmhgrihhlfhhrohhmpeeomhhikhgvsehrrghsphgsvghrrhihvhhirdhorhhgqecuuefqffgjpeekuefkvffokffogfdprhgtphhtthhopeeoshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrgheq
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from [192.168.0.3] (86.146.66.95) by re-prd-rgout-002.btmx-prd.synchronoss.net (5.8.340) (authenticated as mike.ray@btinternet.com)
        id 5ED9C0CC3B8C74B2 for speakup@linux-speakup.org; Sun, 11 Jul 2021 12:59:07 +0100
Reply-To: mike@raspberryvi.org
Subject: Re: Installing OS on rackmount server
To: speakup@linux-speakup.org
References: <20210711.104927.121.1@[192.168.1.100]>
 <5ff69fe5-fb5b-5233-0c71-1165b9111eed@raspberryvi.org>
 <dc6281a5-97c3-b90f-3d28-bb1066d05259@poczta.onet.pl>
 <87y2ad14ol.fsf@the-brannons.com> <20210711.113111.244.3@[192.168.1.100]>
From: Mike Ray <mike@raspberryvi.org>
Message-ID: <4fa59ebe-afda-64e0-0bfd-6a61a944698c@raspberryvi.org>
Date: Sun, 11 Jul 2021 12:59:06 +0100
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
In-Reply-To: <20210711.113111.244.3@[192.168.1.100]>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5



Yes it is.

I recently bought a 24-port PoE hub on Ebay which has the same.

You can get serial console cables from either Ebay or Amazon quite easily.

They are often billed as 'Cisco configuration' cables.


On 11/07/2021 12:31, Rob Hudson wrote:
> Is that the port which looks like an ethernet jack?
> 
> ----- Original Message -----
> From: Chris Brannon <chris@the-brannons.com>
> To: speakup@linux-speakup.org
> Date: Sun, 11 Jul 2021 04:16:26 -0700
> Subject: Re: Installing OS on rackmount server
> 
>> Michal Zegan <webczat_200@poczta.onet.pl> writes:
>>
>>> serial console >>> any screenreader for anything text mode IMO. do you
>>> have a serial console and any way to make it usable?
>>
>> Any rackmount server worth owning is going to have IPMI with SOL (serial over
>> LAN).  When I set up our rackmount server late last year, we put a DHCP
>> server and ipmitool on a Raspberry Pi and plugged that puppy into the
>> IPMI network interface on the server.  The Pi handed out an IP address
>> for the server's IPMI over DHCP, and we logged into the Pi through ssh
>> to run ipmitool to configure the server.  In this setup, the Pi was
>> connected to our home network through wifi.
>>
>> You may need to enable serial over LAN in the BIOS.  We got lucky and it
>> was pre-configured for us.
>>
>> Serial over LAN also gives you a serial console for the BIOS, once it is
>> enabled.  You get full boot-up to shutdown access.
>>
>> So hopefully your server has IPMI and SOL.
>>
>> -- Chris
>>
>>
> 


-- 
Michael A. Ray
Analyst/Programmer
Witley, Surrey, South-east UK
cismale het

"Perfection is achieved, not when there is nothing more to add, but when
there is nothing left to take away." -- A. de Saint-Exupery

