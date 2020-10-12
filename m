Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 0387428B6CD
	for <lists+speakup@lfdr.de>; Mon, 12 Oct 2020 15:38:17 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 93B9D380BD4; Mon, 12 Oct 2020 09:38:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1602509896;
	bh=KqFwoi9VnsmpeSpoyvC1glt3TgJKYWcQxQ1A8VSiB/4=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=wbriPqiVFhrHDNvfPiKUkTnkiFSEd6B87itW2HnjrqCBSRzCkvWeKngl4R/oGoGjW
	 3YsdnpE8ZNBXGfbjXBOsLRjAiRu07O7AWVv8zUEWlwnKfZj9yXtKVKVW9bAWmHRg8u
	 2ApyvoZSxHev2D6LJ54wAJ5pgl/UdX3Ytmj6ifkc=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 18ECB380BCA;
	Mon, 12 Oct 2020 09:38:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1602509893;
	bh=KqFwoi9VnsmpeSpoyvC1glt3TgJKYWcQxQ1A8VSiB/4=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=EXFxQf7Z8odX+tnL1Z3CJUU4pFubX93xSmNK+1k4ZwOyERe0UfNlBrUmDi9/cipkc
	 wBCS44RLYJxCMVkjfMJgUJQHKXiWFZWhouehFCR2BfcmluiMHRWI7bYgzM4bUYKp3y
	 LxLaR+Z/gVhbmI5bvoqm7D+plMCb2dfWRITurGHc=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id D197D380BB7; Mon, 12 Oct 2020 09:38:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1602509891;
 bh=/l91ifR6ppnI/wS0uuji8/+ShLZPlUtD2PYVYRYQE6I=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=boAhlv97DMH12EsoyZiJ6uGKfrMr8HdjpV9iRxATonX3vtbluOs4dGnHc75cIPonR
 O2X1lCwNyXOqOxbpWQbFuEO2T0dnw6hBRpxYW5N/6yRQ+8A41biwv6arUe9nFn2mtN
 oJdu1H5KpriNNOrEEIRMPTgN14UDLqjJFV7KTpFI=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B60A2380BB3
 for <speakup@linux-speakup.org>; Mon, 12 Oct 2020 09:38:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1602509891;
 bh=/l91ifR6ppnI/wS0uuji8/+ShLZPlUtD2PYVYRYQE6I=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=boAhlv97DMH12EsoyZiJ6uGKfrMr8HdjpV9iRxATonX3vtbluOs4dGnHc75cIPonR
 O2X1lCwNyXOqOxbpWQbFuEO2T0dnw6hBRpxYW5N/6yRQ+8A41biwv6arUe9nFn2mtN
 oJdu1H5KpriNNOrEEIRMPTgN14UDLqjJFV7KTpFI=
Date: Mon, 12 Oct 2020 09:38:11 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Linux 5.9 is out with speakup
In-Reply-To: <20201012132922.mghdcuf5zotung5w@function>
Message-ID: <alpine.DEB.2.23.453.2010120936060.74954@befuddled.reisers.ca>
References: <20201012132922.mghdcuf5zotung5w@function>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

On Mon, 12 Oct 2020, Samuel Thibault wrote:

> Hello,
>
> Linux 5.9 is out, in which speakup is exposed mainline and not in
> staging any more!

Woohoo! Thanks to you Samuel for all your workt and everybody elses
that made getting speakup out of staging a priority.

   Kirk

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
