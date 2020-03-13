Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 75869183ED6
	for <lists+speakup@lfdr.de>; Fri, 13 Mar 2020 02:49:28 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 006EB42804F5; Thu, 12 Mar 2020 21:49:27 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=reisers.ca header.i=@reisers.ca header.b="B0AwThtn";
	dkim=pass (1024-bit key) header.d=reisers.ca header.i=@reisers.ca header.b="H2k1UwSa";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=reisers.ca header.i=@reisers.ca header.b="dV1aXY+Q";
	dkim=neutral (0-bit key) header.d=reisers.ca header.i=@reisers.ca header.b="olrzx1Zt";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id E076C42804F9
	for <lists+speakup@lfdr.de>; Thu, 12 Mar 2020 21:49:25 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D426A1C7218; Thu, 12 Mar 2020 21:49:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1584064165;
	bh=nS5OuLgtLF2YkvWYBUDqFoYbYoEc5vC6XZi65IloqJg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=B0AwThtnWN84LX9vxlizmxGbamZOx3GB+JwCwcr6rfq5Rqq/2NVrbqZHf7EVMzVHb
	 PO4nNNoQYs4qStttehq6kzAKRFDHDNhyq3x5G+cc9fxASAtQ/6XzJbzQHhf6S7hLjS
	 dAx52RsnQkDVdVFXUG4nGc/FjvMKtteFgBHB/drI=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C79C91C7318;
	Thu, 12 Mar 2020 21:30:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1584063050;
	bh=nS5OuLgtLF2YkvWYBUDqFoYbYoEc5vC6XZi65IloqJg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=H2k1UwSaJaxoYUB68lXfPHWdNfwcdTSlKPnu6Ek28kgz4XUP/5UBnZSZVuP1NDrDm
	 0RCjcnQ2/s5IskdPjkpdYEuZV5SMoBDm4K6Zsq8VjPpC9KeDfIrGNGN8zV8ifgG177
	 xXGON+lZnhcle4/Mt13u+L+BybCnEKH5FisHdza4=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 35AE61C2CDA; Thu, 12 Mar 2020 21:17:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1584062241;
 bh=sglDi8xjYeHmb68tvCV56cTn6eWGSHp42aUGmrQLSKg=;
 h=Date:From:To:Subject:From;
 b=dV1aXY+Q/dIvdPE9TIOEF80t6P6rut6wDL/Mc53E551zotGHueWW5Dq8y3dm2IljZ
 P+2OPJICa4roDIJp57x2qN0A8YfyevzjeuFMKwKb5pztFQX512bVjGYqDQDGaybR8T
 tSYm5VgtLiMCx6RM5gkgZ4qEG/lVKoBEm420QGEw=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id F3AE41C00E7
 for <speakup@linux-speakup.org>; Thu, 12 Mar 2020 21:17:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1584062238;
 bh=sglDi8xjYeHmb68tvCV56cTn6eWGSHp42aUGmrQLSKg=;
 h=Date:From:To:Subject:From;
 b=olrzx1ZtstXGhFW1A2MXwzvYCqHfC8L07OsGahS7Y8v9MdG/XMpp5C+47NPku831Q
 4yGIbEEBLpHd9t4c2daz0thfcjdXMP4PkfBN3TQyjC0JkQp11SrtrRuyWr4V4IqMYF
 6asDXEpAY+H2OiQroejV0yBvmigWhjaa7DhFjLws=
Date: Thu, 12 Mar 2020 21:17:17 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: Just a test message.
Message-ID: <alpine.DEB.2.22.394.2003122115320.680117@befuddled.reisers.ca>
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

Hey folks just testing because there's suspicion of problems with the
list.

   Kirk

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
