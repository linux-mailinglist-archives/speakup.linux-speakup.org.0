Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2761E23F5A5
	for <lists+speakup@lfdr.de>; Sat,  8 Aug 2020 02:52:47 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4DE3E1C06F9; Fri,  7 Aug 2020 20:52:46 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=Hnt8y+WP;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 325291C0733;
	Fri,  7 Aug 2020 20:52:05 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 00E0B1C06F9; Fri,  7 Aug 2020 20:52:02 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 6E90A1C06F5
 for <speakup@linux-speakup.org>; Fri,  7 Aug 2020 20:52:00 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:4a38:b2e4:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 49598458
 for <speakup@linux-speakup.org>; Fri,  7 Aug 2020 17:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1596847927; bh=HQYXwSAmgMTsQXDslcvRa6oVOWZDecVajhTH/EBpPf4=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=Hnt8y+WP3z3yRQWnS6ZT/0+4ZytVkMJjYOLn6uYyU4s9XyrzIDxlabB3o16TJjj7f
 lMyGEjL7MS2DiThjYQ/sWHSloI9wwAcx0ugcaOtEuqaJGwn9ARGsWuAKZcIEEQY3V4
 BZlAjiyOh/LdK+fFazL30xXOAM0bfNsXtQ8A7mxsuExSBhzlF5HLtKED5nxCZ2Tizr
 Yn7oIhtHmgBSyHRxJ04+X2FVVaSSvrR4rRfwL/YW4zYnBor9VH358IZIdvlpUZ3V+e
 +nvSMzOAlBcbP5nQmGQ9gYJVnTdzmO1U+5dNDdKPHYooKf1W+/ejy8PrnUCuXsm7JG
 KqrmC9+WFn5Fw==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1k4D5Z-0001Nr-GE
 for speakup@linux-speakup.org; Fri, 07 Aug 2020 17:51:57 -0700
Date: Fri, 7 Aug 2020 17:51:57 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Problems with espeakup and CFDisk
Message-ID: <20200808005157.GA5284@gregn.net>
References: <DM6PR14MB3647F5E81DF1F02FFDF68F6ADA490@DM6PR14MB3647.namprd14.prod.outlook.com>
 <20200807210312.GC3805@gregn.net>
 <DM6PR14MB36475CB66CAD33CE10C65456DA490@DM6PR14MB3647.namprd14.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR14MB36475CB66CAD33CE10C65456DA490@DM6PR14MB3647.namprd14.prod.outlook.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

On Fri, Aug 07, 2020 at 07:34:24PM -0400, Criss wrote:
> How can I configure highlight tracking ?.

By pressing the asterisk key on the numeric keypad until speakup says
"highlight tracking."

I recommend you read the speakup user's guide found at:

<http://www.linux-speakup.org>

It hasn't been updated in a while, but most of it is still
relevant. Highlight tracking is covered in section 10. If highlight
tracking doesn't help, "read window" might, section 15. I don't know
what your native language is, but there is a version of the guide in
English, and French.

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
