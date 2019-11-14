Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id A2AFEFBEE8
	for <lists+speakup@lfdr.de>; Thu, 14 Nov 2019 06:02:35 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1F9C81C46B0; Thu, 14 Nov 2019 00:02:35 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=fastmail.fm header.i=@fastmail.fm header.b="fAk68c+I";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.b="D0ypWL7u";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 811321C46B8;
	Thu, 14 Nov 2019 00:01:17 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 65CC61C4384; Thu, 14 Nov 2019 00:01:10 -0500 (EST)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 7A9D71C31E1
 for <speakup@linux-speakup.org>; Thu, 14 Nov 2019 00:01:07 -0500 (EST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.nyi.internal (Postfix) with ESMTP id BC11B21F82
 for <speakup@linux-speakup.org>; Thu, 14 Nov 2019 00:01:04 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Thu, 14 Nov 2019 00:01:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
 date:from:to:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=4R9efwFI26hi5pptR4QgBrc91Rv
 Qbicw6w0TlK1N/dY=; b=fAk68c+IK3u6InBkj1Y0RRRRLR145E1dEXz6Y6oR1dD
 682s5A9dqlJuui2BC7YIWV/+Ael7nP7LGFpv6R9NGCHUXj/Au+4iqNe01obS86d7
 e5ce44sNerGKAdarPdAvhyMStIm8/kYZ71dbzqTySfJ4zB4rAU8t/eLFc88HOOmG
 9QWBbAWMgF9j8rppd/Dx5FpPgvTNp02tzrX/s18HbA9k6GU23nkNq1J4R7ojtrdl
 /0Uq+d9omT2oQp242xQJLPGIDEMSjBSj7p6kE0UV2uf4c/2tJgvqGEqNA3LOlW2V
 DH92lwCvxTlWFBEmDVrip/FVrWvCcvu3iiBW9TNXI/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=4R9efw
 FI26hi5pptR4QgBrc91RvQbicw6w0TlK1N/dY=; b=D0ypWL7uf67OXiIKBPmfbY
 +wzBnJvbmegw5JjcsiKWzGDKId51sDSKacZ0usiTxpXbOrUX/DRSqW1T3BUbaWPT
 ArAYLSvjVGfMNNzTXFEb5oQb9lsaTz5LgWqtDheK9Nz6E1IoAR3E8I5fU6p4UN3r
 uLOBUf0GPij3O3OovP5j7DXORBX1foSNOOnlBdqmAXdOTSrMAAnfNYPxxZ2SVM5k
 phc6rKAzpH9JQXgzmNMBnh2EceEphS4qnG2rgV0oOUu6bqLleJEwtUgcz+fQH+2E
 qpUR8VWIlUOT/M4HUQo9nKT3V3xEUzMZTqGyNjtt/YB13rJLcBUnLK92E5QGvlVw
 ==
X-ME-Sender: <xms:kN_MXeV9HEtGqsGk7UCvRFmCVs4XbJI3IaZEwfR0cojlUllJLek22Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudefvddgjeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujggfsehttd
 ertddtredvnecuhfhrohhmpefvohhmucfhohiflhgvuceofigriehivhhgthhfsehfrghs
 thhmrghilhdrfhhmqeenucffohhmrghinheplhhinhhugidqshhpvggrkhhuphdrohhrgh
 enucfkphepgeejrddvtdekrddugeeirdeftdenucfrrghrrghmpehmrghilhhfrhhomhep
 figriehivhhgthhfsehfrghsthhmrghilhdrfhhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:kN_MXe1NftrwC7qMasthmqKJamYl_QHaoO0FDd0AaAY6yEyKdoMaGw>
 <xmx:kN_MXdYI8Z_mNadijkFH_29R6FAxXFIjYKrxRPsAeNboAUF7s4_NUw>
 <xmx:kN_MXZoQ2G_XNdYQt8osNOcUbX7JT8OCP737rMmfnQ19YnQwcQSSWA>
 <xmx:kN_MXbewQBHujGoB1VWdGwQlriom34BHL_9wBvfSEGFyPpdHA-t0Rw>
Received: from qlf.suddenlink.net (unknown [47.208.146.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 24B173060065
 for <speakup@linux-speakup.org>; Thu, 14 Nov 2019 00:01:04 -0500 (EST)
Date: Wed, 13 Nov 2019 21:00:55 -0800
From: Tom Fowle <wa6ivgtf@fastmail.fm>
To: speakup@linux-speakup.org
Subject: Re: cannot go to google search results with lynx
Message-ID: <20191114050055.GA1138@qlf.suddenlink.net>
Mail-Followup-To: speakup@linux-speakup.org
References: <alpine.DEB.2.21.1.1911131209350.30457@willempc.meraka.csir.co.za>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1.1911131209350.30457@willempc.meraka.csir.co.za>
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

Willem,
I simply put in "solder" in the google search box and hit "I'm feeling
lucky"
came up with a definition of solder and lots of stuff including catalog
entries from Mouser etc.
using lynx-2.8.8

I did allow and accept cookies and "invalid cookie paths"
what ever those are.

Tom Fowle WA6IVG

On Wed, Nov 13, 2019 at 12:10:56PM +0200, Willem van der Walt wrote:
> 
> Hi, Willem here.
> In the last few days, the google search results through lynx became unusable.
> Does anyone else also experience this?
> If so, is there a work-around apart from using another browser?
> TIA, Willem
> 
> 
> 
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
