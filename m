Return-Path: <speakup+bounces-391-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7509B4F1B5B
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 23:19:43 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=SMfyT+h2;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 83D1A3810DC; Mon,  4 Apr 2022 17:19:42 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6CCC6380D43
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 17:19:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E0CE2380D28; Mon,  4 Apr 2022 17:19:39 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 85C5838092D
	for <speakup@linux-speakup.org>; Mon,  4 Apr 2022 17:19:39 -0400 (EDT)
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 1A85424494
	for <speakup@linux-speakup.org>; Mon,  4 Apr 2022 22:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1649103528; bh=R+FYQJ9Qr0vXN6L7qU87RHgclt4KyLKcgZdIkUdYojI=;
	h=Date:From:Subject:To:References:In-Reply-To:From;
	b=SMfyT+h2zi67I/028yhxWXDEBmS98rpHUGDSU2Aw7/HBwa3eP2tR/qgDM9G4u4i/o
	 oijBLH/VHWMf52mNzrUM1NRDOEy0tqJ5phwPsQH2lnPjpeZi0bbMNyyG0u9Z2fqAYv
	 eUpGxmUMR4KqmS4ptftt8C5KPWe8EMGY0aehNffFdWCZvz4pE0xTwy9gDpZch1oDM4
	 5SJpsGoGVepBOLfu8iDRk95x2Z2UQlds01YRKSYaPUimexjuaV57kkXd2EVvcg7tOT
	 gllUP3PSJcH39DRlk/G7AaU8O136JQ6qP5akM0tkkZQ/fjaZT2yc4FlooQhn8UyUNp
	 gUVXEnmBGyJBA==
Content-Type: multipart/mixed; boundary="------------OZoUlPowGX30OoksHydgpi39"
Message-ID: <dc24ab4c-32c0-1b13-9b27-6ff32d99edc2@slint.fr>
Date: Mon, 4 Apr 2022 23:19:02 +0200
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
From: Didier Spaier <didier@slint.fr>
Subject: Re: How Can I Switch Synthesizers on the Fly?
To: speakup@linux-speakup.org
References: <1dc619bf-ba8a-47b3-2c85-7dff6e27086@hubert-humphrey.com>
 <Yko9zLikCNY1qcDX@gregn.net>
Content-Language: en-US
In-Reply-To: <Yko9zLikCNY1qcDX@gregn.net>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.
--------------OZoUlPowGX30OoksHydgpi39
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Well Chime_and_all, let me chime in.

1. Slint doesn't ship the talkwith script, but a different one, named speak-with.

2. talkwith can be found in the archive provided here:
ftp://linux-speakup.org/pub/speakup/speakup-3.1.6.tar.bz2
in the tools directory

I ran talkwith here (in a yet to be released Slint64-15.0) and it still works.
I attach a copy of the script.

I having both espeakup and speechd-up installed, As in the kernel I run
currently has the speakup drivers provided as modules, I first typed as root:
mopdrobe speakup_soft # this also loads the speakup module as a dependency
then to start espeakup:
talkwith soft espeakup
then to start speechd-up
talkwith spd
then to start a my (non existing) Dec Talk:
modprobe speakup_dectlk
talkwith dectlk
All worked, but I can't check the last command as I do not owning such hardware.

So no need to fiddle manually with /sys if you use talkwith.

I can't help with installating speechd-up in Debian that I do not use.

PS I also typed:
tcsh talkwith soft espeakup
which displayed:
Illegal variable name
So Chime, I know that tcsh is the shell you are used to, but you certainly would
do us a favor typing your commands from another one before requesting help.

Here I use the bash shell, you could probably use ash or dash as well.

Cheers,
Didier


Le 04/04/2022 à 02:37, Gregory Nowak a écrit :
> On Sun, Apr 03, 2022 at 12:36:25PM -0700, Chime Hart wrote:
>> last year I purchased some hi quality voices from Oralux, which are software
>> speech. When I have Allison installed, I can send her text through spd-say.
>> Making matters more complex, speech-dispatcher will not seem to install on
>> this Debian Sid machine.
> 
> This is contradictory. Having spd-say working implies a working and
> installed speech-dispatcher. So, I will assume you have
> speech-dispatcher installed and spd-say installed and working on one
> machine, but not another. In that case saying speech-dispatcher won't
> install doesn't help us help you.
> 
>> Guidance I've received from 2 sources, says I must
>> install and have espeak talking before I can switch to Allison, which is an
>> embedded voice.
> 
> If these voices interface through speech-dispatcher, then that would
> make sense. However, the only way I know of to interface speakup to
> speech-dispatcher right now is through speechd-up. So, it seems like
> you would have to install speechd-up, get that working with
> speech-dispatcher and espeak-ng, and once you have that working get
> speech-dispatcher to use your purchased voices.
> 
>> When I was running Slint on a laptop, Didier had created a
>> talk-with command to easily switch synths, but his script would need to be
>> re written for Debian.
> 
> I can confirm the talkwith provided in the speakup-tools package for
> debian bullseye seems to be broken. Issuing talkwith soft comes back
> with:
> 
> /usr/sbin/talkwith: 88: shift: can't shift that many
> 
> I took a look at the script, but don't see where the problem is.
> 
>> In addition, if I unload the DecTalk module, I won't
>> have speech, or would their be a way of having both DecTalk and software
>> speech at the same time?
> 
> No, you can't have both your dectalk and software speech at the same time.
> 
>> So, can some1 please provide exact commands I can
>> switch synths on the fly? I ran a locate for softsynth  but nothing found.
> 
> No surprise. What you want is the speakup_soft module. You would as
> root load that with:
> 
> modprobe speakup_soft
> 
> then start espeakup or speechd-up, depending on which one you use. I
> think that would be something like:
> 
> systemctl speechd-up start
> or
> systemctl espeakup start
> 
> I'm not a systemd user, so someone else can correct the above if
> they're not correct.
> 
> Now, assuming you have both speakup_soft and speakup_dectlk kernel
> modules loaded, you can switch between them as root with:
> 
> echo dectlk >/sys/accessibility/speakup/synth
> 
> for the dectalk, and
> 
> echo soft >/sys/accessibility/speakup/synth
> 
> for software speech. Remember that before switching to dectlk you
> should stop espeakup or speechd-up, and after switching to soft you
> should start espeakup or speechd-up. I seem to recall you use csh, so
> maybe someone can roll all that into a csh script for you.
> 
> Greg
> 
> 
--------------OZoUlPowGX30OoksHydgpi39
Content-Type: text/plain; charset=UTF-8; name="talkwith"
Content-Disposition: attachment; filename="talkwith"
Content-Transfer-Encoding: base64

IyEvYmluL3NoCiMgCiMgdGFsa3dpdGggLS0gc3dpdGNoZXMgc3BlYWt1cCBzeW50aGVzaXpl
cnMgb24gdGhlIGZseQojIAojIENvcHlyaWdodCAoYykgMjAwOSBieSAgdGhlIFNwZWFrdXAg
VGVhbQojIENvcHlyaWdodCAoYykgMjAwOCwgMjAwOSBieSAgQ2hhcmxlcyBIYWxsZW5iZWNr
CiMgCiMgIFRoaXMgcHJvZ3JhbSBpcyBmcmVlIHNvZnR3YXJlOiB5b3UgY2FuIHJlZGlzdHJp
YnV0ZSBpdCBhbmQvb3IgbW9kaWZ5CiMgIGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05V
IEdlbmVyYWwgUHVibGljIExpY2Vuc2UgYXMgcHVibGlzaGVkIGJ5CiMgIHRoZSBGcmVlIFNv
ZnR3YXJlIEZvdW5kYXRpb24sIGVpdGhlciB2ZXJzaW9uIDIgb2YgdGhlIExpY2Vuc2UsIG9y
CiMgIChhdCB5b3VyIG9wdGlvbikgYW55IGxhdGVyIHZlcnNpb24uCiMKIyAgIFRoaXMgcHJv
Z3JhbSBpcyBkaXN0cmlidXRlZCBpbiB0aGUgaG9wZSB0aGF0IGl0IHdpbGwgYmUgdXNlZnVs
LAojICAgYnV0IFdJVEhPVVQgQU5ZIFdBUlJBTlRZOyB3aXRob3V0IGV2ZW4gdGhlIGltcGxp
ZWQgd2FycmFudHkgb2YKIyAgIE1FUkNIQU5UQUJJTElUWSBvciBGSVRORVNTIEZPUiBBIFBB
UlRJQ1VMQVIgUFVSUE9TRS4gIFNlZSB0aGUKIyAgIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNl
bnNlIGZvciBtb3JlIGRldGFpbHMuCiMKIyAgWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEg
Y29weSBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UKIyAgIGFsb25nIHdpdGgg
dGhpcyBwcm9ncmFtLiAgSWYgbm90LCBzZWUgPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNl
cy8+LgojCiMgUmVxdWlyZW1lbnRzOiBMaW51eCBzcGVha3VwIDMuMS4wIG9yIGxhdGVyCiMK
IyBUbyBpbnN0YWxsLCBjb3B5IHRoaXMgc2NyaXB0IHRvIGEgZGlyZWN0b3J5IG9uIHRoZSBl
eGVjdXRpb24gcGF0aAojIGUuZy4gL3Vzci9zYmluLCBvciAvdXNyL2xvY2FsL3NiaW4uCiMg
VGhpcyBzY3JpcHQgc2hvdWxkIGJlIHJ1biBhcyByb290LgoKIyBiZSBzdXJlIHdlIGFyZSBy
b290CmlmIFsgJChpZCAtcnUpIC1ndCAiMCIgXTsgdGhlbgoJZWNobyAiJChiYXNlbmFtZSAk
MCkgbXVzdCBiZSBydW4gYXMgcm9vdC4iCglleGl0CmZpCgojIERlZmluZSBzb21lIHZhcmlh
YmxlcwpTUEVBS1VQRElSPSIvc3lzL2FjY2Vzc2liaWxpdHkvc3BlYWt1cCIKCiMgbWFrZSBz
dXJlIHNwZWFrdXAgaXMgbG9hZGVkCmlmIFsgISAtZCAkU1BFQUtVUERJUiBdOyB0aGVuCgll
Y2hvICJTcGVha3VwIGRvZXMgbm90IHNlZW0gdG8gYmUgaW5zdGFsbGVkLiIKCWV4aXQKZmkK
CiMgQ2hlY2sgdGhlIGNvbW1hbmQgbGluZSBmb3Igb3B0aW9ucwoKaWYgWyAiJDEiID0gIiIg
XTsgdGhlbgoJZWNobwoJZWNobyAiVXNhZ2U6ICQoYmFzZW5hbWUgJDApIDxzeW50aD4gPGRh
ZW1vbj4gW29wdGlvbnNdIgoJZWNobwoJZWNobyAic3ludGggLSBhbnkgc3ludGhlc2l6ZXIg
c3VwcG9ydGVkIGJ5IHNwZWFrdXAiCgllY2hvCgllY2hvICJkYWVtb24gLSBmb3IgdGhlICdz
b2Z0JyBzeW50aGVzaXplciwgdGhpcyBzaG91bGQgYmUgZWl0aGVyIgoJZWNobyAic3BkIGZv
ciBzcGVlY2hkLXVwLCBvciBlc3BlYWt1cCB0byBydW4gZXNwZWFrdXAuIgoJZWNobyAiRm9y
IHRoZSBvdGhlciBzeW50aGVzaXplcnMsIHRoaXMgaXMgaWdub3JlZC4iCgllY2hvCgllY2hv
ICJvcHRpb25zIC0gZm9yIGEgc29mdHdhcmUgc3ludGhlc2l6ZXIsIHRoZSByZXN0IG9mIHRo
ZSBjb21tYW5kIGxpbmUiCgllY2hvICJpcyBwYXNzZWQgb24gdG8gdGhlIGRhZW1vbjsgb3Ro
ZXJ3aXNlIGl0IGlzIGlnbm9yZWQuIgoJZWNobwoJZWNobyAiVGFsa3dpdGggZG9lcyBub3Qg
aW5zdGFsbCBvciByZW1vdmUgbW9kdWxlcywgc28gbWFrZSBzdXJlIGFueSIKCWVjaG8gInJl
cXVpcmVkIGRyaXZlciBtb2R1bGVzIGFyZSBpbnN0YWxsZWQgb3IgYnVpbHQgaW50byB0aGUg
a2VybmVsIgoJZWNobyAiYmVmb3JlIHJ1bm5pbmcgdGFsa3dpdGguIgoJZWNobwoJZXhpdApm
aQogCk5FV01PRD0kMQpzaGlmdAoKIyBmb3IgYmFja3dhcmQgY29tcGF0aWJpbGl0eQppZiBb
ICIkTkVXTU9EIiA9ICJzcGQiICAtbyAiJE5FV01PRCIgPSAiZXNwZWFrdXAiIF07IHRoZW4K
CURBRU1PTj0kTkVXTU9ECglORVdNT0Q9c29mdApmaQoKaWYgWyAiJE5FV01PRCIgPSAic29m
dCIgXTsgdGhlbgoJaWYgd2hpY2ggZXNwZWFrdXAgPiAvZGV2L251bGwgMj4mMSA7IHRoZW4K
CQlIQVZFX0VTUEVBS1VQPTEKCWZpCglpZiB3aGljaCBzcGVlY2hkLXVwID4gL2Rldi9udWxs
IDI+JjEgOyB0aGVuCgkJSEFWRV9TUEQ9MQoJZmkKCQkJCglpZiBbIC16ICIkSEFWRV9FU1BF
QUtVUCIgIC1hIC16ICIkSEFWRV9TUEQiIF07IHRoZW4KCQllY2hvICJubyBzb2Z0d2FyZSBz
cGVlY2ggc3ludGhlc2l6ZXJzIGFyZSBpbnN0YWxsZWQuIgoJCWV4aXQKCWZpCgkJCQoJaWYg
WyAteiAiJERBRU1PTiIgXTsgdGhlbgoJCURBRU1PTj0kMQoJCXNoaWZ0CglmaQoKCWlmIFsg
LXogIiREQUVNT04iIC1hICEgLXogIiRIQVZFX0VTUEVBS1VQIiBdOyB0aGVuCgkJREFFTU9O
PSJlc3BlYWt1cCIKCWVsaWYgWyAteiAiJERBRU1PTiIgLWEgISAteiAiJEhBVkVfU1BEIiBd
OyB0aGVuCgkJREFFTU9OPSJzcGQiCglmaQoJCglpZiBbICIkREFFTU9OIiA9ICJlc3BlYWt1
cCIgLWEgLXogIiRIQVZFX0VTUEVBS1VQIiBdOyB0aGVuCgkJZWNobyAiZXNwZWFrdXAgZG9l
cyBub3QgYXBwZWFyIHRvIGJlIGF2YWlsYWJsZS4iCgkJZXhpdAoJZWxpZiBbICIkREFFTU9O
IiA9ICJzcGQiIC1hIC16ICIkSEFWRV9TUEQiIF07IHRoZW4KCQllY2hvICJzcGVlY2hkLXVw
IGRvZXMgbm90IGFwcGVhciB0byBiZSBhdmFpbGFibGUuIgoJCWV4aXQKCWZpCmZpCgpPTERN
T0Q9IiQoY2F0ICRTUEVBS1VQRElSL3N5bnRoKSIKZWNobyAiJE5FV01PRCIgPiAkU1BFQUtV
UERJUi9zeW50aCAyPiAvZGV2L251bGwKaWYgWyAkPyAhPSAwIF07IHRoZW4KCWVjaG8gIlVu
YWJsZSB0byBzd2l0Y2ggdG8gdGhlICRORVdNT0Qgc3ludGhlc2l6ZXIuIgoJZWNobyAiVGhp
cyBtZWFucyB0aGF0IHRoZSBkcml2ZXIgaXMgbm90IGJ1aWx0IGluLCB0aGUgbW9kdWxlIgoJ
ZWNobyAiaXMgbm90IGxvYWRlZCwgb3IgJE5FV01PRCBpcyBub3QgYSB2YWxpZCBzeW50aGVz
aXplci4iCglleGl0IDEKZmkKCmlmIFsgIiRPTERNT0QiID0gInNvZnQiIF07IHRoZW4KCWlm
IFsgLWYgL3Zhci9ydW4vZXNwZWFrdXAucGlkIF07IHRoZW4KCQlraWxsICQoY2F0IC92YXIv
cnVuL2VzcGVha3VwLnBpZCkgMj4gL2Rldi9udWxsCgkJaWYgWyAtZiAvdmFyL3J1bi9lc3Bl
YWt1cC5waWQgXTsgdGhlbgoJCQlybSAtZiAvdmFyL3J1bi9lc3BlYWt1cC5waWQKCQlmaQoJ
ZmkKCWlmIFsgLWYgL3Zhci9ydW4vc3BlZWNoZC11cC5waWQgXTsgdGhlbgoJCWtpbGwgJChj
YXQgL3Zhci9ydW4vc3BlZWNoZC11cC5waWQpIDI+IC9kZXYvbnVsbAoJCWlmIFsgLWYgL3Zh
ci9ydW4vc3BlZWNoZC11cC5waWQgXTsgdGhlbgoJCQlybSAtZiAvdmFyL3J1bi9zcGVlY2hk
LXVwLnBpZAoJCWZpCglmaQoJc2xlZXAgMgpmaQoKaWYgWyAiJE5FV01PRCIgPSAibm9uZSIg
XTsgdGhlbgoJZXhpdAplbGlmIFsgIiRORVdNT0QiID0gInNvZnQiIF07IHRoZW4KCWlmIFsg
IiREQUVNT04iID0gImVzcGVha3VwIiBdOyB0aGVuCgkJZXNwZWFrdXAgJCoKCWVsaWYgWyAi
JERBRU1PTiIgPSAic3BkIiBdOyB0aGVuCgkJbmljZSAtbiA1IHNwZWVjaGQtdXAgJCoKCWZp
CmZpCg==

--------------OZoUlPowGX30OoksHydgpi39--

