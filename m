Return-Path: <speakup+bounces-655-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 46D705A1D6F
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 02:02:35 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CF0363810CA; Thu, 25 Aug 2022 20:02:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8292B3818E4
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 20:02:33 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 24586380E98; Thu, 25 Aug 2022 20:02:32 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0054.b.hostedemail.com [64.98.42.54])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 10DF8380C5D
	for <speakup@linux-speakup.org>; Thu, 25 Aug 2022 20:02:32 -0400 (EDT)
Received: from omf02.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay02.b.hostedemail.com (Postfix) with ESMTP id 6E766801E67A;
	Fri, 26 Aug 2022 00:02:30 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf02.b.hostedemail.com (Postfix) with ESMTPA id EE6E088AC3DA;
	Fri, 26 Aug 2022 00:02:29 +0000 (UTC)
Message-ID: <028101d8b8df$22d65800$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>,
	<speakup@linux-speakup.org>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com> <007001d8b776$2a7193a0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208241123100.3538@willempc.meraka.csir.co.za> <011d01d8b7dc$1fbf79c0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208251022200.17853@willempc.meraka.csir.co.za> <YwgMl3QDVvPQ7HpZ@gregn.net>
Subject: Re: hopefully some help with AntiX
Date: Thu, 25 Aug 2022 19:02:29 -0500
Organization: Home
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Rspamd-Queue-Id: EE6E088AC3DA
X-Spam-Status: No, score=-2.60
X-Stat-Signature: ux4q48ukxso8ion4tgbu5w1wt1k9h5h6
X-Rspamd-Server: rspamout03
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19/fiK5xX2JN9OIXSStNvXdsTWSLCXa+YY=
X-HE-Tag: 1661472149-41762
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I used 0/24 in what Willem sent out, but the IP addresses start at /1, so 
would I want to use /0/24 or /1/24?
Thanks.

----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: <speakup@linux-speakup.org>
Sent: Thursday, August 25, 2022 6:58 PM
Subject: Re: hopefully some help with AntiX


On Thu, Aug 25, 2022 at 10:30:13AM +0200, Willem van der Walt wrote:
> #Allow ssh from your network
> iptables -A INPUT -p tcp -s 10.248.1.0/24 --dport 22 -m state --state 
> NEW,ESTABLISHED -j ACCEPT
> #Allow outgoing ssh
> iptables -A INPUT -p tcp --sport 22 -j ACCEPT
> The iptables command should work as it is the basic command used by all
> firewall tools.

Not exactly, I would expect any new install these days done with
something based on debian buster to use the newer nftables:

<https://wiki.debian.org/iptables>

So replace iptables in the above with iptables-legacy. Also, you'll
want to replace 10.248.1.0/24 with whatever address range your network uses.


On Thu, Aug 25, 2022 at 05:08:06PM -0500, K0LNY_Glenn wrote:
> If pip will install speakup, what is the best order to install needed
> things, like espeak-ng, speech-dispatcher, and I don't know if alsa is
> installed either.
> audio works through pulseaudio from what I have read.
> There is audio with speaker-test.
> But neither espeak or espeak-ng and a word work.

If you have pulseaudio installed, I think your best bet is to install
speech-dispatcher-espeak-ng, espeak-ng, and speechd-up. Those should
pull in everything else you need. If you have pulseaudio installed,
you will likely have problems if you try to install espeakup (I.E. no
speech). If you can manage to get speechd-up going, you can then
resolve your ssh issues, and with ssh access transition to espeakup,
either dumping pulseaudio, or getting it to work nicely with espeakup.


On Thu, Aug 25, 2022 at 05:19:22PM -0500, K0LNY_Glenn wrote:
> well I just went ahead and tried
> sudo pip install speakup
> and got the same error as with fenrir, an environment problem.

Judging from the other messages in this thread, sounds like you will
need to first resolve that problem before you can install
anything. Getting ssh access should help with that. See if what I
posted at the beginning about iptables helps you.

As far as adding repositories, I would advise against adding the repo
for debian sid as someone else suggested. Adding the repos for buster
should be OK, but I don't know anything about the distribution you're
running, so won't fully endorse that.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your 
contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org


