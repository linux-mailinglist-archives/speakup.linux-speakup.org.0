Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 347FF155FC7
	for <lists+speakup@lfdr.de>; Fri,  7 Feb 2020 21:40:40 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BF1471C2CD1; Fri,  7 Feb 2020 15:40:38 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 18C041C2CDB;
	Fri,  7 Feb 2020 15:40:07 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 788B91C2C6C; Fri,  7 Feb 2020 15:40:04 -0500 (EST)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 207061C0148
 for <speakup@linux-speakup.org>; Fri,  7 Feb 2020 15:40:01 -0500 (EST)
Received: by server2.shellworld.net (Postfix, from userid 1005)
 id 7C78A8C0424; Fri,  7 Feb 2020 20:39:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by server2.shellworld.net (Postfix) with ESMTP id 758278C0308;
 Fri,  7 Feb 2020 15:39:29 -0500 (EST)
Date: Fri, 7 Feb 2020 15:39:29 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: jheim@math.wisc.edu, 
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: driving a serial synthesizer through speech-dispatcher
In-Reply-To: <fb224ce0-b5ca-516b-5ef9-7ce48c662812@math.wisc.edu>
Message-ID: <Pine.LNX.4.64.2002071537440.28670@server2.shellworld.net>
References: <20200207000127.GA6319@gregn.net>
 <m3v9ojhwb3.wl-covici@ccs.covici.com>
 <20200207042943.GA12133@gregn.net> <m3tv42j2s1.wl-covici@ccs.covici.com>
 <fb224ce0-b5ca-516b-5ef9-7ce48c662812@math.wisc.edu>
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
Cc: covici@ccs.covici.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

My understanding from the first post  is that the goal is using serial 
synthesizers  in more graphical settings comparative to how orca functions.
Would not speekup present limitations for such a goal?



On Fri, 7 Feb 2020, John G Heim wrote:

> There would already be code in speakup to talk to different hardware synths. 
> I don't know how portable that code is. But you could probably look at the 
> speakup code to see how to set the speech rate for a liteTalk for example. If 
> that code is portable, a large part of the work would already be done.
> On 2/7/20 1:05 AM, John Covici wrote:
>>  You can treat the serial port like a file (this is linux after all),
>>  just do open in the i nit section and write characters to the file.
>>  The name will be something like /dev/ttyS0 or similar.  Note the
>>  capital S.  As an example look at the espeak  driver, so you get all
>>  the things in the right places.
>>
>>
>>  On Thu, 06 Feb 2020 23:29:43 -0500,
>>  Gregory Nowak wrote:
>> > 
>> >  Right, this would require a speech-dispatcher module file. The thing
>> >  I'm not sure about is how to do the serial port I/O from
>> >  speech-dispatcher. The speech-dispatcher modules are .conf files, so
>> >  maybe the answer would be a separate program to expose the serial port
>> >  to speech-dispatcher modules, or a modification to the actual
>> >  speech-dispatcher code to do that.
>> > 
>> >  What I like about the synth_direct approach is that speakup already
>> >  does the heavy lifting, and speakup and gnome-speech would use
>> >  speakup's interface to talk to the synth, which would mean they both
>> >  wouldn't be setting parameters and causing a mess. The disadvantage is
>> >  it requires speakup to be loaded, which I already use anyway, so it
>> >  doesn't bother me personally.
>> > 
>> >  Greg
>> > 
>> > 
>> >  On Thu, Feb 06, 2020 at 11:10:24PM -0500, John Covici wrote:
>> > >  You might need to write a driver in speech-dispatcher, that would do
>> > >  exactly what you want.  I have been thinking about this for years, but
>> > >  never had the time to do it.
>> > 
>> > 
>> >  -- 
>> >  web site: http://www.gregn.net
>> >  gpg public key: http://www.gregn.net/pubkey.asc
>> >  skype: gregn1
>> >  (authorization required, add me to your contacts list first)
>> >  If we haven't been in touch before, e-mail me before adding me to your 
>> >  contacts.
>> > 
>> >  --
>> >  Free domains: http://www.eu.org/ or mail dns-manager@EU.org
>> >  _______________________________________________
>> >  Speakup mailing list
>> >  Speakup@linux-speakup.org
>> >  http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>> >
>> 
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
