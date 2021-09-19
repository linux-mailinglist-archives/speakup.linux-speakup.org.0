Return-Path: <speakup+bounces-300-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BB5BB410BD6
	for <lists+speakup@lfdr.de>; Sun, 19 Sep 2021 16:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1632060575;
	bh=UuxY3QFOMKDf6o8uWnFFZT5ZHdQ7DZfmL9snuofrcOc=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=uMlm56AMOWcjMJ+rEo5ogR74Lg1Ysttm3uPMvQ0OdRPpPFo1TxKqhU2RzC2CUAO2R
	 NBsghFTHr81uQSI0OFoDzKhNTNVmRaJR0dmYkvDXPM5tyr/RFNnaHSHwEDsu6EuUxX
	 STZFYiVoy8ozGLg11Lb/jma22/F+w4i9sIUbKJSo=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7D9383811F3; Sun, 19 Sep 2021 10:09:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1632060574;
	bh=UuxY3QFOMKDf6o8uWnFFZT5ZHdQ7DZfmL9snuofrcOc=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=dgIwKulLFLVWLsGbmC3rALBNQCYU2PHndBwt/K0aiyNdZpK7ZqZtIxSOYGlmd3Vk+
	 ISHf5db49qovO32hHs2nJ9yRgP2LqgJ12z1PRS3zw6pTQX1lhc+Sh2NUnJCMMGpAvu
	 2bxEQ16djkvAleSut4lkjYEi0T/xR0pmPR9IBStI=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 791CC3811D3
	for <lists+speakup@lfdr.de>; Sun, 19 Sep 2021 10:09:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1632060572;
	bh=UuxY3QFOMKDf6o8uWnFFZT5ZHdQ7DZfmL9snuofrcOc=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=eJ/X2IBqqUUDqy8Uc8R5+v9CJwGMGu1sxyd+nuDp24rEsEsBJ718p9fK/s8gejqQF
	 5hsJMPIFxshn9GerM5kTnW6SnpSHPDWh2Dza77gzqpdIBeTgh4TbxtfW8dBY4jsfGX
	 J1AQjuXJpUsFGi6di72eFRrMKoqwMV4iY9m3qRJ0=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1F5A4380CF1; Sun, 19 Sep 2021 10:09:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1632060572;
	bh=UuxY3QFOMKDf6o8uWnFFZT5ZHdQ7DZfmL9snuofrcOc=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=eJ/X2IBqqUUDqy8Uc8R5+v9CJwGMGu1sxyd+nuDp24rEsEsBJ718p9fK/s8gejqQF
	 5hsJMPIFxshn9GerM5kTnW6SnpSHPDWh2Dza77gzqpdIBeTgh4TbxtfW8dBY4jsfGX
	 J1AQjuXJpUsFGi6di72eFRrMKoqwMV4iY9m3qRJ0=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F0794380996;
	Sun, 19 Sep 2021 10:09:31 -0400 (EDT)
Date: Sun, 19 Sep 2021 10:09:31 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Didier Spaier <didier@slint.fr>
cc: speakup@linux-speakup.org
Subject: Re: Broken espeakup on debian sid
In-Reply-To: <14c0aaef-dea9-7b7c-77e3-a1a4edba4c31@slint.fr>
Message-ID: <6b1e6e66-d12a-3d9e-a3e5-e8d0499177d9@reisers.ca>
References: <74614290-2cb8-c5a7-91e9-e639a673464a@reisers.ca> <YUXlLephhiYuV4UA@rednote.net> <50b02165-17e9-2561-ec8-6c35cba66944@reisers.ca> <YUYXLHoSvcMnUYzW@rednote.net> <dd651c4c-1178-8d83-125d-23ad3d2cef88@reisers.ca>
 <14c0aaef-dea9-7b7c-77e3-a1a4edba4c31@slint.fr>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1950063688-1632060571=:91470"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1950063688-1632060571=:91470
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

Hello Didier: Thank you for the rc script. That's an impressive shell
script. 'grin'

You are of course correct that there is no mention of systemd in the
espeakup source code. My comment was in reference to the systemd
service provided in the espeakup repository. I think I was just
surprised by it more than anything.

Still, as far as I can tell espeakup indebian sid appears to be broken
with some recent upgrades and it seems so are some of the other
distros. There is probably a good chance that how to handle the
stopping and starting of speakup has been dicussed on other mailing
lists I'm not a member of. I am only on two lists, this one and the
blvuug list which is fairly new. If there has been discussion on some
other accessibility lists I would appreciate it if someone would give
me/us a synopsis of those discussions and their
recommendations/decisions.

It also seems to me that we have two different situations wrt distros,
general communities like debian, ubuntu, arch etc and those that are
specially put together for the blind community like debuan, slint and
others I don't remember there names of anymore. I'd kind of like to
know what people think of those situations is it better to be separate
or part of the whole? The inclusion of pulseaudio for example in
packages could make a difference those theose who want it and those
who don't. This is of course an issue that doesn't just have merit to
the accessibility community of speakup. Huh, does anyone use
pcaudiolib other than espeak, just wondering.

The whole question of whether a package should run as root or a
regular user is another interesting question. I don't think that
espeakup would have broken if some group hadn't decided that one way
was better than an other for everybody. Once again personally I like
the idea of running as an individual user but I also want access to
devices from boot-up on and not loading accessibility until a user
logs in is a non-starter there imo.

Anyway I seem to be ranting, sorry about that.

Didier, does slint have a bootable image for the RaspBerry Pi 4B?
Espeakup on raspbian and debian is fucked in completely different ways
on that platform.

   Kirk


On Sun, 19 Sep 2021, Didier Spaier wrote:

> Hi Kirk,
>
> answering inline.
>
> Le 18/09/2021 à 21:26, Kirk Reiser a écrit :
>> Huh, are you running arch on that box as well? I am wondering if
>> speakup is even loaded. I noticed in the espeakup build systemd
>> services that it loads speakup_soft when the systemd service is
>> started.
>> 
>> I'm not crazy about that being the way to load speakup particularly
>> but I'm not that familiar with various distros way of doing things but
>> it appears the espeakup maintainers figure everyone is running
>> systemd.
>
> To be clear you mean the packagers of most distributions right? there is no
> mention of systemd in the source code, of course.
>
> As a counter example the daemon manager for Slint is attached.
>
>> That's one of the reasons I mentioned getting folks opinions in my
>> last message to you. For people that don't run systemd it will
>> certainly break things.
>
> Cheers,
> Didier
>
--8323329-1950063688-1632060571=:91470--

