Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id F1990FD204
	for <lists+speakup@lfdr.de>; Fri, 15 Nov 2019 01:35:44 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 538C31C46B5; Thu, 14 Nov 2019 19:35:44 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 26D2A1C4706;
	Thu, 14 Nov 2019 19:35:05 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 4597B1C46B1; Thu, 14 Nov 2019 19:35:03 -0500 (EST)
Received: from lothlorien.nfbcal.org (ns.NFBCAL.ORG [157.22.230.125])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 4BBAD1C3230
 for <speakup@linux-speakup.org>; Thu, 14 Nov 2019 19:34:59 -0500 (EST)
Received: from lothlorien.nfbcal.org (localhost [127.0.0.1])
 by lothlorien.nfbcal.org (8.15.2/8.14.1-NFBNETBSD) with ESMTPS id
 xAF0YpNf001334
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 14 Nov 2019 16:34:52 -0800 (PST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.97.3 at lothlorien.nfbcal.org
Received: (from buhrow@localhost)
 by lothlorien.nfbcal.org (8.15.2/8.12.11) id xAF0YpVo003942;
 Thu, 14 Nov 2019 16:34:51 -0800 (PST)
Message-Id: <201911150034.xAF0YpVo003942@lothlorien.nfbcal.org>
From: Brian Buhrow <buhrow@nfbcal.org>
Date: Thu, 14 Nov 2019 16:34:51 -0800
In-Reply-To: <Pine.LNX.4.64.1911141904170.2982@server2.shellworld.net>
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
To: Karen Lewellen <klewellen@shellworld.net>
Subject: Re: cannot go to google search results with lynx
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.4.3
 (lothlorien.nfbcal.org [127.0.0.1]); Thu, 14 Nov 2019 16:34:52 -0800 (PST)
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
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 buhrow@nfbcal.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

	hello.  I don't usually use the list page (numbered links).  Instead,
I search for the word I want and find the link nearest to that word.
You may need to use the -show_cursor command line switch to get your screen
reader to follow Lynx's cursor.

-Brian

On Nov 14,  7:06pm, Karen Lewellen wrote:
} Subject: Re: cannot go to google search results with lynx
} Yes, I know we are talking about lynx.  The situation is that the same 
} sort of issues with google searches in Lynx, also apply if one wants to 
} read  your basic html in lynx as well.
} For the record, your work around does not  produce link numbers in 
} searches.  the control v option can produce links, just no longer 
} numbered.
} Karen
} 
} 
} On Wed, 13 Nov 2019, Brian Buhrow wrote:
} 
} > 	hello.  I do not have a gmail account, but I don't think this work
} > around  is dependent on having a gmail account.  We're talking about lynx,
} > the text based browser.
} >
} > -thanks
} > -Brian
} >
} > On Nov 13,  5:19pm, Karen Lewellen wrote:
} > } Subject: Re: cannot go to google search results with lynx
} > } Brian,
} > } Do you have a gmail account?
} > } If so, does this solution work?
} > }
} > }
} > }
} > } On Wed, 13 Nov 2019, Brian Buhrow wrote:
} > }
} > } > 	hello.  There is a work around for this problem and it still works as
} > } > of this morning.  I've been using it for years.
} > } >
} > } > 1.  Start lynx as you normally would with your favorite startup page.
} > } >
} > } > 2.  Press o for options to open the options form.
} > } >
} > } > 3.  Search for the accept cookies entry.
} > } >
} > } > 4.  Say yes to cookies, ssl certs, ssl errors. etc.
} > } >
} > } > 5.  Tab or search down to the user agent string.
} > } >
} > } > 6.  Check the box that says, send user agent string.  Make sure it's
} > } > checked.
} > } >
} > } > 7.  For the user agent string delete the existing string and write:
} > } > Mozilla/4.0 (compatible; MSIE 11.2; Linux-14.4)
} > } >
} > } > 8.  Press accept.
} > } >
} > } > Now, when you  go to www.google.com, you should be able to enter search
} > } > terms, click on the Google Search button, and see a results page with
} > } > usable links.
} > } >
} > } > 	As a side work around, sometimes you'll encounter pages that won't
} > } > display and will give you an error like: Forbidden, with some text about
} > } > performance and security from Cloudflare.  If you go into options, turn off
} > } > the send user agent string, press accept and reload the page, that usually
} > } > gets the content.  Remember, however, that if you don't send the user agent
} > } > string when using Google search pages, you won't get usable results pages,
} > } > so I usually turn the user agent string back on when I'm done with the
} > } > Cloudflare pages.
} > } >
} > } > Hope that helps.
} > } >
} > } > -Brian
} > } >
} > } > On Nov 13, 12:39pm, Ari Moisio wrote:
} > } > } Subject: Re: cannot go to google search results with lynx
} > } > } Hi
} > } > }
} > } > } I noticed same behaviour. Not found any workaround yet.
} > } > }
} > } > }
} > } > }
} > } > } --
} > } > } mr. M01510 & guide Loadstone-GPS  Lat: 62.38718, lon: 25.64672
} > } > } hkp://wwwkeys.pgp.net B784D020 fp:0C1F6A76 DC9DDD58 33838B5D 0E769600 B7840D02
} > } > }
} > } > }
} > } > }   Willem van der Walt kirjoitti
} > } > } > Subject: cannot go to google search results with lynx
} > } > } > Date: Wed, 13 Nov 2019 12:10:56
} > } > } > From: Willem van der Walt <wvdwalt@csir.co.za>
} > } > } > To: Speakup is a screen review system for Linux. <speakup@linux-speakup.org>
} > } > } >
} > } > } >
} > } > } > Hi, Willem here.
} > } > } > In the last few days, the google search results through lynx became unusable.
} > } > } > Does anyone else also experience this?
} > } > } > If so, is there a work-around apart from using another browser?
} > } > } > TIA, Willem
} > } > } >
} > } > } >
} > } > } >
} > } > } > _______________________________________________
} > } > } > Speakup mailing list
} > } > } > Speakup@linux-speakup.org
} > } > } > http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
} > } > } >
} > } > } _______________________________________________
} > } > } Speakup mailing list
} > } > } Speakup@linux-speakup.org
} > } > } http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
} > } >> -- End of excerpt from Ari Moisio
} > } >
} > } >
} > } > _______________________________________________
} > } > Speakup mailing list
} > } > Speakup@linux-speakup.org
} > } > http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
} > } >
} > } >
} >> -- End of excerpt from Karen Lewellen
} >
} >
} >
>-- End of excerpt from Karen Lewellen


_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
