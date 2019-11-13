Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 67729FBC8F
	for <lists+speakup@lfdr.de>; Thu, 14 Nov 2019 00:29:31 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 919211C4693; Wed, 13 Nov 2019 18:29:30 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; secure) header.d=shawnk.ca header.i=@shawnk.ca header.b="mB1QrXnq";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=shawnk.ca header.i=@shawnk.ca header.b="mdZv0BXt";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 920951C46B8;
	Wed, 13 Nov 2019 18:28:02 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 434561C4696; Wed, 13 Nov 2019 18:27:56 -0500 (EST)
Received: from pegasus.shawnk.ca (pegasus.shawnk.ca [158.69.210.17])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 8664D1C43BB
 for <speakup@linux-speakup.org>; Wed, 13 Nov 2019 18:27:51 -0500 (EST)
Received: from shawnk.ca (S0106001b21a4cc48.vc.shawcable.net [24.80.151.181])
 (authenticated bits=0)
 by pegasus.shawnk.ca (8.15.2/8.15.2/Debian-3) with ESMTPSA id xADNRkaU009019
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <speakup@linux-speakup.org>; Wed, 13 Nov 2019 15:27:47 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shawnk.ca; s=2010;
 t=1573687670; bh=Z+uSDKhjDSRk4N67IAKmmhaS9IHOBWRC1hoHPL2Hroc=;
 h=Date:From:Reply-To:To:Subject:In-Reply-To:References:From;
 b=mB1QrXnqwdeVClon18mxK7h66GPhZ9mbQBlQA4hsCCfxTP/GxkUtMHAP7TahVI0L3
 xYiH1cGm0EJIpsxBv3mj7uBvnDS/XML8IFFJ7kV6Rav/HBFNoggj6T3L7AgL9pPyst
 qxWUsQUa7FT/9TvQ+KvOn7GhXnpjokYJX/dzYsyU=
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at pegasus
Received: from odyssey.localnet.shawnk.ca (localhost [127.0.0.1])
 by shawnk.ca (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id xADNRkVR024031
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <speakup@linux-speakup.org>; Wed, 13 Nov 2019 15:27:46 -0800
X-DomainKeys: Sendmail DomainKeys Filter v1.0.0 shawnk.ca xADNRkVR024031
DomainKey-Signature: a=rsa-sha1; s=odyssey; d=shawnk.ca; c=simple; q=dns;
 h=dkim-signature:received:date:from:x-x-sender:reply-to:to:
 subject:in-reply-to:message-id:references:user-agent:mime-version:content-type;
 b=foZ2wGGEqpyogsuPX62MF142ahWErM2YDh/HRPTNPBYrx2S60k7/O/uqwtaCBA9EG
 z3zvxqmpD4MEJJrfj3VqQ==
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shawnk.ca; s=2010;
 t=1573687666; bh=Z+uSDKhjDSRk4N67IAKmmhaS9IHOBWRC1hoHPL2Hroc=;
 h=Date:From:Reply-To:To:Subject:In-Reply-To:References:From;
 b=mdZv0BXtjFiKRsNZs/98h9Dis2x84SMKm7/TO6VAsfIIXQWMELxt+AGfMdBxb/vWM
 C+zfMn4/UgXLzb9OE7S/7xHTUHVuzqdq6r2VCiqbMWNg6msBQQ4MmcueBpdp6edU20
 nvPt49p332UwqY1wtK20qxM783/hs2hNeqYlq3nw=
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at odyssey
Received: (from shawn@localhost)
 by odyssey.localnet.shawnk.ca (8.14.4/8.14.4/Submit) id xADNRk2c024030;
 Wed, 13 Nov 2019 15:27:46 -0800
Date: Wed, 13 Nov 2019 15:27:46 -0800 (PST)
From: Shawn Kirkpatrick <shawn@shawnk.ca>
X-X-Sender: shawn@odyssey
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: cannot go to google search results with lynx
In-Reply-To: <201911131725.xADHPsur017421@lothlorien.nfbcal.org>
Message-ID: <alpine.DEB.2.10.1911131522050.23047@odyssey>
References: <201911131725.xADHPsur017421@lothlorien.nfbcal.org>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on pegasus.shawnk.ca
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
Reply-To: shawn@shawnk.ca, "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Unfortunately this workaround doesn't seem to be working for www.google.ca. 
I did find a lynx option that does seem to work though, the -tagsoup command 
line option. This seems to give a results page with usable links. It's not 
the results page that worked as of yesterday but it's better than nothing. 
This option can also be set in the main lynx configuration file. The default 
is off so just look for a line that says TAGSOUP:FALSE and change to: 
TAGSOUP:True I haven't tested this on other pages so hopefully it doesn't 
break other things.

On Wed, 13 Nov 2019, Brian Buhrow wrote:

> 	hello.  There is a work around for this problem and it still works as
> of this morning.  I've been using it for years.
>
> 1.  Start lynx as you normally would with your favorite startup page.
>
> 2.  Press o for options to open the options form.
>
> 3.  Search for the accept cookies entry.
>
> 4.  Say yes to cookies, ssl certs, ssl errors. etc.
>
> 5.  Tab or search down to the user agent string.
>
> 6.  Check the box that says, send user agent string.  Make sure it's
> checked.
>
> 7.  For the user agent string delete the existing string and write:
> Mozilla/4.0 (compatible; MSIE 11.2; Linux-14.4)
>
> 8.  Press accept.
>
> Now, when you  go to www.google.com, you should be able to enter search
> terms, click on the Google Search button, and see a results page with
> usable links.
>
> 	As a side work around, sometimes you'll encounter pages that won't
> display and will give you an error like: Forbidden, with some text about
> performance and security from Cloudflare.  If you go into options, turn off
> the send user agent string, press accept and reload the page, that usually
> gets the content.  Remember, however, that if you don't send the user agent
> string when using Google search pages, you won't get usable results pages,
> so I usually turn the user agent string back on when I'm done with the
> Cloudflare pages.
>
> Hope that helps.
>
> -Brian
>
> On Nov 13, 12:39pm, Ari Moisio wrote:
> } Subject: Re: cannot go to google search results with lynx
> } Hi
> }
> } I noticed same behaviour. Not found any workaround yet.
> }
> }
> }
> } --
> } mr. M01510 & guide Loadstone-GPS  Lat: 62.38718, lon: 25.64672
> } hkp://wwwkeys.pgp.net B784D020 fp:0C1F6A76 DC9DDD58 33838B5D 0E769600 B7840D02
> }
> }
> }   Willem van der Walt kirjoitti
> } > Subject: cannot go to google search results with lynx
> } > Date: Wed, 13 Nov 2019 12:10:56
> } > From: Willem van der Walt <wvdwalt@csir.co.za>
> } > To: Speakup is a screen review system for Linux. <speakup@linux-speakup.org>
> } >
> } >
> } > Hi, Willem here.
> } > In the last few days, the google search results through lynx became unusable.
> } > Does anyone else also experience this?
> } > If so, is there a work-around apart from using another browser?
> } > TIA, Willem
> } >
> } >
> } >
> } > _______________________________________________
> } > Speakup mailing list
> } > Speakup@linux-speakup.org
> } > http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> } >
> } _______________________________________________
> } Speakup mailing list
> } Speakup@linux-speakup.org
> } http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>> -- End of excerpt from Ari Moisio
>
>
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
