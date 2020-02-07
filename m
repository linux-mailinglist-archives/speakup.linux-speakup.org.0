Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1765E155F0C
	for <lists+speakup@lfdr.de>; Fri,  7 Feb 2020 21:10:08 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7B7FC1C2C7A; Fri,  7 Feb 2020 15:10:07 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E03741C2C75;
	Fri,  7 Feb 2020 15:09:37 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 45E441C2C6C; Fri,  7 Feb 2020 15:09:28 -0500 (EST)
Received: from wmauth3.doit.wisc.edu (wmauth3.doit.wisc.edu [144.92.197.226])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 3899E1C0148
 for <speakup@linux-speakup.org>; Fri,  7 Feb 2020 15:09:24 -0500 (EST)
Received: from [144.92.166.252] (vv507j.math.wisc.edu [144.92.166.252])
 by smtpauth3.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.0.2.4.20190812 64bit (built Aug 12
 2019)) with ESMTPSA id <0Q5C00HRALBKKZ00@smtpauth3.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Fri, 07 Feb 2020 14:09:21 -0600 (CST)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[144.92.166.252]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-3, Version=6.4.7.2805085,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2020.2.7.200317,
 AntiVirus-Engine: 5.70.0, AntiVirus-Data: 2020.1.16.5700002,
 SenderIP=[144.92.166.252]
Subject: Re: driving a serial synthesizer through speech-dispatcher
To: covici@ccs.covici.com, "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
References: <20200207000127.GA6319@gregn.net>
 <m3v9ojhwb3.wl-covici@ccs.covici.com> <20200207042943.GA12133@gregn.net>
 <m3tv42j2s1.wl-covici@ccs.covici.com>
From: John G Heim <jheim@math.wisc.edu>
Message-id: <fb224ce0-b5ca-516b-5ef9-7ce48c662812@math.wisc.edu>
Date: Fri, 07 Feb 2020 14:09:20 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-version: 1.0
In-reply-to: <m3tv42j2s1.wl-covici@ccs.covici.com>
Content-language: en-US
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
Reply-To: jheim@math.wisc.edu, "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

There would already be code in speakup to talk to different hardware 
synths. I don't know how portable that code is. But you could probably 
look at the speakup code to see how to set the speech rate for a 
liteTalk for example. If that code is portable, a large part of the work 
would already be done.
On 2/7/20 1:05 AM, John Covici wrote:
> You can treat the serial port like a file (this is linux after all),
> just do open in the i nit section and write characters to the file.
> The name will be something like /dev/ttyS0 or similar.  Note the
> capital S.  As an example look at the espeak  driver, so you get all
> the things in the right places.
> 
> 
> On Thu, 06 Feb 2020 23:29:43 -0500,
> Gregory Nowak wrote:
>>
>> Right, this would require a speech-dispatcher module file. The thing
>> I'm not sure about is how to do the serial port I/O from
>> speech-dispatcher. The speech-dispatcher modules are .conf files, so
>> maybe the answer would be a separate program to expose the serial port
>> to speech-dispatcher modules, or a modification to the actual
>> speech-dispatcher code to do that.
>>
>> What I like about the synth_direct approach is that speakup already
>> does the heavy lifting, and speakup and gnome-speech would use
>> speakup's interface to talk to the synth, which would mean they both
>> wouldn't be setting parameters and causing a mess. The disadvantage is
>> it requires speakup to be loaded, which I already use anyway, so it
>> doesn't bother me personally.
>>
>> Greg
>>
>>
>> On Thu, Feb 06, 2020 at 11:10:24PM -0500, John Covici wrote:
>>> You might need to write a driver in speech-dispatcher, that would do
>>> exactly what you want.  I have been thinking about this for years, but
>>> never had the time to do it.
>>
>>
>> -- 
>> web site: http://www.gregn.net
>> gpg public key: http://www.gregn.net/pubkey.asc
>> skype: gregn1
>> (authorization required, add me to your contacts list first)
>> If we haven't been in touch before, e-mail me before adding me to your contacts.
>>
>> --
>> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
>> _______________________________________________
>> Speakup mailing list
>> Speakup@linux-speakup.org
>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>>
> 
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
