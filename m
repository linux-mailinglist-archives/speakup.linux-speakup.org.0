Return-Path: <speakup+bounces-624-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4F4A75A02F2
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 22:46:44 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 49872383773; Wed, 24 Aug 2022 16:46:43 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6ED6C384787
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 16:46:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F270038099C; Wed, 24 Aug 2022 16:46:40 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0046.b.hostedemail.com [64.98.42.46])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E1644380989
	for <speakup@linux-speakup.org>; Wed, 24 Aug 2022 16:46:40 -0400 (EDT)
Received: from omf10.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay04.b.hostedemail.com (Postfix) with ESMTP id 2CBA610034BD8;
	Wed, 24 Aug 2022 20:46:40 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf10.b.hostedemail.com (Postfix) with ESMTPA id 74D224878;
	Wed, 24 Aug 2022 20:46:39 +0000 (UTC)
Message-ID: <013801d8b7fa$78626150$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "K0LNY_Glenn" <glenn@ervin.email>,
	"Brian Buhrow" <buhrow@nfbcal.org>,
	"Willem van der Walt" <wvdwalt@csir.co.za>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
	<buhrow@nfbcal.org>
References: <202208241649.27OGnL8e007327@nfbcal.org> <012d01d8b7f1$6e82b210$80ffa8c0@Win7VM>
Subject: Re: hopefully some help with AntiX
Date: Wed, 24 Aug 2022 15:45:38 -0500
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
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 74D224878
X-Spam-Status: No, score=-2.60
X-Stat-Signature: ksky4tgw4n4t6xrzh99rtxzuoapmawbb
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/qIuI3UsY6J49wTSr/w9EN5ZzJ6J214j0=
X-HE-Tag: 1661373999-506324
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

this is strange,
I tried again,
sudo apt install openssh -y
and it said that package is not available, but may be under another package
and it sounded like it said
try openssh-client
I don't think, that may only outbound on 22.
Glenn
----- Original Message ----- 
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Brian Buhrow" <buhrow@nfbcal.org>; "Willem van der Walt" 
<wvdwalt@csir.co.za>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>; <buhrow@nfbcal.org>
Sent: Wednesday, August 24, 2022 2:40 PM
Subject: Re: hopefully some help with AntiX


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




