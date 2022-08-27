Return-Path: <speakup+bounces-679-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 98A145A32F4
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 02:10:11 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1AAF0380C92; Fri, 26 Aug 2022 20:10:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 03FDD380954
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 20:10:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 174F3380981; Fri, 26 Aug 2022 20:10:06 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0130.b.hostedemail.com [64.98.42.130])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 054BF38078F
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 20:10:06 -0400 (EDT)
Received: from omf14.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay03.b.hostedemail.com (Postfix) with ESMTP id 35DD48704A3F;
	Sat, 27 Aug 2022 00:10:05 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf14.b.hostedemail.com (Postfix) with ESMTPA id A89978000041;
	Sat, 27 Aug 2022 00:10:04 +0000 (UTC)
Message-ID: <00b601d8b9a9$5c664f10$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>,
	<speakup@linux-speakup.org>
References: <202208261512.27QFCDux008176@nfbcal.org> <02b101d8b963$7d039fc0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208262017280.8190@willempc.meraka.csir.co.za> <006201d8b97a$ff989cd0$80ffa8c0@Win7VM> <006601d8b97e$e9f9a6e0$80ffa8c0@Win7VM> <Ywle3kA6oGDCREfZ@gregn.net>
Subject: Re: hopefully some help with AntiX
Date: Fri, 26 Aug 2022 19:10:04 -0500
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
X-Rspamd-Queue-Id: A89978000041
X-Spam-Status: No, score=-2.60
X-Stat-Signature: i8f5yzgseswu37psdi8rhmrnfg3eubjh
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1+y4kQ5sHc92lkDCxe7AzqfhFv6G1d8tHE=
X-HE-Tag: 1661559004-182294
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I've considered that, and if I can get any port to open, I will gladly use 
telnet.
Hell, if I could open all 1000 ports now, I would!
Glenn
----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: <speakup@linux-speakup.org>
Sent: Friday, August 26, 2022 7:01 PM
Subject: Re: hopefully some help with AntiX


On Fri, Aug 26, 2022 at 02:06:13PM -0500, K0LNY_Glenn wrote:
> On the antiX I did
> sudo netcat -l 22
> and then on the pine 64, I did sudo nc 10.248.1.143 22
> and it does not seem to connect.
> I wonder if it is because I am using 22 to get from my windows to the
> Pine64, in order to go linux to linux.

Port 22 is a privileged port. You should consider using 1024 or
higher. If the listening port is open on the firewall, the commands
you gave above should connect. If you type something on the client
side, you should see it typed on the antiX machine, and the other way
round. This will however not give you a login terminal. To do that,
you need something that handles logins to listen on your netcat. This
isn't something I've done, so can't give you more directions here. If
you don't care about the connection being secure, which you don't seem
to, you might as well try:

apt install telnetd

and open tcp 23 on your firewall.


On Fri, Aug 26, 2022 at 04:12:28PM -0500, K0LNY_Glenn wrote:
> Well I thought I'd try iptables again.
> I finally got it to run without any errors, that long iptables command I 
> got
> earlier.
> But nmap still sees no ports open on that host.
> Prior to running iptables, I tried to apt install it, and the message was
> that I'm already running the latest.
> So I needed to restart iptables with
> sudo service iptables restart
> and it can find no service iptables.
> I retyped it several times to be sure there was no typos.

This is to be expected, iptables is not a system service.

> So I tried
> sudo systemctl restart iptables
> and the system cannot find systemctl

Is antiX running sysvinit, openrc, or something else? This is
something the antiX documentation should tell you. What does it use
for PID1 or init?

> question:
> If I reboot, if the long iptables command worked, will it stick if I 
> reboot?

No.


On Fri, Aug 26, 2022 at 05:57:37PM -0500, K0LNY_Glenn wrote:
> Well it seems ufw is there, but it must not be running automatically, but 
> it
> does not fix the port problem.
> I did
> sudo ufw allow ssh
> it said tcp port allowed
> or something like that
> so I checked on the other computer with nmap
> 100 ports closed
> So I did sudo ufw restart
> and the other computer said 999 ports filtered tcp port 22 closed.
> I've done iptables too, but that does not stay after a reboot.
> if I do sudo ufw status
> it shows tcp port 22 allow
> but it does not stay from a reboot.

You need to save the firewall configuration once you changed it for it
to persist across reboots. I haven't used ufw, so you will need to
read up on how to do that.

If port tcp 22 shows up as not filtered but closed, then the port is
open, but there is no ssh service running.

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


