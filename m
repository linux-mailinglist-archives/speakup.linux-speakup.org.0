Return-Path: <speakup+bounces-443-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DD0C953BA81
	for <lists+speakup@lfdr.de>; Thu,  2 Jun 2022 16:12:05 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 157A8380DFD; Thu,  2 Jun 2022 10:12:05 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F1F3E3809E3
	for <lists+speakup@lfdr.de>; Thu,  2 Jun 2022 10:12:04 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D5CAB380A6A; Thu,  2 Jun 2022 10:11:59 -0400 (EDT)
Received: from sa-prd-fep-048.btinternet.com (mailomta21-sa.btinternet.com [213.120.69.27])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 894D03809DF
	for <speakup@linux-speakup.org>; Thu,  2 Jun 2022 10:11:59 -0400 (EDT)
Received: from sa-prd-rgout-005.btmx-prd.synchronoss.net ([10.2.38.8])
          by sa-prd-fep-048.btinternet.com with ESMTP
          id <20220602141157.IZNU3226.sa-prd-fep-048.btinternet.com@sa-prd-rgout-005.btmx-prd.synchronoss.net>
          for <speakup@linux-speakup.org>; Thu, 2 Jun 2022 15:11:57 +0100
Authentication-Results: btinternet.com;
    auth=pass (PLAIN) smtp.auth=mike.ray@btinternet.com;
    bimi=skipped
X-SNCR-Rigid: 6139452E27493422
X-Originating-IP: [86.146.186.177]
X-OWM-Source-IP: 86.146.186.177 (GB)
X-OWM-Env-Sender: mike.ray@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvfedrledvgdejudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedtudenucenucfjughrpefkffggfghruffvfhfhjggtgfesthejredttdefjeenucfhrhhomhepofhikhgvucftrgihuceomhhikhgvsehrrghsphgsvghrrhihvhhirdhorhhgqeenucggtffrrghtthgvrhhnpeelfedtteehvdfhueejjeeiffeujeelffejtdfhgfdvheehgeduhfdugefhffffgfenucfkphepkeeirddugeeirddukeeirddujeejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplgduledvrdduieekrddtrddvngdpihhnvghtpeekiedrudegiedrudekiedrudejjedpmhgrihhlfhhrohhmpehmihhkvgesrhgrshhpsggvrhhrhihvihdrohhrghdpnhgspghrtghpthhtohepuddprhgtphhtthhopehsphgvrghkuhhpsehlihhnuhigqdhsphgvrghkuhhprdhorhhg
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from [192.168.0.2] (86.146.186.177) by sa-prd-rgout-005.btmx-prd.synchronoss.net (5.8.716.04) (authenticated as mike.ray@btinternet.com)
        id 6139452E27493422 for speakup@linux-speakup.org; Thu, 2 Jun 2022 15:11:57 +0100
Message-ID: <488c5c53-7edd-d0ad-2825-5e04adda66b8@raspberryvi.org>
Date: Thu, 2 Jun 2022 15:11:57 +0100
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
 Thunderbird/91.9.1
Reply-To: mike@raspberryvi.org
Subject: Re: copying a message in a terminal
Content-Language: en-US
To: speakup@linux-speakup.org
References: <003401d87620$354b0690$84ffa8c0@WIN40RPKAT965G>
 <YpgviocSSUg49iUb@gregn.net>
From: Mike Ray <mike@raspberryvi.org>
In-Reply-To: <YpgviocSSUg49iUb@gregn.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


Guys

With the greatest respect, it is of little point saying something like 
'script' without going into details on how to use it.

Glen, start it like this:

script -f

Then do the business, and afterwards type:

exit

And it will tell you everything was saved in a file called 'typescript'.

Unfortunately, this might also write console colouring codes to the 
output, so it might be abit garbled.

Press F1 in speakup to get the help screen, and I think it is spacebar 
to get rid of it.

In the speakup help scereen you can read about the region copy and paste 
keys.

Or, if you connect to the console with TeraTerm from Windows, you can 
just copy and past to the terminal normally as you would in WWindows.

To paste into a document you are editing in TeraTerm, press alt+E and 
paste. If you copied more than one line from the source application 
TeraTerm will ask you to confirm.

If you are copying from TeraTerm, you can either select the entire 
screen from the menus and then copy it, and paste it into an email, or 
you can use the virtual cursor keys to copy a region.

Mike


On 02/06/2022 04:33, Gregory Nowak wrote:
> In terminal I assume means in the GUI. Orca has key strokes for copy
> and append contents under flat review to clipboard, but they're not
> assigned by default. Since there's no way to select a block of text in
> flat review as far as I know, you would have to issue copy the first
> time, and then issue append every time you move the flat review
> cursor. You can then paste the whole thing into a text editor. If
> there's a better way to do this, I'm sure someone will jump in.
> 
> The problem with using script is that also captures whatever
> characters are sent to draw the screen, so doesn't always provide
> something that can be easily copied and pasted.
> 
> Greg
> 
> 
> On Wed, Jun 01, 2022 at 08:29:29PM -0500, K0LNY_Glenn wrote:
>> Hi,
>> Someone is trying to figure out what is wrong with my Chirp program, and he
>> wrote asking to issue a command and and an error message should show up in
>> the terminal.
>> Using Ubuntu.
>> I know how to put  a greater and a file.txt after some commands, and it
>> prints to that file, but in this case, he is assuming I know how to copy
>> text above the cursor in a terminal, and I  have never done that, I didn't
>> think that was possible.
>> Thanks for any instructions for doing this.
>>
>> Glenn
>>
>>
> 


-- 
Michael A. Ray
Software engineer
Witley, Surrey, South-east UK

He/him/cis

"Perfection is achieved, not when there is nothing more to add, but when 
there is nothing left to take away." -- A. de Saint-Exupery



