Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B63BC2F9875
	for <lists+speakup@lfdr.de>; Mon, 18 Jan 2021 05:08:39 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 705EE380F54; Sun, 17 Jan 2021 23:08:38 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C423A380F11;
	Sun, 17 Jan 2021 23:08:37 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id CB3ED380EE7; Sun, 17 Jan 2021 23:08:36 -0500 (EST)
Received: from smtp.ukservers.net (smtp.ukservers.net [85.233.160.48])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 77E75380BC7
 for <speakup@linux-speakup.org>; Sun, 17 Jan 2021 23:08:36 -0500 (EST)
Received: from [2.222.254.153] (helo=[192.168.1.12])
 by smtp.ukservers.net with esmtpa (Exim)
 (envelope-from <gena@gena-j.me.uk>) id 1l1LqB-0005Wp-Dc
 for speakup@linux-speakup.org; Mon, 18 Jan 2021 04:08:32 +0000
From: Georgina Joyce <gena@gena-j.me.uk>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Subject: Re: Raspberry question
Date: Mon, 18 Jan 2021 04:08:30 +0000
References: <007401d6ed1c$bbc0cbd0$33426370$@blinksoft.com>
 <20210118034344.GA14878@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
In-Reply-To: <20210118034344.GA14878@gregn.net>
Message-Id: <04BDEC88-1D08-4966-BDC7-DF6916F992C6@gena-j.me.uk>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
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

Hello,

I am in this situation too. It has just occurred to me. I wonder if it is possible to dual boot  a pi. Thus have a GUI boot option and a cli option. It would be easy to mount any desired  file systems from the active system.

Yes, see: 
https://raspberrytips.com/raspberry-pi-dual-boot/ <https://raspberrytips.com/raspberry-pi-dual-boot/>

Regards,
> On 18 Jan 2021, at 03:43, Gregory Nowak <greg@gregn.net> wrote:
> 
> Sounds like you're getting bit by pulseaudio. You have three options:
> 
> 1. Hook up a USB sound card, and set espeakup to use that instead.
> 
> 2. Replace espeakup with speechd-up. Note that speechd-up hasn't been
>   developed in something like the last 10 years, and doesn't let you
>   control as many things as espeakup does.
> 
> 3. Dump pulseaudio, and setup speech-dispatcher to output using libao
>   in speechd.conf. I think the raspbian desktop has a core dependency
>   on pulseaudio. If I'm right, then this may not be an option.
> 
> Greg
> 
> 
> On Sun, Jan 17, 2021 at 05:04:31PM -0500, kperry@blinksoft.com wrote:
>> 
>> 
>> Well, it has been a long time since I have been on this list.   Over the
>> years I have been using Orca, but I have been missing speakup.  I have used
>> my raspberry PI's up to this time on ssh.  I was hoping that the new release
>> in December of the rasbion which has access built in would just work out of
>> the box.   I am able to get Orca going and Emacspeak, and even espeak at the
>> command line.  
>> 
>> 
>> 
>> The problem is speakup seems to be working but does not work.    When I am
>> at the tty terminal using the keyboard and with Xwin shut down.   I can make
>> espeak say thins but I am not able to get speakup to work.  When I do PS I
>> can see that both speak up and espeakup -V are running.  I have tried doing
>> 
>> 
>> 
>> Sudo Systemctl enable espeakup.service
>> 
>> Sudo Systemctl start espeakup.service
>> 
>> 
>> 
>> I have even tried without the .service on the previous lines.  So far
>> nothing I have tried has got speakup talking. 
>> 
>> 
>> 
>> Does anyone know how to get speakup to talk on the new Rasbion build?  I
>> would much rather be using speakup than Ora or emacspeak.
>> 
>> 
>> 
>> I have asked this on the Raspberry PI list already and no one has answered.
>> 
>> Ken
>> 
>> 
>> 
>> _______________________________________________
>> Speakup mailing list
>> Speakup@linux-speakup.org
>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>> 
> 
> -- 
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> skype: gregn1
> (authorization required, add me to your contacts list first)
> If we haven't been in touch before, e-mail me before adding me to your contacts.
> 
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

Georgina


Call: M0EBP
DMR ID: 2346259
Allstar: 52178
Locater: IO83PS


_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
