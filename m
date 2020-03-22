Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 41E2218ED38
	for <lists+speakup@lfdr.de>; Mon, 23 Mar 2020 00:12:20 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 1B959428045E; Sun, 22 Mar 2020 19:12:19 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=reisers.ca header.i=@reisers.ca header.b="Lv5LMD5q";
	dkim=pass (1024-bit key) header.d=reisers.ca header.i=@reisers.ca header.b="eQ+tXqt3";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=reisers.ca header.i=@reisers.ca header.b="Cjk4Stpt";
	dkim=neutral (0-bit key) header.d=reisers.ca header.i=@reisers.ca header.b="njMvD63q";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 8B68742804A3
	for <lists+speakup@lfdr.de>; Sun, 22 Mar 2020 19:09:18 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 49A271C73BE; Sun, 22 Mar 2020 19:09:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1584918558;
	bh=0BZ1bdQ4xEN+9mt2W9YxEAVNG2OlrlmB3iLgWRL3q1s=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=Lv5LMD5qISeMyLFR6FiSjeK9riixsHb69CahVlOZZgo54niaB2UrbfOT9intZGnvH
	 uHEuSgq9Ep25FFupWi2+EKqcJYyho2nseXF2e8APcMRzfvuJxNuClQ8p8XXdtfI9jS
	 LwxHZnRUVM8dMqCOWK2QcF40ZxJ0qjtGIBlEzpz0=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0265E1C73CD;
	Sun, 22 Mar 2020 19:08:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1584918532;
	bh=0BZ1bdQ4xEN+9mt2W9YxEAVNG2OlrlmB3iLgWRL3q1s=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=eQ+tXqt3EXEwzYguVp65KTih8abgojlDKpGdPEyJfUzsf27p+RMx0e+JN0l9dknWx
	 NUr77RpCQbSgSKE1GwtV9HIppIP10K8hvxmXtoHtwIbuNX5yJpZjMJ4gKmQjyNJTqO
	 znb8uhBBF68i/8lTgSeST0kzLoXK2Fete3CsOzy4=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id BB2401C2CDF; Sun, 22 Mar 2020 19:08:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1584918528;
 bh=QYOdLdeYUITMV4cQCX4I8JuFQgUIrBECgke5FLnDu1Y=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=Cjk4Stpths98v7SvxMW/gT70NYftzxYJ9iZAXqrIGFmAjMwqabYpI8w0kx/BERZ+4
 N290YHE0mF+fdKwmOeb3NgHx3ytJb4Pb3EcAli0N87x5QlUoTKVmGBwJznzm8dHKRH
 h9cyh61/pAf9v+50iujh2QHsqW5Q0U7DAff2AkBk=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id EF8B71C0148;
 Sun, 22 Mar 2020 19:08:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1584918524;
 bh=QYOdLdeYUITMV4cQCX4I8JuFQgUIrBECgke5FLnDu1Y=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=njMvD63q09Dx0UhbC1OxAyc95m/quCU7njFt5GXeuPLrdAp93dDxbPbOUXuZhrGEK
 1gApu8axpZfuviwBW7L2lNJmyXMGB6iJZGEeC4jY/uGwahd7Bi71MhGw+4pW83hJvX
 ulr361kcsSsUXTirjKrujwUwx2FJD+M8Jge5qBKs=
Date: Sun, 22 Mar 2020 19:08:43 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: [raspberry-vi] A bit off topic, Speakup and Debian Stretch-Buster
 (fwd)
In-Reply-To: <20200322210257.zqxh5jp7fo64hp36@function>
Message-ID: <alpine.DEB.2.22.394.2003221903340.160888@befuddled.reisers.ca>
References: <Pine.LNX.4.64.2003211738470.31197@server2.shellworld.net>
 <20200322210257.zqxh5jp7fo64hp36@function>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
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
Cc: old78rpm@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

There was a short period of time when the list was down for a week or
two at the end of February. If Chris tried during that time period he
may have thought the list was gone. However, I got the sense that he
thought it was down for a lot longer time period so maybe he doesn't
have the correct address or something.

I also suspect the losing speech may have been due to the speakup bug
we've been experiencing over the past six months or so. I for one will
be happy when the patch makes it into the sid distro at least.

   Kirk

On Sun, 22 Mar 2020, Samuel Thibault wrote:

> Hello,
>
> Karen Lewellen, le sam. 21 mars 2020 17:39:53 -0400, a ecrit:
>> It appears the old Speakup list is long dead.
>
> ? it is up and running, there were messages on each of the past months.
>
>> After several attempts to get somebody at the Debian accessibility email
>> address to respond
>
> Neither the speakup nor the debian-accessibility mailing lists have
> however received any of your emails, there must be some smtp issue
> between your ISP and them.
>
>> Speech just goes dead.
> [...]
>> It seems to be related to how frequently I cause speech interupts by typing
>> or stopping speech during long output.
>
> Did anybody notice something like this?
>
> Samuel
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
