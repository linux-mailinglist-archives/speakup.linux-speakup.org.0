Return-Path: <speakup+bounces-373-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D46E64CB112
	for <lists+speakup@lfdr.de>; Wed,  2 Mar 2022 22:14:26 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 74215380D3C; Wed,  2 Mar 2022 16:14:26 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5E55B380A77
	for <lists+speakup@lfdr.de>; Wed,  2 Mar 2022 16:14:26 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 63DC7380D31; Wed,  2 Mar 2022 16:14:21 -0500 (EST)
Received: from sa-prd-fep-047.btinternet.com (mailomta21-sa.btinternet.com [213.120.69.27])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1687F380A77
	for <speakup@linux-speakup.org>; Wed,  2 Mar 2022 16:14:20 -0500 (EST)
Received: from sa-prd-rgout-003.btmx-prd.synchronoss.net ([10.2.38.6])
          by sa-prd-fep-047.btinternet.com with ESMTP
          id <20220302211419.HUHH16049.sa-prd-fep-047.btinternet.com@sa-prd-rgout-003.btmx-prd.synchronoss.net>
          for <speakup@linux-speakup.org>; Wed, 2 Mar 2022 21:14:19 +0000
Authentication-Results: btinternet.com;
    auth=pass (PLAIN) smtp.auth=mike.ray@btinternet.com;
    bimi=skipped
X-SNCR-Rigid: 6139429017C90913
X-Originating-IP: [109.148.113.141]
X-OWM-Source-IP: 109.148.113.141 (GB)
X-OWM-Env-Sender: mike.ray@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvvddruddtgedgudegudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedtudenucenucfjughrpefkffggfghruffvfhfhjggtgfesthejredttdefjeenucfhrhhomhepofhikhgvucftrgihuceomhhikhgvsehrrghsphgsvghrrhihvhhirdhorhhgqeenucggtffrrghtthgvrhhnpedtfedvuedtueevffeuteevvdejkedvteeuieejiedtffejhfehvdevfeethedtjeenucffohhmrghinhepghhithhhuhgsrdgtohhmnecukfhppedutdelrddugeekrdduudefrddugedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplgduledvrdduieekrddtrddvngdpihhnvghtpedutdelrddugeekrdduudefrddugedupdhmrghilhhfrhhomhepmhhikhgvsehrrghsphgsvghrrhihvhhirdhorhhgpdhnsggprhgtphhtthhopedupdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrgh
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from [192.168.0.2] (109.148.113.141) by sa-prd-rgout-003.btmx-prd.synchronoss.net (5.8.716.04) (authenticated as mike.ray@btinternet.com)
        id 6139429017C90913 for speakup@linux-speakup.org; Wed, 2 Mar 2022 21:14:19 +0000
Message-ID: <e476159d-553d-a922-5431-fc41c3c565da@raspberryvi.org>
Date: Wed, 2 Mar 2022 21:14:17 +0000
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Reply-To: mike@raspberryvi.org
Subject: Re: RPI gravelly speech and pcaudiolib results
Content-Language: en-US
To: speakup@linux-speakup.org
References: <202203022059.222Kx8ce000006@nfbcal.org>
From: Mike Ray <mike@raspberryvi.org>
In-Reply-To: <202203022059.222Kx8ce000006@nfbcal.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


If anybody is interested, back in about 2013 I wrote a library and a new 
version of espeakup to use it.

Look in:

https://github.com/cromarty/ttsprojects

Look in:

raspberry-pi/libpipcmrender

and:

raspberry-pi/piespeakup2

The library uses OpenMAX to directly render speech on the GPU, thus 
avoiding ALSA.

I did a podcast on Hacker Public Radio demonstrating how much better 
speakup was on the Pi using this library.

Mike



On 02/03/2022 20:59, Brian Buhrow wrote:
> 	hello.  Just out of curiosity, is there a way to get the audio system to flush its buffer
> before it finishes speaking the current buffer?  I know when I worked on getting eflite working
> on my systems many years ago, the speech engine was calling the drain ioctl rather than the
> flush ioctl when the stop speech command was issued to it.   Changing the flite engine so it
> could distinguish between  drain and flush fixed the problem and made things very responsive
> without having to tweak buffer sizes.
> 
> -Brian
> 
> 


-- 
Michael A. Ray
Analyst/Programmer
Witley, Surrey, South-east UK

He/him

"Perfection is achieved, not when there is nothing more to add, but when 
there is nothing left to take away." -- A. de Saint-Exupery

