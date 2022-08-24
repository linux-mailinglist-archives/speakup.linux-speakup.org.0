Return-Path: <speakup+bounces-623-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D5DFB5A0236
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 21:42:06 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0668C3847AF; Wed, 24 Aug 2022 15:42:05 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6F3E53847FF
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 15:42:04 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 301A5380986; Wed, 24 Aug 2022 15:42:03 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0082.b.hostedemail.com [64.98.42.82])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0F84A38097C
	for <speakup@linux-speakup.org>; Wed, 24 Aug 2022 15:42:03 -0400 (EDT)
Received: from omf06.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay02.b.hostedemail.com (Postfix) with ESMTP id 352AB801B9A1;
	Wed, 24 Aug 2022 19:41:58 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf06.b.hostedemail.com (Postfix) with ESMTPA id 7248A87F0C30;
	Wed, 24 Aug 2022 19:41:57 +0000 (UTC)
Message-ID: <012d01d8b7f1$6e82b210$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Brian Buhrow" <buhrow@nfbcal.org>,
	"Willem van der Walt" <wvdwalt@csir.co.za>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
	<buhrow@nfbcal.org>
References: <202208241649.27OGnL8e007327@nfbcal.org>
Subject: Re: hopefully some help with AntiX
Date: Wed, 24 Aug 2022 14:40:56 -0500
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
X-Spam-Status: No, score=-2.60
X-Stat-Signature: 3xdg9bekz8mcpntny8wumo5argobejpm
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 7248A87F0C30
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX18Rxk4CJmUOWTTP2aceELYGIUhGiPW62HI=
X-HE-Tag: 1661370117-215377
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Is ufw the only method to open or close ports?
I still cannot get in...
I did:
sudo ufw allow 22/tcp
and it didn't give me an error.
I tried system restart ufw
and systemctl restart ufw
with sudo of course, and it did not like the command.
So I rebooted, but I still get connection refused when trying to SSH into 
it.
I've tried to stop the ufw, but I don't know if it got stopped.
I say, what the hell are people thinking about closing all ports.
A bunch of paranoid people.
Why don't they leave at least 22 open and they could create a pop up message 
on startup that if not using SSH, it may be good to close it.
This really fucks things up for the Blind!

Glenn
----- Original Message ----- 
From: "Brian Buhrow" <buhrow@nfbcal.org>
To: "K0LNY_Glenn" <glenn@ervin.email>; "Willem van der Walt" 
<wvdwalt@csir.co.za>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>; <buhrow@nfbcal.org>
Sent: Wednesday, August 24, 2022 11:49 AM
Subject: Re: hopefully some help with AntiX


Hello Glen.  There is a faster way to determine if the machine you're trying 
to reach is
listening on the network on the appropriate ports.  Nmap is good for finding 
which ports a
machine is paying attention to, but if you know the port numbers, use telnet 
instead.  If
you don't have telnet installed on your working machine, I highly recommend 
installing it.
Then, do something like:
telnet <ipaddress of target machine> <port number>
You should see something like:
trying <ipaddress> ...
Then, you'll either get one of three things:

1.  A long delay followed by: connectioned timed out trying to reach <ip 
address>

2.  Connect: connection refused.

3.  Connected, escape is control-], followed by any banners the far end 
might produce, or none
if it waits for you to send the first message.

If you get option 2 and the machine you're connecting to is on the same 
network as the one
you're connecting from, then you know the machine is on the network, but not 
listening on the
port you tried.

If you get option 1, then it's highly likely the target machine is not 
connected to the
network.

I use this for testing connections to a huge variety of ports as it allows 
me to determine at
which layer a problem is occurring.

-thanks
-Brian



