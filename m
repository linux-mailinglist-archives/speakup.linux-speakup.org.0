Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 511452DE940
	for <lists+speakup@lfdr.de>; Fri, 18 Dec 2020 19:49:29 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AA6F9380BB3; Fri, 18 Dec 2020 13:49:28 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=icloud.com header.i=@icloud.com header.a=rsa-sha256 header.s=1a1hai header.b=bXeEJ1Y5;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A75BE380F2A;
	Fri, 18 Dec 2020 13:49:27 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 82019380BB3; Fri, 18 Dec 2020 13:49:26 -0500 (EST)
Received: from st43p00im-ztbu10073601.me.com (st43p00im-ztbu10073601.me.com
 [17.58.63.184])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 37F75380967
 for <speakup@linux-speakup.org>; Fri, 18 Dec 2020 13:49:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1608317364;
 bh=52ZxuiKdJ4Vy6Mm2Og49pi4ZjVa35fnutepOvgIIv8o=;
 h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To;
 b=bXeEJ1Y5nkiJTrS66gTbGD2UCKUTVF6mbnli/zfcM860FS6FFoOo8xv4I93l7iaar
 e0naT3ZR9adU3MFNzzj/+LJVt3fFVIw6WpPXwxfgdZBD8AMpq2Sd2fxJSxXVmrzqFX
 LR8AFF4CjagOLC9to7bOHmO9BcXTrJKae5yAjiy8SbcoAphZRm88ws5MM6zVZd7mkV
 SE0yKZCqpKs8JUILL245kepcxdVGYntlUrAOoDwe+sR/USXwpKdiXDKufuCfEiyNoJ
 OU1G3euAUzd8H87Hwbo7p3QCEiAayryH1mGNmGdpsaoxXXfceqPouH5zHy8oYBLdSI
 eUTbry6FepYdA==
Received: from [192.168.1.77] (cpe-69-23-57-146.natcky.res.rr.com
 [69.23.57.146])
 by st43p00im-ztbu10073601.me.com (Postfix) with ESMTPSA id 3182F820507
 for <speakup@linux-speakup.org>; Fri, 18 Dec 2020 18:49:24 +0000 (UTC)
From: Reece O'Bryan <reece.obryan@icloud.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 18 Dec 2020 13:49:21 -0500
Subject: Re: Mac terminal - Efficiently using terminal with screenreader
Message-Id: <A71C965F-4208-4199-B680-D114419920B7@icloud.com>
References: <alpine.OSX.2.23.453.2012181141350.7099@dans-mac-mini-2.home>
In-Reply-To: <alpine.OSX.2.23.453.2012181141350.7099@dans-mac-mini-2.home>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
X-Mailer: iPhone Mail (16C101)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-18_12:2020-12-18,
 2020-12-18 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2012180127
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

I definitely agree voiceover is superior with the selection of voices and the customization they are from my own limited experience so far. If I understand you correctly, you created essentially a keyboard shortcut that does exactly what I have been trying to do? How can you do this?


Thank you,

-Reece 

> On Dec 18, 2020, at 12:01 PM, dan d. <dandunfee@gmail.com> wrote:
> 
> 
> 
> I use voiceover in the mac terminal, even as I write this.  The quality and intelligibility and control of the voices is far superior to
> anything one can get with a cconsole screen reader, that is what keeps me from using linux.  alone.
> 
> There are a ffew prior selections required, the most imporant is to interact with the terminal; mac users will know what that means.  At that
> point one can use the standard voiceover cursor commands to read the screen systematically.  Some, like read screen from the top reqqquires
> two commands because one doesn't want the title line reade everytime.  One command goes to the top of the screen, the second goes down one
> line and begins reading.  I used a key commander to combine both steps and assigned it to a single key combination.
> 
>> On Thu, 17 Dec 2020, Zachary Kline wrote:
>> 
>> Hey,
>> 
>> A few thoughts about the terminal in Mac OS.
>> 
>> There is a screen reader called TDSR, which can be found here on Github <https://github.com/tspivey/tdsr>. It has better Terminal support than VoiceOver, though takes some getting used to.
>> 
>> As far as your mac and a hardware speech synthesizer, using it with a virtual machine is your only option. VoiceOver doesn???t support hardware synths at all. Fortunately, if you use it with a virtual machine, which I???ve done before, it should work fairly well.
>> 
>> That being said, TDSR is worth a look if you???re open to a lighter-weight solution.
>> Best,
>> Zack.
>>> On Dec 17, 2020, at 12:37 PM, Reece O'Bryan <reece.obryan@icloud.com> wrote:
>>> 
>>> Great! Seems to be the same process as connecting a network adapter to a virtual machine.
>>> That is a little discouraging I can???t compile on my MacBook. The native terminal doesn???t seem to be accessible. I can???t read the output line by line, only the entire output from top to bottom of the terminal. I could be missing something, I am still quite new to voiceover. Although I have talked with a couple of MacBook users that have used voiceover for quite a few years, they are not familiar with terminal, but still could not figure out how to navigate it easily either. Maybe the hardware synthesizer could help there. (?)
>>> 
>>> Thank you,
>>> 
>>> -Reece
>>> 
>>>>> On Dec 17, 2020, at 3:27 PM, Gregory Nowak <greg@gregn.net> wrote:
>>>>> 
>>>>> On Thu, Dec 17, 2020 at 03:00:52PM -0500, Reece O'Bryan wrote:
>>>>> Is it possible to compile speak up on my MacBook?
>>>> 
>>>> No.
>>>> 
>>>>> On Thu, Dec 17, 2020 at 03:12:54PM -0500, Reece O'Bryan wrote:
>>>>> Just to confirm, I???m going to need a serial adapter to plug in to my
>>>> USB hub connected to my MacBook, then connect a hardware synthesizer
>>>> to the cereal.
>>>> 
>>>> Correct.
>>>> 
>>>>> Doing it this way would I be able to use the hardware synthesizer inside of virtualBox running Debian and Speakup? I assume that it should in theory, but if not because of the virtualization, then plan B is doing the exact same thing while booting from something like Ubuntu on the USB.
>>>> 
>>>> Yes, that should work, though I haven't done that in a while. You have
>>>> to options here. First option is to define a serial port which would
>>>> appear in your guest as a physical serial port, and you would set that
>>>> up to interface to your USB serial port on the host. The second option
>>>> is to dirrectly pass the USB serial adapter through to the guest. The
>>>> virtualbox user's manual has more details.
>>>> 
>>>> Greg
>>>> 
>>>> 
>>>> --
>>>> web site: http://www.gregn.net
>>>> gpg public key: http://www.gregn.net/pubkey.asc
>>>> skype: gregn1
>>>> (authorization required, add me to your contacts list first)
>>>> If we haven't been in touch before, e-mail me before adding me to your contacts.
>>>> 
>>>> --
>>>> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
>>>> _______________________________________________
>>>> Speakup mailing list
>>>> Speakup@linux-speakup.org
>>>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>>> _______________________________________________
>>> Speakup mailing list
>>> Speakup@linux-speakup.org
>>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>> 
>> _______________________________________________
>> Speakup mailing list
>> Speakup@linux-speakup.org
>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>> 
> 
> -- 
> XB
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
