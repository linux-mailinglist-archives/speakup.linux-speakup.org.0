Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EF22C10DFEE
	for <lists+speakup@lfdr.de>; Sun,  1 Dec 2019 01:29:10 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 105DE1C4732; Sat, 30 Nov 2019 19:29:09 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8D3A21C472B;
	Sat, 30 Nov 2019 19:28:14 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id E2CE81C4728; Sat, 30 Nov 2019 19:28:04 -0500 (EST)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 32C711C435A
 for <speakup@linux-speakup.org>; Sat, 30 Nov 2019 19:28:01 -0500 (EST)
Received: by server2.shellworld.net (Postfix, from userid 1005)
 id EB9E18C0452; Sun,  1 Dec 2019 00:27:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by server2.shellworld.net (Postfix) with ESMTP id E8EA48C0141
 for <speakup@linux-speakup.org>; Sat, 30 Nov 2019 19:27:54 -0500 (EST)
Date: Sat, 30 Nov 2019 19:27:54 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: improving the speach output of Links the chain?
In-Reply-To: <20191130050126.GA1054@qlf.suddenlink.net>
Message-ID: <Pine.LNX.4.64.1911301925070.2274@server2.shellworld.net>
References: <mailman.1.1575046802.6422.speakup@linux-speakup.org>
 <20191129184957.GB24896@panix.com>
 <Pine.LNX.4.64.1911291353180.6589@server2.shellworld.net>
 <20191130050126.GA1054@qlf.suddenlink.net>
MIME-Version: 1.0
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

hi tom,
I will search for that option.
I recall that there is a braille terminal option, as I am not a braille 
user I cannot speak to its function.  Still it may provide something 
comparative.  Also there is a block cursor  option too.
Frankly I need a list to ask questions as not everything is discussed in 
the users guide.
Thanks again,
Karen



On Fri, 29 Nov 2019, Tom Fowle wrote:

> Hi Karen,
> If you're using dos, you must be using a dos screen reader. I think you want
> an option like lynx's "show cursor" option which causes the browser to make
> the system "hardware cursor" follow the browser's cursor.  This makes it
> more likely your dos screen reader will be able to find the correct text to
> speak.
>
> Sorry I can't find a command line option in links that does that but
> perhaps my discription will guide you to it.
> It's likely the option is in an option screen as it is in lynx's Alt-o
>
> Hope this helps a bit
>
> Tom Fowle WA6IVG
>
>
> On Fri, Nov 29, 2019 at 01:57:07PM -0500, Karen Lewellen wrote:
>> As stated before though,  I get no clutter  on websites when using  well
>> anything I use.
>> I felt there was an option for links the chain, because when I use the
>> browser  on shellworld, information gets spoken, i. e.  the progress  of my
>> reaching  a website.
>> I will ask on the Dos Ain't Dead list instead, since my compile of Links the
>> chain is for DOS.
>> Karen
>>
>>
>> On Fri, 29 Nov 2019, Rudy Vener wrote:
>>
>>> Hi Karen,
>>>
>>> I am not aware of any arguments for links the chain to improve readability.
>>>
>>> With either links (the chain) , lynx (the cat), or w3m,
>>> I get the best results with a combination of browser keys to get me
>>> close to the target text, and speakup keys. to actually read it.
>>> With all the text clutter on most pages, your best bet is to become familiar with
>>> specific landmarks on the site you want to review so you
>>> can jump straight to your target using the text search functions.
>>> For example, I use slash day of week, /Friday to
>>> jump to the latest article links on realclearpolitics.com.
>>>
>>>
>>> On Fri, Nov 29, 2019 at 12:00:02PM -0500, speakup-request@linux-speakup.org wrote:
>>>> Subject: ot: slightly, improving how the Links browser speaks?
>>>>
>>>> Hi folks,
>>>> Hope to ask this clearly, as it may also apply to speakup, at least for
>>>> those   using  a command line setup.
>>>> My goal mirrors the command line options included in some tools that write
>>>> information to the screen in a way that speech happens largely
>>>> automatically.
>>>> For example, some programs call this writing to the BIOS, or used to do as
>>>> much.
>>>> My ssh telnet client for example has a -b option that performs the
>>>> function I desire.
>>>> I am seeking such a command line option for the links  as in the chain
>>>> browser.  I believe? it should exist because there is a command line
>>>> option that establishes numbered links.
>>>> hoping that my question is clear, can anyone tell me what command line
>>>> option improves  how content is spoken when using the links browser?
>>>> Thanks,
>>>> Karen
>>>>
>>>>
>>>
>>> --
>>> Rudy Vener
>>> Website: http://www.rudyvener.com
>>> _______________________________________________
>>> Speakup mailing list
>>> Speakup@linux-speakup.org
>>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>>>
>>>
>> _______________________________________________
>> Speakup mailing list
>> Speakup@linux-speakup.org
>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
