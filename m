Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 1C75C19641D
	for <lists+speakup@lfdr.de>; Sat, 28 Mar 2020 08:17:19 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id DB8DD4280475; Sat, 28 Mar 2020 03:17:17 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.b="gAPmidFk";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id C7EA54280517
	for <lists+speakup@lfdr.de>; Sat, 28 Mar 2020 03:17:05 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A06F61C57D0; Sat, 28 Mar 2020 03:17:05 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=default header.b=gAPmidFk;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C463E1C73B8;
	Sat, 28 Mar 2020 03:15:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 2D7521C57D0; Sat, 28 Mar 2020 03:15:39 -0400 (EDT)
Received: from out.migadu.com (out.migadu.com [91.121.223.63])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 75E021C2B5F
 for <speakup@linux-speakup.org>; Sat, 28 Mar 2020 03:15:26 -0400 (EDT)
Received: (Migadu outbound); Sat, 28 Mar 2020 07:15:23 +0000
Authentication-Results: out.migadu.com; auth=pass (plain)
Received: from localhost (tor-exit-4.zbau.f3netze.de [185.220.100.255])
 by out.migadu.com (Haraka/2.8.16) with ESMTPSA id
 E286167C-AEBD-4908-8EED-17D4791853D8.1
 envelope-from <contact@jookia.org> (authenticated bits=0)
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 verify=FAIL);
 Sat, 28 Mar 2020 07:15:23 +0000
Date: Sat, 28 Mar 2020 18:14:03 +1100
From: Jookia <contact@jookia.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup on latest kernels
Message-ID: <20200328071403.GM1639@novena-choice-citizen>
References: <77f47396-554f-3d0a-fd9d-fc760ecb2dfe@the-brannons.com>
 <20200130053303.GA4319@gregn.net>
 <9ca2e37d-f293-9b7b-80a2-177cbccfb08e@gmail.com>
 <alpine.NEB.2.21.2001301518500.16863@panix1.panix.com>
 <20200303131128.7d4uitw7feevimoj@function>
 <alpine.LNX.2.22.411.2003271958160.10657@io.coolip.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.22.411.2003271958160.10657@io.coolip.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
DKIM-Signature: v=1; a=rsa-sha256;
 bh=D/8iIsxiwtXIFblUT5xYZ8p5DG5f8DJjNV2wCncCmIw=; c=relaxed/simple;
 d=jookia.org; h=from:subject:date:to; s=default;
 b=gAPmidFk8zCggBCnwIIFOEox9QshurKbTc3W2M1RGgmOTd2XqVraO4A01lWDRiyZKV0nUI76ZT+TZDH0ikKrj0WhhHwmZX1CXX1eotg8ICWYqYIuwwBQk9kZWot1cpvLmiLfpe+WXJ8Wy7AoP2nyCMVMXSVgqWMLRDc2dVi0jJ4=
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
Cc: Janina Sajka <janina@rednote.net>, Gregory Nowak <greg@gregn.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

It updated today to 5.5.13, but 5.5.12 should be fine.

On Fri, Mar 27, 2020 at 08:12:55PM -0400, Kelly Prescott wrote:
> This patch appears to now be included in arch Linux after upgrading the
> kernel to 5.5.13-arch1
> Could someone also confirm this for me?
> I got my information from
> https://git.archlinux.org/archlinux.git/log/?h=v5.5.12-arch1&ofs=50&showmsg=1
> 
> 
> 
> On Tue, 3 Mar 2020, Samuel Thibault wrote:
> 
> > Hello,
> > 
> > For people who have had crashes with latest kernels and can rebuild
> > their own kernel, could you try to apply the attached patch? It seems to
> > be fixing things and for sure would trigger crashes when doing get_word
> > while speakup is on a space. The issue has been there for at least 10
> > years, it's a bit crazy that only now we have crashes with it :)
> > 
> > Samuel
> > 
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
