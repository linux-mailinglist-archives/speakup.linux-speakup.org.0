Return-Path: <speakup+bounces-1569-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABpUFJgtvGnquAIAu9opvQ
	(envelope-from <speakup+bounces-1569-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 19 Mar 2026 18:08:40 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 751B62CF7E2
	for <lists+speakup@lfdr.de>; Thu, 19 Mar 2026 18:08:38 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=carmickle.com header.i=@carmickle.com header.a=rsa-sha256 header.s=2021081500 header.b=RAK9qfYn;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2E2693818DE; Thu, 19 Mar 2026 13:08:37 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 09C523817BB
	for <lists+speakup@lfdr.de>; Thu, 19 Mar 2026 13:08:37 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0169D3817BD; Thu, 19 Mar 2026 13:08:31 -0400 (EDT)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com [173.255.224.66])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 77C273817B3
	for <speakup@linux-speakup.org>; Thu, 19 Mar 2026 13:08:30 -0400 (EDT)
Received: from smtpclient.apple (unknown [IPv6:2600:4040:5db2:808:e875:e922:64cc:40b8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id E5603C5E1594;
	Thu, 19 Mar 2026 17:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=carmickle.com;
	s=2021081500; t=1773940102;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4NOZbDRnMFkf40ojhQ7T9tdTYw/QNJmRVpZkNzSpe5c=;
	b=RAK9qfYnugQhlsqXEaTERGhI9h4b6XrMquP6wKogCDSGc4zVKBiqXn58o3TW9UIm7dJPeo
	7fZfFA3X1n8AsNQokP3j14/nWQwzmygyOwhB1WpNlEDWYKBN+JK44WHjG+q1syqnIPrZ8f
	Wz2AJwJqipRcva6eJalyDWk/v2zTXNw=
Content-Type: text/plain;
	charset=us-ascii
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6.1.21\))
Subject: Re: RPItalk hardware speech synth project and now off topic ramblings
From: Frank Carmickle <frank@carmickle.com>
In-Reply-To: <3f6ad7ad-7801-47d5-ac88-42b07de3dccd@math.wisc.edu>
Date: Thu, 19 Mar 2026 13:08:17 -0400
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <7B9BD87C-DAEC-4704-BC9A-E2BC3166B23F@carmickle.com>
References: <f58445bf-9bef-466a-8c0d-2707001c9c84@math.wisc.edu>
 <65660797-d85c-488b-ae64-fdba06f3e5d4@raspberryvi.org>
 <36174ec4-fd0a-413e-96c7-13d6a5db1ffd@math.wisc.edu>
 <132CCCEE-C79E-4A3D-A040-A10C942CE1CF@carmickle.com>
 <3f6ad7ad-7801-47d5-ac88-42b07de3dccd@math.wisc.edu>
To: "John G. Heim" <jheim@math.wisc.edu>
X-Mailer: Apple Mail (2.3731.700.6.1.21)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-0.39 / 15.00];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[carmickle.com,reject];
	R_DKIM_ALLOW(-0.20)[carmickle.com:s=2021081500];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[carmickle.com:+];
	TAGGED_FROM(0.00)[bounces-1569-lists,speakup=lfdr.de];
	TO_DN_ALL(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[frank@carmickle.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.998];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wisc.edu:email,wisc.edu:url]
X-Rspamd-Queue-Id: 751B62CF7E2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi John,

I'm just glad that my memory still works at this point. I haven't looked =
at the dectalk and lighttalk command sets since the late 90s.

I still have to dectalk expresses an AccentSA , mid 90s version, and a =
lighttalk. I haven't used any of them in about ten years now. When I did =
use a hardware synth last, it was a dec express, but I had to yank the =
battery out of it before it would power on.

I don't tend to use a screen reader directly on the hardware that I am =
building, and haven't for a decade. I am mostly working with laptops, =
the exception, where software speech is fine, servers, with a BCM and =
out of band management, or some kind of embedded box that has serial =
console access.

My 14-year-old son wants to learn how to build computers, and we did =
build one a few months back, but it wasn't cool enough for him. It was a =
Qotom Q20342g9, which is a great little box that you can mount on a =
wall. Most importantly it supports ECC meory, and has 5x2.5g and 4x10g =
network interfaces! It's totally overkill. It's the cheapest box that I =
could find that supported ECC memory, so go figure. The CPU is a 12-core =
Atom clocked only at 2.2ghz, I believe. It's not super fast, but I =
loaded it up with 64gb of memory, right before the memory price =
explosion, back in December.

I have a virtual router running on it, and it blows away my last router, =
a Banana Pi bpi-r2. The bpi-r2 could only traffic shape about 300mbit, =
so I wasn't able to use my full 1gbit internet service.

I have a git repo with the config for many different services that run =
on it, the virtualized router, a Debian package building VM, a boot disk =
building VM, lxc containers for frigate, a freeswitch container, a =
reverse proxy container, a headscale container, a nextcloud container, =
and on the hypervisor you can access a zfs storage device over smb and =
rsync, for storing music, and photos.

I'm working on an application that proxies requests to my sonos speakers =
so that the metadata for tracks that have played get stored to a =
database, so more interesting things can happen. THings like, never play =
that track again ever, find out more metadata about that track through =
musicbrainz, which I am also hosting in my own postgres, only play that =
track during certain times of the year.

The sonos proxy is an API for clients. I will have a CLI, a web =
frontend, an iOS app and a watchOS app.=20

I'm also working on an application for managed ethernet switches. If =
you've ever tried to use Mikrotik's RouterOS you'd understand why. This =
application let's me write Junos style configuration and push it in to =
different devices through any number of different APIs. Currently the =
RouterOS API is the only one that's working. I'm going to get my hands =
on some different switches, Ubiquiti, TPLink Omada, any switch that has =
a known API, and then you'll be able to use this tool to copy =
configuration from one vendors switch in to another vendors switch. I =
hope it becomes useful for managed services providers in working with a =
multivendor ethernet switch environment.

I'm getting real tired of MacOS and iOS accessibility getting worse and =
not better, and so I'm trying to put services in place to jump from =
Apple's universe when that time can come. I've never been very good at =
writing code, but now that we have AI agents that can write it, have one =
write it and use another to audit it, I'm making progress on some =
projects.=20

I'm hoping to get my hands on a phone that can run mainline Linux. It =
doesn't look like the pinephone can be had anymore, so I'm not sure what =
device to snag. I've begun defining a system of applications written in =
Lua that can replace an iPhone one day. The biggest problem, of course, =
is the web browser. Even things like email and SMS aren't nearly as hard =
as that. Anyway, that's my ten year project.

I gave my son an old macbook running Trixie, and he was excited about it =
for a while. Now he's annoyed that it doesn't integrate with his apple =
watch and iPad.

I'm hoping to write a calendar and contacts app for the apple watch that =
can use a self hosted caldav/carddav server, including a small custom =
proxy in front of it to handle the API to the watch app. It's =
architecturally difficult to talk directly to such servers from an apple =
watch.

Sorry if I annoyed anyone with the off topic bits, seems like most of us =
around here are interested in what others might be up to while using =
speakup to access this world.

Write me off list, or on, if Kirk doesn't mind, about any of these.

Best,
--FC

> On Mar 19, 2026, at 12:00, John G. Heim <jheim@math.wisc.edu> wrote:
>=20
> Darn! Nice catch. Man, I cannot believe there was a mistake in the =
docs after all the work I put into it.
>=20
> Anyway, if you use the OTG port on your Raspberry Pi, then you must =
use DECtalk emulation. Well, technically you can use LiteTalk but you'll =
have to change settings on the Linux host.
>=20
> If you use a USB-serial converter, then yes, LiteTalk is preferred.
>=20
> I personally am using a Zero 2 W with the OTG port and DECtalk =
emulation. But I put together a Pi 4 with a serial cable and LiteTalk =
emulation for somebody else. I have to say the Pi 4 with LiteTalk was =
slightly better.  The Zero 2 W was a teensy bit less responsive. It's =
still very usable. It's only when I was switching back and forth between =
the 2 builds that I really noticed a difference. It's not just that the =
Pi 4 has a faster CPU. The LiteTalk protocol is better for the reason =
you mention and because it's just cleaner and easier to code for.
>=20
> The build with the Zero 2 W is nicer in that it is cheap, makes a nice =
physical package, and does not require a separate power supply. You can =
easily walk around with your hardware  synth in your pocket and just =
plug it into a USB port when you need it. But the USB-serial build is =
nicer in that you can configure it in the initramfs and get speech =
during boot just like any other hardware synth.
>=20
> My desktop actually crashed during development and I used the LiteTalk =
emulator to fix it. The crash was not related to my work on this =
project, it was caused by VirtualBox kernel module screwup. Anyway, I =
used a boot disk from my other project, grml4speakup to boot my down =
desktop. With grml4speakup, you can create a bootable image with your =
choice of hardware synth enabled. So I already had my LiteTalk emulator =
connected to my desktop when it went down. And I already had a thumb =
drive with the LiteTalk version of grml4speakup handy. I just put the =
thumb drive in, rebooted, and it came up talking.  Nice.
>=20
> Nice.
>=20
> On 3/19/26 9:38 AM, Frank Carmickle wrote:
>> John,
>>=20
>> Thank you for this.
>>=20
>> One question. The web site says that dectalk should be selected if =
you have a usb to serial adapter. Then in the trouble shooting section =
it says that lighttalk can be used only with a usb to serial connection. =
Does this mean that dectalk is preferred in both cases?
>>=20
>> Remembering a bit of the dectalk and lighttalk command sets, I would =
think that lighttalk would be preferred when it can be used, actual =
hardware flow control being the benefit of lighttalk.
>>=20
>> Best,
>> --FC
>>=20
>>=20
>> On Mar 18, 2026, at 18:10, John G. Heim <jheim@math.wisc.edu> wrote:
>>> It's all on the page on my web site:
>>>=20
>>> https://people.math.wisc.edu/~jheim/RPITalk/
>>>=20
>>>=20
>>>=20
>>> On 3/18/26 2:32 PM, Mike Ray wrote:
>>>>=20
>>>> John
>>>>=20
>>>> Is it interruptible? And is there a speech-dispatcher driver for =
it? Does it simulate an existing hardware synth such as the DECTalk, or =
another one?
>>>>=20
>>>> Mike
>>>>=20
>>>>=20
>>>>=20
>>>>=20
>>>> On 18/03/2026 18:29, John G. Heim wrote:
>>>>> Okay, I've mostly wrapped up development of my Raspberry Pi =
hardware speech synth project. =46rom now on, it will be upgrades or =
maintenance releases. Instructions for building a device can be found =
here:
>>>>>=20
>>>>> https://people.math.wisc.edu/~jheim/RPITalk/
>>>>> The biggest thing yet to be done is to get my  package into the =
Debian archive so it will get into Raspberry Pi OS. That doesn't depend =
on me though. I've already taken the steps I need to take to get my =
package into Debian but I haven't heard back from Debian yet. In the =
mean time, I set up  a Debian  repository on my own space at the =
University Of Wisconsin. Installation can be done easily via aptif you =
add my repository to your system.
>>>>>=20
>>>>> I've tested this  on  a Raspberry Pi Zero, a Pi 4, and even on a =
Linux laptop. I've used both an OTG (gadget) port with a plain USB cable =
and a regular USB port with a USB-serial converter. In other words, with =
this package, you can use any machine running Linux as a hardware speech =
synth. You could take an old Windows laptop, install Debian on it, and =
use that as a hardware speech synth. But I am guessing most people are =
going to want to use a Raspberry Pi or similar device.
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>=20


