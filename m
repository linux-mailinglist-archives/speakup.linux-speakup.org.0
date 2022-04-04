Return-Path: <speakup+bounces-387-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BD4834F19A7
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 20:06:42 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=pcdesk.net header.i=@pcdesk.net header.a=rsa-sha256 header.s=pcdesk20210713 header.b=KJqfTRDG;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 266E3380FC8; Mon,  4 Apr 2022 14:06:42 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 172AC380E68
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 14:06:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EF74C38092D; Mon,  4 Apr 2022 14:06:38 -0400 (EDT)
Received: from mail.pcdesk.net (mail.pcdesk.net [69.28.94.151])
	by befuddled.reisers.ca (Postfix) with UTF8SMTPS id BB26E380909
	for <speakup@linux-speakup.org>; Mon,  4 Apr 2022 14:06:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pcdesk.net;
	s=pcdesk20210713; t=1649095587;
	bh=RPSXqt1ATJ/5TpW3y++074IhD/hUDnJv+BayeNZ5+zs=; l=3842;
	h=Subject:To:Cc:References:From:Date:In-Reply-To;
	b=KJqfTRDGxnYS6J2o+46tBsOfoxyVQENaMkMzy//nGqs7Xgio6WjxsYAUtJfNQsMui
	 I0tR8L5xFfiUGdxW6waccC6QlWtNeEsUfxzxEZdPWhBLCuklxqFUE13EjOTZcprUP8
	 WknRGnpGIMujStOl/0d/6kmuNNtDbEQ2XhZxQNOUkaEDib7rCqKqd0kU8jAcUfHyAJ
	 UO7Oxke/7Lmf5mTlcv1XHI/Lu0E/R9NM97KbX8QA2ky2psPVJPviKfa7IVsFQL65ZT
	 hFPFoCO3MIXGorRFpFyo3NovVFFKms9u1YY6OqtxKKTw1vP4SQ1YwNKpZUQlhpFi42
	 G/9R3Y5YqAvPg==
Original-Subject: Re: How Can I Switch Synthesizers on the Fly?
Original-From: "Joseph C. Lininger" <joe@pcdesk.net>
Original-Cc: speakup@linux-speakup.org
Subject: Re: How Can I Switch Synthesizers on the Fly?
To: Chime Hart <chime@hubert-humphrey.com>,
  Gregory Nowak <greg@gregn.net>
Cc: speakup@linux-speakup.org
References: <1dc619bf-ba8a-47b3-2c85-7dff6e27086@hubert-humphrey.com>
 <Yko9zLikCNY1qcDX@gregn.net>
 <4ce83a8d-a0a1-3ef8-e8df-c9881198622@hubert-humphrey.com>
From: "Joseph C. Lininger" <joe@pcdesk.net>
Message-ID: <e4b20df5-5211-efaa-5937-ed214d1ae35e@pcdesk.net>
Date: Mon, 4 Apr 2022 14:06:26 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.6.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
In-Reply-To: <4ce83a8d-a0a1-3ef8-e8df-c9881198622@hubert-humphrey.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I think your permission error might actually be a shell thing, not a 
speakup thing. Allow me to explain. I'm not trying to be condescending 
if you already understand the mechanics here, but I need to explain for 
my explanation of the problem to make sense.

When you type:

sudo echo soft >/sys/accessibility/speakup/synth

What you're doing is to run the command "sudo echo soft" as root, then 
telling your existing shell to redirect its output to the file 
/sys/accessibility/speakup/synth. Here in lies the problem; your 
existing (non-root) shell handles that file write operation. Only "echo 
soft" is actually run as root. The file 
/sys/accessibility/speakup/synth. can only be written by root, so you 
get a permission error. I tested this on my own system by creating a 
root-owned file, then trying "sudo echo test" and redirecting to that 
file. I got a permission error, as expected.

The only solution I know of is to create a shell script with the line

sudo echo soft >/sys/accessibility/speakup/synth

Then run that using sudo. That causes the write to take place as the 
root user, which is what you want.

--
Joe

On 4/3/2022 8:51 PM, Chime Hart wrote:
> Thank you Greg for your analysis. Yes I am in TCSH. When I run with
> sudo echo soft >/sys/accessibility/speakup/synth
> I get a permission error. As far as speechd-up  if I run an apt 
> install in Debian, it tries installing a 0.5 version from 2011, but 
> errors out. Here is an output
> Preparing to unpack .../speechd-up_0.5~20110719-11_amd64.deb ...
> Unpacking speechd-up (0.5~20110719-11) ...
> Setting up speechd-up (0.5~20110719-11) ...
> Job for speechd-up.service failed because the control process exited 
> with error code.
> See "systemctl status speechd-up.service" and "journalctl -xeu 
> speechd-up.service" for details.
> invoke-rc.d: initscript speechd-up, action "restart" failed.
> x speechd-up.service - LSB: Interface between speakup and 
> speech-dispatcher
>      Loaded: loaded (/etc/init.d/speechd-up; generated)
>      Active: failed (Result: exit-code) since Sun 2022-04-03 17:46:08 
> PDT; 82ms ago
>        Docs: man:systemd-sysv-generator(8)
>     Process: 1576174 ExecStart=/etc/init.d/speechd-up start 
> (code=exited, status=1/FAILURE)
>         CPU: 37ms
>
> Apr 03 17:46:06 chime speechd-up[1576174]: Starting Interface between 
> speakup and speech-dispatcher : speechd-up
> Apr 03 17:46:06 chime speechd-up[1576190]: [Sun Apr  3 17:46:06 2022] 
> speechd: Configuration has been read from "/etc/speechd-up.conf"
> Apr 03 17:46:06 chime speechd-up[1576174]: Starting speechd-up...
> Apr 03 17:46:06 chime speechd-up[1576174]: To work, speechd-up needs 
> speakup and speakup_soft modules.
> Apr 03 17:46:06 chime speechd-up[1576174]: They are loaded 
> automatically. If you don't want, type
> Apr 03 17:46:06 chime speechd-up[1576174]: rmmod speakup speakup_soft
> Apr 03 17:46:08 chime speechd-up[1576300]:  failed!
> Apr 03 17:46:08 chime systemd[1]: speechd-up.service: Control process 
> exited, code=exited, status=1/FAILURE
> Apr 03 17:46:08 chime systemd[1]: speechd-up.service: Failed with 
> result 'exit-code'.
> Apr 03 17:46:08 chime systemd[1]: Failed to start LSB: Interface 
> between speakup and speech-dispatcher.
> dpkg: error processing package speechd-up (--configure):
>  installed speechd-up package post-installation script subprocess 
> returned error exit status 1
> Processing triggers for man-db (2.10.2-1) ...
> Processing triggers for install-info (6.8-4+b1) ...
> Errors were encountered while processing:
>  speechd-up
> E: Sub-process /usr/bin/dpkg returned an error code (1)
> Back again live. If this list thinks 54lines is too long, I can write 
> you off-list with that output. Thanks in advance.
> Chime
>


