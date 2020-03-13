Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id CB241183EDC
	for <lists+speakup@lfdr.de>; Fri, 13 Mar 2020 02:50:50 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 58371428050C; Thu, 12 Mar 2020 21:50:50 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=reisers.ca header.i=@reisers.ca header.b="CPtB0ZTC";
	dkim=pass (1024-bit key) header.d=reisers.ca header.i=@reisers.ca header.b="btWsATZR";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=reisers.ca header.i=@reisers.ca header.b="WCp06hbz";
	dkim=neutral (0-bit key) header.d=reisers.ca header.i=@reisers.ca header.b="ZB5i5dc6";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 1D00E428050B
	for <lists+speakup@lfdr.de>; Thu, 12 Mar 2020 21:50:48 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 07BEF1C57EF; Thu, 12 Mar 2020 21:50:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1584064248;
	bh=H12/ZA+vmDgrJxtCKEnqnMp60/mseygN7PPGmX2IyuM=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=CPtB0ZTCZNIHTmq8Sx2VeRemNqVpsXhNRKYBTiY62KWLrJ9kLXWSarwvgOJe0g1A6
	 bfWGPGykVzwt/pkn6RK6nqMjSCp7Q10Wyvq6UTb4e7u6AoIiNoATa7XZwx9heyAGJ1
	 8Rp4plBWtfoBP2GAlKzeZjPxKsYgPWRQfk6ZiJaE=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 59ABD1C725B;
	Thu, 12 Mar 2020 21:50:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1584064217;
	bh=H12/ZA+vmDgrJxtCKEnqnMp60/mseygN7PPGmX2IyuM=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=btWsATZR++umeG3SI3baPA5HuvYVqOW20cr+e2vy/zgGINv1bRSVTD+N8QSoVSW5x
	 vMcWoHDSTnzv27Lrf2SpZzM1g+LXOIl7CflrlpqT5E8Tj/G/sUSRlnLIsNFIyJ0yah
	 JgeVIUxG2TII0PkTM5lZrAmFGZfGXfA3OwK50cTA=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 693891C57D5; Thu, 12 Mar 2020 21:50:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1584064214;
 bh=7ydnJXvvGuBC6fcVtd7anxs0T9Ugq28hp3oCLPz/Lyw=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=WCp06hbzYvXo6yCyBB3jwb7PyK2jzYuGTgxu3aqQgZSQmhpzZhlypONZWzkTW5r+1
 4tOy5rSe+ii52TGcwF7j92SV+WB73xwG6CDbh0VkcIK1fJfjT9oivRGtEjywnHJmUz
 qRQnVmq39Q15CXHgv8Jx1iZWU/DrzFdUnXh9mpIQ=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 585C71C2CD5
 for <speakup@linux-speakup.org>; Thu, 12 Mar 2020 21:49:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1584064193;
 bh=7ydnJXvvGuBC6fcVtd7anxs0T9Ugq28hp3oCLPz/Lyw=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=ZB5i5dc6I1m/zgUA99sf1dfFFJxsvnINQbBgpr6Dhi5n7vvgLEEZkWQCPIek6nY2q
 uiuh1k+iRt6Mzk8oni89ly1ATATxHsTEDXf3PQ2CTsdGWwxWr7Ae0o0jCR8ggbMCOF
 /eD7S7VhWBJ4pfz7gneWtjF86TdY39L8lQpn8dx8=
Date: Thu, 12 Mar 2020 21:49:53 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Just a test message.
In-Reply-To: <alpine.DEB.2.22.394.2003122115320.680117@befuddled.reisers.ca>
Message-ID: <alpine.DEB.2.22.394.2003122148230.680117@befuddled.reisers.ca>
References: <alpine.DEB.2.22.394.2003122115320.680117@befuddled.reisers.ca>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hey me, it's me. it do seem to be kerplunking along once again.

Sorry for the inconvenience!

On Thu, 12 Mar 2020, Kirk Reiser wrote:

> Hey folks just testing because there's suspicion of problems with the
> list.
>
>  Kirk
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
