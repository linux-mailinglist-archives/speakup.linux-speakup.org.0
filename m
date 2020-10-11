Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 7F0FF28A4E0
	for <lists+speakup@lfdr.de>; Sun, 11 Oct 2020 02:47:04 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0C926380BB6; Sat, 10 Oct 2020 20:47:04 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=pcdesk.net header.i=@pcdesk.net header.a=rsa-sha256 header.s=20200519 header.b=c/zoszae;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9B534380B32;
	Sat, 10 Oct 2020 20:47:03 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C5EE8380B26; Sat, 10 Oct 2020 20:47:01 -0400 (EDT)
Received: from mail.pcdesk.net (mail.pcdesk.net [198.167.140.45])
 by befuddled.reisers.ca (Postfix) with UTF8SMTPS id E63C138096B
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 20:46:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pcdesk.net;
 s=20200519; t=1602377217;
 bh=p+ywjx0UMVtoDFnl4jxJh0Ll+6WXk0+r2AJ+Rq3/HOI=; l=2227;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=c/zoszaeii05OagjkhI7hiIzw//if+79+aw5xWbZ0MeyceTs1A4MhW07FS/NIxkYi
 CkVVjHNiEXam07+Cf5JJmAiLqVhwcLQSGrHPFc55I1M5rdkOqBBaD1xqs9WjJ+8Yfv
 eFdjqdRoaloKBmkCIN/N2Kagna2A6dqUIWQin75TufTFRh/EgI6OVuyJZlLTTunLXu
 cYRK7Gri6ft0xJK7qHC/U3RPU/hxEAe1BcOT/r0L9nYQJtlYED4sp/urxZ3T/BnDWQ
 O4Jb+f2t4p5LTRPPSHpheeuMURJh1RVoGgAs2KZg2+ydBcHZK6VSZDB3bWh3ZHN2V0
 nJFg0YI5K+Zcw==
Received: from [192.168.4.2] ([::ffff:64.180.234.143])
 (AUTH: LOGIN tspivey@pcdesk.net, TLS: TLSv1.3, 128bits, TLS_AES_128_GCM_SHA256)
 by mail.pcdesk.net with ESMTPSA
 id 000000000002A444.000000005F825601.000074F1; Sat, 10 Oct 2020 20:46:57 -0400
Subject: Re: Flushing issue
To: speakup@linux-speakup.org
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010194612.ut6md7liw4e47ky7@function>
 <alpine.DEB.2.23.453.2010101905240.36490@befuddled.reisers.ca>
 <20201010235355.uqqvyyjqxupfw5qw@function>
From: Tyler Spivey <tspivey@pcdesk.net>
Message-ID: <32185047-b54c-4841-9021-09f8fcb25eda@pcdesk.net>
Date: Sat, 10 Oct 2020 17:46:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <20201010235355.uqqvyyjqxupfw5qw@function>
Content-Language: en-US
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

It might be getting interrupted quickly, but at the wrong time.
IIRC, the core issue with espeak-ng (without speech dispatcher) is that 
there's no way to flush the audio without at least one buffer of audio 
playing.
Speech-dispatcher, NVDA, etc don't care because they all use their own 
audio library. But espeakup and emacspeak use espeak-ng's built-in audio 
library and the performance isn't very good.
While I haven't tried with espeakup, emacspeak was completely unusable 
on my Ubuntu 20.04 system with PulseAudio and whatever espeak-ng it had.

I'll try with espeakup and report back, since I assume this is the 
configuration most people would actually want to use. Yes you can get by 
on a mostly text-only system without pulse, but it has a lot of 
disadvantages.

If I interrupt speech, I want it interrupted as soon as I hit the key, 
not after whatever buffer plays because espeak can't tell the audio 
driver to stop. I think the old espeak did that.


On 10/10/2020 4:53 PM, Samuel Thibault wrote:
> Kirk Reiser, le sam. 10 oct. 2020 19:17:42 -0400, a ecrit:
>> In fact, if I just hold down the previous-lineor next-line keys it
>> still reads bits of the screen as it's going up or down. I tried to
>> type fast enough to not get any speech but couldn't do it. It almost
>> speaks immediately when I press the key or fast enough I can't tell
>> the difference.
> 
> Ok but isn't it getting interrupted by the next key press also very
> fast?
> 
> Making the rate to 9 and running less on a long text, then keeping the
> down key pressed, I do get gibberish speech indeed, since it basically
> tries to speak the first words of each line very fast before the next
> key press switches to the next line. But what else would be expected?
> 
>> the libespeak library as reported by ldd is:
>>
>> libespeak.so.1 => /usr/lib/x86_64-linux-gnu/libespeak.so.1 (0x00007f6298
> 
> That is not precise enough, that has never changed since the espeak
> times. The last version of espeak-ng I'm aware of is 1.50.
> 
> Samuel
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> 
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
