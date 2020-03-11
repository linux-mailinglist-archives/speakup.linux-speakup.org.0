Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 435A6183ED4
	for <lists+speakup@lfdr.de>; Fri, 13 Mar 2020 02:47:35 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id B4564428050C; Thu, 12 Mar 2020 21:47:34 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=rednote.net header.i=@rednote.net header.b="LfCi7uxX";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id EB8FC42804EB
	for <lists+speakup@lfdr.de>; Thu, 12 Mar 2020 21:47:33 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9C22B1C7293; Thu, 12 Mar 2020 21:47:33 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=default header.b=LfCi7uxX;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 857C21C7310;
	Thu, 12 Mar 2020 21:30:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id D405B1C2DE6; Wed, 11 Mar 2020 09:32:50 -0400 (EDT)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 927771C2C7A
 for <speakup@linux-speakup.org>; Wed, 11 Mar 2020 09:32:39 -0400 (EDT)
Received: from rednote.net (localhost [127.0.0.1])
 by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 02BDUQ0P198050
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
 for <speakup@linux-speakup.org>; Wed, 11 Mar 2020 13:30:27 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 02BDUQ0P198050
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rednote.net;
 s=default; t=1583933427;
 bh=s/ngbY0r7fsEroiwL89qFbM7olqgJdFWrH2QpbBgzVY=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=LfCi7uxXevs9Waj5k1Fu9Nbk0t8prMohLBaoKUrJyMyCl/nm8K5Ki9Yc/hYxDZgL7
 6ior3q8ocQqpaSLE+ET5NoWymvEDXBxxoW6IP4AMK1nVRrAyR8NoJKxnujL/+jEM9z
 Mx52NYnm3IQQNXbw6yJ1DuwF5Uo0DK/hgsGqgPIg=
Received: (from janina@localhost)
 by rednote.net (8.15.2/8.15.2/Submit) id 02BDUQvi198049
 for speakup@linux-speakup.org; Wed, 11 Mar 2020 09:30:26 -0400
Date: Wed, 11 Mar 2020 09:30:26 -0400
From: Janina Sajka <janina@rednote.net>
To: speakup@linux-speakup.org
Subject: Re: alsamixer for visually impaired
Message-ID: <20200311133026.GA2494@rednote.net>
References: <20190417185158.gld2rxl6lfvgfkdg@davidb1.opentext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190417185158.gld2rxl6lfvgfkdg@davidb1.opentext.com>
X-Operating-System: Linux opera.rednote.net 5.0.17-300.fc30.x86_64
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

Hi, David:

Just wondering whether you got your feature enhancement into alsamixer?
Did they accept it? If so, I'd be up for installing it and giving it a
spin.

I've been in the habit of using amixer, but no way can I remember all
the numid for my various cards! So, your patch sounds enticing.

Best,

Janina

David writes:
> Instead of reinventing the wheel, a small patch to the standard alsamixer makes it usable.
> I added a -v or --non-visual switch to the options.
> It makes the cursor visible and puts it on line 5 at the start of the item.
> How does one get this included in the real alsamixer distribution?
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

-- 

Janina Sajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
