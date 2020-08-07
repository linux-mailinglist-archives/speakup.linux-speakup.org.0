Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C4A8C23F412
	for <lists+speakup@lfdr.de>; Fri,  7 Aug 2020 23:06:33 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B6E391C06F9; Fri,  7 Aug 2020 17:06:32 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=gi6a8xLD;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E7DBA1C0751;
	Fri,  7 Aug 2020 17:03:52 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id CE8EF1C06F6; Fri,  7 Aug 2020 17:03:49 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 1BCB71C06E6
 for <speakup@linux-speakup.org>; Fri,  7 Aug 2020 17:03:47 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:4a38:b2e4:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id B9FF11C3E
 for <speakup@linux-speakup.org>; Fri,  7 Aug 2020 14:03:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1596834201; bh=2QLBIpxu1DcwttrwDh/+iL0aI7hFaeqjoe+TMb/8agE=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=gi6a8xLDuS1elWSvfbL5g8hLG/ZYrKu7WmCNbFhOU27M6c1o7hlow+hA+IIb4GftM
 InVv2UtLLx8kvE/O68775J3yiot97DLvIJVLCqNs09DTRGagWu0t/CzQ5Dp5IkhHK6
 c5nZRJTdTgD39tzhud6/YZnqXogtR03+UL6UvjHB+E2fjyqZNHYYn0+JOaO+neSi9G
 nSa5E/Vo2qkM539lWGRBreiBMH4Cx0Az7jhBC/sSio7fvkkM/0+mruyEjeG9rcenJa
 lM4P7QxPk7AbNRKeIx5K67auKt2iOQOL4HhQMh+qgHG0zxRh7tMs2GsWN49sokA0fZ
 cm+cntPYLokyw==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1k49WC-00018Z-JK
 for speakup@linux-speakup.org; Fri, 07 Aug 2020 14:03:12 -0700
Date: Fri, 7 Aug 2020 14:03:12 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Problems with espeakup and CFDisk
Message-ID: <20200807210312.GC3805@gregn.net>
References: <DM6PR14MB3647F5E81DF1F02FFDF68F6ADA490@DM6PR14MB3647.namprd14.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR14MB3647F5E81DF1F02FFDF68F6ADA490@DM6PR14MB3647.namprd14.prod.outlook.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.102.4 at vserver
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Sounds like the numbers are the partition types to choose
from. Setting speakup to highlight tracking might help you.

Greg


On Fri, Aug 07, 2020 at 03:57:10PM -0400, Criss wrote:
> Hello.
> =

> Is posible use espeakup and CFDisk correctly?. When I run CFDisk from she=
llI
> can select table partition type, create and delete partitions, but when i
> try choose a partition type, espeakup read nambers (I don't know what are=
).
> Espeakup must talk: linux swap, wefi etc. If I use numbers key to
> navegati=F3n, Espeak read the type partitions, but when I navegate with a=
rrows
> key, appear the numbers.
> =

> =

> Best regards.
> =

> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

-- =

web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your cont=
acts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
