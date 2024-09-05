Return-Path: <speakup+bounces-1214-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A08FB96CBE8
	for <lists+speakup@lfdr.de>; Thu,  5 Sep 2024 02:45:08 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=b7YuZCCN;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0A9463824C1; Wed, 04 Sep 2024 20:45:05 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DD63A38205C
	for <lists+speakup@lfdr.de>; Wed, 04 Sep 2024 20:45:04 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 10474382063; Wed, 04 Sep 2024 20:44:58 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 87B72380E1B
	for <speakup@linux-speakup.org>; Wed, 04 Sep 2024 20:44:57 -0400 (EDT)
Received: from [192.168.196.11] (unknown [176.173.208.123])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 42159634F7
	for <speakup@linux-speakup.org>; Thu,  5 Sep 2024 02:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1725496851; bh=U3HOj8Ky4a8WT/JLpBEFEFanY0kh9Li0bP858+EapBY=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=b7YuZCCN6M+yj8NaVmvQWRyNLYYI2lrAN5kbj0yED6/j5ttl8TclkcXuIF2gjfbiD
	 TD6/SICit2ySKy647lMOz3m4DVQ/VFXKlzhqhvsKp8wDk7kkz5efreIluo9PRW3ln2
	 Q3a5SLJPijQ/sQ1a5jUOXN2WCQO03Fvt6D2YdUAc90zae2vEU16e8U6L9rlaLKe91z
	 bmI+K8t5eFs2pOzY06LBpLIAL8Y/CAY7TGXLcNb5nbWvwI0mkWJmP/WoXJDIqKrQ1D
	 zmSjx5fTMEkeiS1uEgxQjBjp2KPf9c59VUXyj7k3kd5cWEbgyl5i5G8UMagrw+3Tjk
	 BE6xryUBeHQtQ==
Message-ID: <08304d14-f21a-4c95-abda-7a70c5b5ee0b@slint.fr>
Date: Thu, 5 Sep 2024 02:44:33 +0200
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was
 howto run speakup/orca concurrently in ubuntu)
To: speakup@linux-speakup.org
References: <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za>
 <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu>
 <E1slBYr-0003js-0w@wb5agz> <cb2e836c-c6ce-aa54-a752-3a0d56126c7a@reisers.ca>
 <8aaba50a-94aa-4171-afa0-71530ea1290c@jasonjgw.net>
 <E1slFDa-0001Hb-0R@wb5agz> <Zta33F80vCUd8tBU@titan>
 <E1slZoq-0004cu-22@wb5agz> <ZtduSMS0hyMMjZQZ@titan>
 <E1slxjW-0001nZ-2d@wb5agz> <Ztjd01MJ4P4u7Zuz@titan>
Content-Language: en-US
From: Didier Spaier <didier@slint.fr>
Autocrypt: addr=didier@slint.fr; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwHkEEwEKACMCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCYZVPGAAKCRDVAgLvYMA+6pOxCADB2pKmm/LgncWREzob
 Z6M+RsvgzvGS/48ik/E/TH2KyPO/hn+Fzbj4MmMwQdqz5YPfdBmkcM7WyDzkPaukzfS8QUvl
 VKyWQ92pqpbI/JUeShI+DLMKV7LZxiPinMBuKmpyLdpxuhk08g2+6F8X6ztbl8mbXQy5jcIZ
 zKQ442N0D4wnn8VXM0tb0uonmqc6ly7dcmkQ/GI7Q0tF/hkn4n3g1Lh6+K1jBqEIC9vn/c6X
 yf67ec+CwbE0GtgVM1FR1R0J1y/6vkYWr7gZHhnzgwKr6k1wzCGkVUyCSpFwB2oeANT9c0qP
 rgn4YjoYQIHS3vMWd630vRyOfqwetWXmVjPxzsBNBFY6fG8BCACqDQKHSw0ElDkwPPpNguL0
 ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliwWyj+9/ro
 JlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+vrsNu7T9r
 o3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19Itys/CbN
 vxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2OP3refmS
 RxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwF8EGAEKAAkCGwwFAmGVT44ACgkQ1QIC
 72DAPuqjhwgApl0pdNIrbU+8Hn0mr3CTEXxPaTbAU2bYFPDiBaEvXsBGoz8xJ6EZQnywbC7o
 l5wFtVT08LKDewLHaL78zS+Q8rv5sNmWwzMAaipFtZg67e/rU3V5tw4E12nUghyMzQpngUur
 lZPMFlB9IZN9681cXuv2sZzAZlR2+3PsSAftpPQxReoSC7hj3dfiCiAis19G3A184HClA5MB
 I5heGinSz7R/AXhkiej8HZZzz9ZPkS7aeL8HsZKqCwZvViutbGmpm+V70JnbRAHLFjYb+Se3
 rdUWWAXcca4Ry8HCLTo5iK9xCTQh5gEuJ7ROdOXeY4SvMiqWjYhlrsR0qhTv9q/gfg==
In-Reply-To: <Ztjd01MJ4P4u7Zuz@titan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Caveat: rant ahead.

This is a long standing issue.

It has been brought already in this very same list back in November 2018:
https://linux-speakup.org/pipermail/speakup/2018-November/061514.html

To which I responded:
https://linux-speakup.org/pipermail/speakup/2018-November/061514.html

Then  Samuel:
https://linux-speakup.org/pipermail/speakup/2018-November/061516.html

Let me quote his answer's conclusion:

Now, as you mentioned, Slint does not have the issue, because it uses
the dmix plugin. Now, to repeat myself:

- it would be useful to document how to configure dmix on the wiki
https://wiki.debian.org/accessibility

- enabling dmix by default in Debian could be an option, it "just" needs
to be discussed with the alsa maintainers.  If nobody takes the time to
do this, we'll stay with the issue.

<end of quote>

Looks like the situation hasn't changed since then, although this issue has been
reported long ago to Debian:

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=897657

End of rant.

Be well,
Didier

Le 05/09/2024 à 00:23, Jookia a écrit :
> Hi there,
> 
> Did the non-GUI consoles work when you followed my instructions?
> If so then it's probably that you needed to blindly login as espeakup was
> running as your user but you didn't have Orca running as your user, it
> was instead running as the system user.
> 
> The short answer is that you're not going to be able to have speakup and
> Orca read login prompts. You have to pick one and blindly type in the
> other. There's no easy way to fix this on a modern Linux desktop.
> 
> Jookia.
> 
> On Wed, Sep 04, 2024 at 04:40:10PM -0500, Martin McCormick wrote:
>> 	So, I followed your very linear straight-forward
>> instructions, Steps 1, 2, 3 and 4 and ended up with the only
>> difference being that I could not log in to orca.  Normally, I
>> 	faintly heare the prompt to press the pushbutton to log
>> in.  I do and the same faint speakup voice prompts for password.
>> Everytime I press a key, I hear the faint confirmation of "black
>> circle" and then it gets much louder and the pitch changes,
>> saying "Screen reader on" when I sent the correct password.
>>
>> 	I see no evidence of problems with gnome and want to keep
>> it that way.
>>
>> 	After following the instructions and rebooting, the
>> commands in step 4 of
>>
>> systemctl --user enable espeakup
>> loginctl enable-linger
>> sudo gpasswd -a $USER audio
>>
>>
>> seemed to be what kept me from hearing that faint login prompt
>> any longer.  As soon as I ran
>>
>> systemctl --user enable espeakup
>> loginctl disable-linger
>>
>>
>> the faint login messages were restored.  I also, for now, removed
>> the lines added in Steps 2 and 3 in case they also had some
>> effect.  I am also already a member of group audio so that part
>> was not an issue.
>>
>> 	The 3 non-GUI consoles never talked but I knew I had
>> opened them by logging in and running a script I wrote called
>> siggen which tells sox to send a steady sine-wave tone or
>> generate pink noise which is similar to the sound you hear when
>> an FM radio is between channels or one is running a noise
>> generator which is handy in audio testing situations.
>>
>> 	Basically, orca is running espeakup and the distribution
>> doesn't let you install speakup along with that.  Speakup is not
>> there.
>>
> 

