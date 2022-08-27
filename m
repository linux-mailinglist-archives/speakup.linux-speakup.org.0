Return-Path: <speakup+bounces-678-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 822FD5A32D9
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 02:02:17 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=KPMkbj1I;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 13BF8380C77; Fri, 26 Aug 2022 20:02:17 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E6346380954
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 20:02:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 244A838078F; Fri, 26 Aug 2022 20:02:08 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9DF4538078F
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 20:02:07 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:728b:c08b:329e:7b67:4134:3c8c])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id D1D3436B
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 17:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1661558495; bh=/pL3LdciBPAyJvKr64P+BxES8wpcywPlL4kbiBk7Z1U=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=KPMkbj1IEmHk24Zsy/0X2wBFCqzhjc70xVuBUOC3cIlgibijFryQSshomw+XQ2E1Y
	 YV/+q/I/yrcXSyz1BrjAzmI6dFXqR3itm8g7f73DDvES+0rB5wWEXRKljEhXplXt7y
	 3upLjXQ7VZxOWOYlql9oHP6x2zZUh6oWfKVqOoXIzkhNMqpDWorUWurr4n1yFyc42C
	 E2BXjgrwRko2IfWkQ6VL9ip5pmMz1L6cS6UjcIxRlUAEeSASCkMtYvrbWuorSbkLJj
	 6hruRfNp0ZUOHK96qu4fgHskSq/EKaAXuO/n3NyT3NvFHRIE70yIAPQmAGBeshsKN6
	 u94f7laJoZSRQ==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id E38C6C1B5; Fri, 26 Aug 2022 17:01:34 -0700 (MST)
Date: Fri, 26 Aug 2022 17:01:34 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: Re: hopefully some help with AntiX
Message-ID: <Ywle3kA6oGDCREfZ@gregn.net>
References: <202208261512.27QFCDux008176@nfbcal.org>
 <02b101d8b963$7d039fc0$80ffa8c0@Win7VM>
 <alpine.DEB.2.21.1.2208262017280.8190@willempc.meraka.csir.co.za>
 <006201d8b97a$ff989cd0$80ffa8c0@Win7VM>
 <006601d8b97e$e9f9a6e0$80ffa8c0@Win7VM>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <006601d8b97e$e9f9a6e0$80ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

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
> I finally got it to run without any errors, that long iptables command I got 
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
> If I reboot, if the long iptables command worked, will it stick if I reboot?

No.


On Fri, Aug 26, 2022 at 05:57:37PM -0500, K0LNY_Glenn wrote:
> Well it seems ufw is there, but it must not be running automatically, but it 
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
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

