Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 4FFA9183EB0
	for <lists+speakup@lfdr.de>; Fri, 13 Mar 2020 02:34:22 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 5E4AF4280492; Thu, 12 Mar 2020 21:34:21 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.b="Koo6TiZ7";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 25EC642804AF
	for <lists+speakup@lfdr.de>; Thu, 12 Mar 2020 21:34:20 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1253C1C7272; Thu, 12 Mar 2020 21:34:20 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=Koo6TiZ7;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C389D1C7278;
	Thu, 12 Mar 2020 21:30:20 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id D3AF41C2DA8; Mon, 24 Feb 2020 22:27:29 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 1FA8F1C0D9B
 for <speakup@linux-speakup.org>; Mon, 24 Feb 2020 22:27:26 -0500 (EST)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:284e:32f8:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id BCE19FD1
 for <speakup@linux-speakup.org>; Mon, 24 Feb 2020 19:27:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1582601241; bh=7k9ZAy/YUC76RU/Fjv93iNCCarQvaIy/RwZZdjBrwBw=;
 h=Date:From:To:Subject:From;
 b=Koo6TiZ7sANuV2/YezAD2ui4QTcXxiYtHjFiS6pWhqRygYzOPk1GvzyqhrQS8UFDw
 GzrQYSMZyW4yGkVwPtd7v1alN0jSfHwjfUp4GZ65mpscl+mcUognWT2jLBIKBao92i
 5wLWrL1aHPgaVbkR0jnf/homjHEpluqXakKqF+pgnhftNbjBVNhrcT9BquEH2Sv3jd
 +RJfXDXkT7Qg+I8q+UCRJC4TIVyEQns/bVQ0wN1xQOJYwZMY37vEmx1tYm8nX0dsNt
 t0nhTvFPJEdP3bSdJ9G8LqnA15A+dQ//orHU83evId8MijTTaLNcMFTZQH7JuA7vEz
 ckxWay4jJ3QZA==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1j6Qrz-0001LK-FQ
 for speakup@linux-speakup.org; Mon, 24 Feb 2020 20:26:51 -0700
Date: Mon, 24 Feb 2020 20:26:51 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: doubletalk PC and newer kernels retraction
Message-ID: <20200225032651.GA5145@gregn.net>
MIME-Version: 1.0
Content-Disposition: inline
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.102.1 at vserver
X-Virus-Status: Clean
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hi all.

I stated a while ago on this list that the doubletalk PC ISA card
doesn't work with newer kernels. I came to that conclusion initially
believing the problem was with the speakup code itself, when it in
fact seems to have been caused by failing hardware. The doubletalk PC
ISA card does seem to be working for me on a kernel as recent as
5.4.21. More details on how I discovered I was wrong are here:

<https://www.github.com/bytefire/speakup/issues/5>

My apologies for unintentionally causing confusion and misinformation.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
