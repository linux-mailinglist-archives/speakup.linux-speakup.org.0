Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BD8901AF673
	for <lists+speakup@lfdr.de>; Sun, 19 Apr 2020 05:31:21 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E99431C73C0; Sat, 18 Apr 2020 23:31:20 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=fastmail.fm header.i=@fastmail.fm header.a=rsa-sha256 header.s=fm2 header.b=VCiu/taa;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=DZeZyjZv;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9C2A91C73DE;
	Sat, 18 Apr 2020 23:30:51 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id D48141C57B4; Sat, 18 Apr 2020 23:30:47 -0400 (EDT)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by befuddled.reisers.ca (Postfix) with ESMTPS id F10AF1C0B50
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 23:30:37 -0400 (EDT)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 432325C0066
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 23:30:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Sat, 18 Apr 2020 23:30:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
 date:from:to:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=qctLHGrgs3UwNTTelrXa00GMd51
 rVJ/5E1/5BKyAPAQ=; b=VCiu/taatUqWzoah5w4B9j155seB+2GeVLSzLLOCY9n
 N4iG3aQUfbnA0DLJObIHT3VJQpRGQwNFLHW8foycFCoh3uIMrDh+FUORA8r1DEi0
 PXPhHFVqZ0knI0fr2h1yFSoxCqZq9w1Bj2HV51Zv1hbbWCVPzCgox4uhN0TRzqjT
 1NMHXXVdaRY6QOaUPjToOXxaN+u04KsQc40RyAE+BTDSEVlPFYW/YRNU2JjCprIE
 wcaESjPZY4QViEvFTifIqenlekmEmlmMXxocR/K5EyNqROKNvdJPb3Udg+uu4MKQ
 2KhQCUIMvvadPR561Zl5pZKg5Vz2XLUAj8cfPQGonIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=qctLHG
 rgs3UwNTTelrXa00GMd51rVJ/5E1/5BKyAPAQ=; b=DZeZyjZv/iMk091woU+Q9t
 O1Wmj42CTcYqppsSZs1Best2tj2QP9UhzNkY/mr9qgQ9njoNLQOWlWqOUJRpNnu3
 rMmGViogTarFeUwqdg955wR6a4Xpijr7T8e69wLmBa6Gz5VGguKk7zL3XecjqttU
 +GMJcXJcJzh9QSGK77vQpzrM93gb5VaE+Lp6SCMaY8v0DbfzPPkoLX6veX1vJYEk
 3TztirPFE3i9SW02omV0UW2ED3XE/BIhtK0Ahfk93RLbUEI2DjMxBvOBugCzpYjw
 q9gpI8kPu9Y88hYM++TwHYSQVQfcjZStiEi6jGR0Kq+ql7sT34AfJcD7f5NYJr4w
 ==
X-ME-Sender: <xms:2sWbXlTyfDOAcdajPPavfGW2B1NiwdJPsj0NS9bo47RZo4QGwms7dw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgedtgdejtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecuogfuuhhsphgvtghtffhomhgrihhnucdlgeelmdenuc
 fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefvohhmucfh
 ohiflhgvuceofigriehivhhgthhfsehfrghsthhmrghilhdrfhhmqeenucffohhmrghinh
 epghhrvghgnhdrnhgvthdpvghurdhorhhgpdhlihhnuhigqdhsphgvrghkuhhprdhorhhg
 necukfhppeegjedrvddtkedrudegiedrfedtnecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepfigriehivhhgthhfsehfrghsthhmrghilhdrfhhm
X-ME-Proxy: <xmx:2sWbXhjypJMwq7mwh0rpjHOzBrZFvukOfnB6GXc_HoGbWpDr-dv6kQ>
 <xmx:2sWbXns_OaA5vqRBk3_niM0kOOxPFV3pt2uAS6SfmEtQUHHH5weFqA>
 <xmx:2sWbXkg6y9MQM0BIifA9xHso6OXKjSgVWzUTyiEJdTau08G4iZe2bA>
 <xmx:28WbXrCdz8evYwILNY7tZJndzuV-dcpVMUtneWAlxpomgO1SLs4oPA>
Received: from qlf.suddenlink.net (unknown [47.208.146.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7BBAE306005E
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 23:30:34 -0400 (EDT)
Date: Sat, 18 Apr 2020 20:30:24 -0700
From: Tom Fowle <wa6ivgtf@fastmail.fm>
To: speakup@linux-speakup.org
Subject: Re: DecTalk Settings from Within Speakup?
Message-ID: <20200419033024.GA2777@qlf.suddenlink.net>
Mail-Followup-To: speakup@linux-speakup.org
References: <20200415044239.GA6357@gregn.net>
 <Pine.LNX.4.64.2004150141390.8315@server2.shellworld.net>
 <20200416232813.t2zszb42qd2icfks@function>
 <20200417004033.GA5829@gregn.net>
 <20200417011211.yz4a7gch76ewp6j5@function>
 <Pine.LNX.4.64.2004171438170.15807@server2.shellworld.net>
 <20200417193714.enlesc2vad3phjls@function>
 <Pine.LNX.4.64.2004172029030.20019@server2.shellworld.net>
 <20200418011411.3z37lu4w54yszjt6@function>
 <20200419022742.GA4101@gregn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419022742.GA4101@gregn.net>
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

I strongly second Greg's appreciations below.
I dread the thought of having to use anything except speakup so much
appreciate
that it looks to become an up to date stable part of Debian

Tom Fowle

> 
> Thank you Samuel very much for what you've done for the speakup
> project over the years. It is do to your help and Oakash's that
> speakup is about to be moved from staging into mainline, and I believe
> it is in big part due to Samuel that speakup got into staging to start
> with. What you've done for the speakup project and debian accessibility
> so far is greatly
> appreciated by myself, and I hope by others too.
> 
> Greg
> 
> 
> -- 
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> skype: gregn1
> (authorization required, add me to your contacts list first)
> If we haven't been in touch before, e-mail me before adding me to your contacts.
> 
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
