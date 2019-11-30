Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CAFDE10DC5F
	for <lists+speakup@lfdr.de>; Sat, 30 Nov 2019 06:03:32 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 094071C4416; Sat, 30 Nov 2019 00:03:32 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=fastmail.fm header.i=@fastmail.fm header.b="lrgHPOR5";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.b="V+I1Y+u6";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 163DA1C4732;
	Sat, 30 Nov 2019 00:01:58 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 22C331C4416; Sat, 30 Nov 2019 00:01:43 -0500 (EST)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 6C48A1C32FC
 for <speakup@linux-speakup.org>; Sat, 30 Nov 2019 00:01:38 -0500 (EST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.nyi.internal (Postfix) with ESMTP id 821E1225ED
 for <speakup@linux-speakup.org>; Sat, 30 Nov 2019 00:01:37 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Sat, 30 Nov 2019 00:01:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
 date:from:to:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=ULisVBgrCdPIHZCp1s8GTuLrFwD
 hZC3Bk4NpG+ctslc=; b=lrgHPOR51JMTvoBCDCDpdbbXyi6ZwcZLm4qbZRPoKnT
 vtuxDRWNwkCklP9L6UoyIJf0MrWUJCaaLBsYSyDtaLQ5X6DX1EoR+n1Yz9/HOLsF
 Ti2BE7Xme2nLewVdOPJkyptYdbJjZKhTKlrMNdKTEzUVWNF1riVmrEtzQz2hZiAt
 HMdIxtIvF3M/ep3z/BC2TA7E32jrbxeVfDCwfBCeDkWF97FeEL4APJa1mbE95oTd
 ayhLFHkn9tHF8m2FGPtxzURY67+SgztYCbQNinYvobVXcd6lpfrKAQYTiCHxv8NU
 rNlTHGIEdpJcmEQXzMaFNkojjbtRk+jy3n75ntrARWA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=ULisVB
 grCdPIHZCp1s8GTuLrFwDhZC3Bk4NpG+ctslc=; b=V+I1Y+u6PCVCMphyzOT7n0
 SsmYBHS+imkQYVcCGDJsD3YvMUJItvBPL/EYWkd2Tm2Oki21D0qTHHZesL3yGjDE
 acAwRV2eYuiVRzzsevxjg1y/v1+mmVU+mmZv3E/BuMKTOloh3XHIa350kgePseR+
 lxU6fjARsdtv9I5Xsn7Wyso3rykz0aksXeVV7lgnMmrUG+3FNZrwk6hph9gQq1Jv
 Uen0gmOC334O4o4aF6CrCbX0G5khxxcOZDjCSAlWQ17GSK2DD41ohPjrBzV+wKYf
 CLge1r8oeR3JSXYVfwqFox8O/07RH3gOTaw7nKapgsN44SVPwFLGMqset7KiXMRw
 ==
X-ME-Sender: <xms:sffhXQPu143Zwpr4mmy-S18iiXLQYXmQahsofrJ8eBRVdMclSdIONg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejtddgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujggfsehttd
 ertddtredvnecuhfhrohhmpefvohhmucfhohiflhgvuceofigriehivhhgthhfsehfrghs
 thhmrghilhdrfhhmqeenucffohhmrghinheprhgvrghltghlvggrrhhpohhlihhtihgtsh
 drtghomhdprhhuugihvhgvnhgvrhdrtghomhdplhhinhhugidqshhpvggrkhhuphdrohhr
 ghenucfkphepgeejrddvtdekrddugeeirdeftdenucfrrghrrghmpehmrghilhhfrhhomh
 epfigriehivhhgthhfsehfrghsthhmrghilhdrfhhmnecuvehluhhsthgvrhfuihiivgep
 td
X-ME-Proxy: <xmx:sffhXdiNoMEqDk-nWpFd4ORcdMc0VPGfK-k5NMTuB2BJG8nwTzzVGQ>
 <xmx:sffhXUv-CGsy5NaTvZ9vOjNkDxU2watkxs-c5WRfDD8k2rtGuH6sqA>
 <xmx:sffhXY6Lk1HLZ6h77k-2L9Au98_N7lRg6ak0rgbHyoxP5SALDMJZWw>
 <xmx:sffhXRwSwgTmffPm7yjkXgObPwtmoZcc1A94uniMkfEhRcZS7YWkrg>
Received: from qlf.suddenlink.net (unknown [47.208.146.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id A9E5D8005C
 for <speakup@linux-speakup.org>; Sat, 30 Nov 2019 00:01:36 -0500 (EST)
Date: Fri, 29 Nov 2019 21:01:26 -0800
From: Tom Fowle <wa6ivgtf@fastmail.fm>
To: speakup@linux-speakup.org
Subject: Re: improving the speach output of Links the chain?
Message-ID: <20191130050126.GA1054@qlf.suddenlink.net>
Mail-Followup-To: speakup@linux-speakup.org
References: <mailman.1.1575046802.6422.speakup@linux-speakup.org>
 <20191129184957.GB24896@panix.com>
 <Pine.LNX.4.64.1911291353180.6589@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.1911291353180.6589@server2.shellworld.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
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

Hi Karen,
If you're using dos, you must be using a dos screen reader. I think you want
an option like lynx's "show cursor" option which causes the browser to make
the system "hardware cursor" follow the browser's cursor.  This makes it
more likely your dos screen reader will be able to find the correct text to
speak.

Sorry I can't find a command line option in links that does that but 
perhaps my discription will guide you to it.
It's likely the option is in an option screen as it is in lynx's Alt-o

Hope this helps a bit

Tom Fowle WA6IVG


On Fri, Nov 29, 2019 at 01:57:07PM -0500, Karen Lewellen wrote:
> As stated before though,  I get no clutter  on websites when using  well
> anything I use.
> I felt there was an option for links the chain, because when I use the
> browser  on shellworld, information gets spoken, i. e.  the progress  of my
> reaching  a website.
> I will ask on the Dos Ain't Dead list instead, since my compile of Links the
> chain is for DOS.
> Karen
> 
> 
> On Fri, 29 Nov 2019, Rudy Vener wrote:
> 
> >Hi Karen,
> >
> >I am not aware of any arguments for links the chain to improve readability.
> >
> >With either links (the chain) , lynx (the cat), or w3m,
> >I get the best results with a combination of browser keys to get me
> >close to the target text, and speakup keys. to actually read it.
> >With all the text clutter on most pages, your best bet is to become familiar with
> >specific landmarks on the site you want to review so you
> >can jump straight to your target using the text search functions.
> >For example, I use slash day of week, /Friday to
> >jump to the latest article links on realclearpolitics.com.
> >
> >
> >On Fri, Nov 29, 2019 at 12:00:02PM -0500, speakup-request@linux-speakup.org wrote:
> >>Subject: ot: slightly, improving how the Links browser speaks?
> >>
> >>Hi folks,
> >>Hope to ask this clearly, as it may also apply to speakup, at least for
> >>those   using  a command line setup.
> >>My goal mirrors the command line options included in some tools that write
> >>information to the screen in a way that speech happens largely
> >>automatically.
> >>For example, some programs call this writing to the BIOS, or used to do as
> >>much.
> >>My ssh telnet client for example has a -b option that performs the
> >>function I desire.
> >>I am seeking such a command line option for the links  as in the chain
> >>browser.  I believe? it should exist because there is a command line
> >>option that establishes numbered links.
> >>hoping that my question is clear, can anyone tell me what command line
> >>option improves  how content is spoken when using the links browser?
> >>Thanks,
> >>Karen
> >>
> >>
> >
> >-- 
> >Rudy Vener
> >Website: http://www.rudyvener.com
> >_______________________________________________
> >Speakup mailing list
> >Speakup@linux-speakup.org
> >http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> >
> >
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
