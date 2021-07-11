Return-Path: <speakup+bounces-231-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7D0663C3BA4
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 12:55:08 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 84452380F78; Sun, 11 Jul 2021 06:55:07 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 71DEA380BE5
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 06:55:07 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D19F6380C0A; Sun, 11 Jul 2021 06:55:02 -0400 (EDT)
Received: from sa-prd-fep-043.btinternet.com (mailomta11-sa.btinternet.com [213.120.69.17])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 176EC380BD7
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 06:55:01 -0400 (EDT)
Received: from sa-prd-rgout-003.btmx-prd.synchronoss.net ([10.2.38.6])
          by sa-prd-fep-043.btinternet.com with ESMTP
          id <20210711105458.QIDA19470.sa-prd-fep-043.btinternet.com@sa-prd-rgout-003.btmx-prd.synchronoss.net>
          for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 11:54:58 +0100
Authentication-Results: btinternet.com;
    auth=pass (PLAIN) smtp.auth=mike.ray@btinternet.com
X-SNCR-Rigid: 60D1590803A28A03
X-Originating-IP: [86.146.66.95]
X-OWM-Source-IP: 86.146.66.95 (GB)
X-OWM-Env-Sender: mike.ray@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvtddruddtgdeffecutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedtudenucenucfjughrpehruffvfhfhkffffgggjggtgfesthejredttdefjeenucfhrhhomhepofhikhgvucftrgihuceomhhikhgvsehrrghsphgsvghrrhihvhhirdhorhhgqeenucggtffrrghtthgvrhhnpeeiveffieevieehjefhvdekiedtudeikedvheehteeggffguefhteekleehueegveenucfkphepkeeirddugeeirdeiiedrleehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplgduledvrdduieekrddtrdefngdpihhnvghtpeekiedrudegiedrieeirdelhedpmhgrihhlfhhrohhmpeeomhhikhgvsehrrghsphgsvghrrhihvhhirdhorhhgqecuuefqffgjpeekuefkvffokffogfdprhgtphhtthhopeeoshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrgheq
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from [192.168.0.3] (86.146.66.95) by sa-prd-rgout-003.btmx-prd.synchronoss.net (5.8.340) (authenticated as mike.ray@btinternet.com)
        id 60D1590803A28A03 for speakup@linux-speakup.org; Sun, 11 Jul 2021 11:54:58 +0100
Reply-To: mike@raspberryvi.org
Subject: Re: Installing OS on rackmount server
To: speakup@linux-speakup.org
References: <20210711.104927.121.1@[192.168.1.100]>
From: Mike Ray <mike@raspberryvi.org>
Message-ID: <5ff69fe5-fb5b-5233-0c71-1165b9111eed@raspberryvi.org>
Date: Sun, 11 Jul 2021 11:54:56 +0100
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
In-Reply-To: <20210711.104927.121.1@[192.168.1.100]>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5



Passive USB hub?

Does the rack server have sound? If so you could install Debian from the
net install CD image written to a flash drive.

Or, even if the server does not have sound, you could insert a USB sound
dongle. Again, by using a USB hub to expand the number of USB ports.

You could install something else as well, such as Ubuntu. But if it is a
server only, there is no reason to install a desktop. The Debian net
install allows you to install only the cli, and no GUI.

I would not try installing Linux on another machine and then moving it
across, unless it's an identical machine. I assume lots of drivers will
be selected during the install which would not be appropriate for the
eventual host.




On 11/07/2021 11:49, Rob Hudson wrote:
> Tried this on another list, got no answer, so trying here. I've got a Cisco rackmount that needs an OS. It's only got 2 usb ports, so I can't hook up a keyboard, a braille display and a linux flash drive. I'm given to understand the CIMC interface is inaccessible, and I have no idea how to set up a PXE server. Is my only option for installing an OS to connect a hard drive to another computer, install linux on there and then put it in the server?
> 


-- 
Michael A. Ray
Analyst/Programmer
Witley, Surrey, South-east UK

"Perfection is achieved, not when there is nothing more to add, but when
there is nothing left to take away." -- A. de Saint-Exupery

