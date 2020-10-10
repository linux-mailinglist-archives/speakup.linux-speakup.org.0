Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 61E6A28A45E
	for <lists+speakup@lfdr.de>; Sun, 11 Oct 2020 01:17:46 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B7344380B41; Sat, 10 Oct 2020 19:17:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1602371865;
	bh=2A/2pm0NLvLkxhaf0UkGJpmYLoB3yppuK2gEyfRp4xo=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=SjH+TFKhBU/I8MOekUlW61ceAfiX/lv8jkO5SOpAgeHGzOrE9253ZDAOQBCxI5289
	 Vwth7XWhS+OsXXxHcmVDcSAs7bB1rXsM/mR40o5EzbYjw16Kyf0OOhs5N51u/DEvhP
	 NgzPlgGaBMHRATQby7OQp3tl6T0cS4WzbBaHA4fQ=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6BC62380B40;
	Sat, 10 Oct 2020 19:17:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1602371863;
	bh=2A/2pm0NLvLkxhaf0UkGJpmYLoB3yppuK2gEyfRp4xo=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=HzyT7zDLjQtbKyVYlwXnUdc+MbXBrY10A0wJ89i/DXeUb1fttfZEM2OPmp7Y37hIA
	 8+B6saiyzeWI9kWhvUL6mc+Jan1XtgFX6bNGmgyaaW7GjtUgl2mBo2xOkS2EUuNdar
	 gz2ZPyl09OR2U9C3TLY8G0zKEd32rIH1qXUQSvpU=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 751F0380B26; Sat, 10 Oct 2020 19:17:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1602371862;
 bh=4BwuBNc/+dOkK0JPtj3aFpQrLJu8fevs7QqmmqN61x4=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=QVanSRxa7WdgYXtBk7saX2huOZX9ng/wfbJudnHQ6c8bTlPEjOf4K4lS/v1Cq9i6b
 IqYM9d6rNmdy0l8UWTjeBYdM6JSgi+zmwLIlD6UZyqgLurSyk5LJbHdSUEnOuhzqyO
 /4BnAFsVRPf64+XIynkzaVc1CAC8hbeOaleq+hUw=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 624E638096B
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 19:17:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1602371862;
 bh=4BwuBNc/+dOkK0JPtj3aFpQrLJu8fevs7QqmmqN61x4=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=QVanSRxa7WdgYXtBk7saX2huOZX9ng/wfbJudnHQ6c8bTlPEjOf4K4lS/v1Cq9i6b
 IqYM9d6rNmdy0l8UWTjeBYdM6JSgi+zmwLIlD6UZyqgLurSyk5LJbHdSUEnOuhzqyO
 /4BnAFsVRPf64+XIynkzaVc1CAC8hbeOaleq+hUw=
Date: Sat, 10 Oct 2020 19:17:42 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Flushing issue (was: So, where'd the volume controls get to?)
In-Reply-To: <20201010194612.ut6md7liw4e47ky7@function>
Message-ID: <alpine.DEB.2.23.453.2010101905240.36490@befuddled.reisers.ca>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010194612.ut6md7liw4e47ky7@function>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
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

Hahahahah, now that's fast! Unfortunately I can't type that fast. In
fact, if I just hold down the previous-lineor next-line keys it still
reads bits of the screen as it's going up or down. I tried to type
fast enough to not get any speech but couldn't do it. It almost speaks
immediately when I press the key or fast enough I can't tell the
difference.

The version of espeakup I use is 0.8 from 2008 and the libespeak
library as reported by ldd is:

libespeak.so.1 => /usr/lib/x86_64-linux-gnu/libespeak.so.1 (0x00007f6298

I'd be happy to use a newer version if I could find one that works
well. I give the new versions a chance with every new version but
nothing yet. If someone else can point me to a version that works I'd
be happy to try that also. I haven't heard complaints from anyone else
though so maybe it's me being silly. It's hard to believe that I
review faster than anyone else so maybe I am silly.




On Sat, 10 Oct 2020, Samuel Thibault wrote:

> Kirk Reiser, le sam. 10 oct. 2020 14:56:38 -0400, a ecrit:
>> The voice doesn't flush quickly enough to be able to move up and down
>> with either the review keys or arrow keys so it generates a jumbling
>> of voices which is completely unusable when moving quickly.
>
> Ok.  Which versions of espeakup and espeak-ng do you use exactly?  I
> do remember fixing some things in that regard, and it was then working
> fine.  When I'm testing with the versions of Debian 10 for instance,
> when I move around extremely quickly, the espeak-ng speech synthesis
> doesn't even have the time to speak anything (since I interrupt it
> extremely quickly)
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
