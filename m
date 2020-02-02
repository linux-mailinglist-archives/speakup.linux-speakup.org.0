Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E423914FE6B
	for <lists+speakup@lfdr.de>; Sun,  2 Feb 2020 17:57:27 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 23BE01C2F0B; Sun,  2 Feb 2020 11:57:26 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=geekonskates.com header.i=@geekonskates.com header.a=rsa-sha256 header.s=default header.b=ZrQHf5gm;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0A90A1C2EDD;
	Sun,  2 Feb 2020 11:56:53 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 624321C2CE3; Sun,  2 Feb 2020 11:56:42 -0500 (EST)
Received: from gateway23.websitewelcome.com (gateway23.websitewelcome.com
 [192.185.50.108])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 9695A1C2CE3
 for <speakup@linux-speakup.org>; Sun,  2 Feb 2020 11:56:38 -0500 (EST)
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
 by gateway23.websitewelcome.com (Postfix) with ESMTP id 17F6B30D
 for <speakup@linux-speakup.org>; Sun,  2 Feb 2020 10:56:37 -0600 (CST)
Received: from box2045.bluehost.com ([67.222.38.79]) by cmsmtp with SMTP
 id yIY0iweoXKnV5yIY0ijbTn; Sun, 02 Feb 2020 10:56:37 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=geekonskates.com; s=default; h=Message-ID:References:In-Reply-To:Subject:To
 :From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2SYGrxNESQvI8CbYy7jp8cMkHAflxMVejrOMAhA0tNM=; b=ZrQHf5gmT9QqjAT2CMr+uPyzsO
 eAjaU2Tn7c+HFzbQ0glOylv1SKr+Qb/oOsxlN89iieKaeXH8X9UcR1tN57D+LAAPPzoxHiR0UWb9n
 k/DKVhZzbvTBUfs6FySm4YL1uSLjtRYlAvIOnwQZM0OwH1gT9zE7kiedLx06tOLSJthy3vrPNJFtE
 Lo9G0MJ2KCL0JjccnKZg51U2vHkr8vIQSmXqipNK8EQ0xT36NEgW1Vf8r9FNamAM5GbCU4SM9PFF2
 93hOJp+FZbrVoC7lWUj0QM5XQBC1bXHR+TCKodI37RBwVdyYmjtu3xMhatNzvNHV/fTmVtp89/euK
 xi3vJDZQ==;
Received: from box2045.bluehost.com ([67.222.38.79]:41762)
 by box2045.bluehost.com with esmtpa (Exim 4.92)
 (envelope-from <geek@geekonskates.com>) id 1iyIY0-001Dvd-F1
 for speakup@linux-speakup.org; Sun, 02 Feb 2020 09:56:36 -0700
MIME-Version: 1.0
Date: Sun, 02 Feb 2020 09:56:36 -0700
From: geek@geekonskates.com
To: speakup@linux-speakup.org
Subject: Re: Intro and a couple questions
In-Reply-To: <mailman.1.1580576402.439533.speakup@linux-speakup.org>
References: <mailman.1.1580576402.439533.speakup@linux-speakup.org>
Message-ID: <a8bba49058c8016d56eb68431661353d@geekonskates.com>
X-Sender: geek@geekonskates.com
User-Agent: Roundcube Webmail/1.3.7
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - box2045.bluehost.com
X-AntiAbuse: Original Domain - linux-speakup.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - geekonskates.com
X-BWhitelist: no
X-Source-IP: 67.222.38.79
X-Source-L: Yes
X-Exim-ID: 1iyIY0-001Dvd-F1
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: box2045.bluehost.com [67.222.38.79]:41762
X-Source-Auth: geek@geekonskates.com
X-Email-Count: 1
X-Source-Cap: ZG9qb21pa2U7ZG9qb21pa2U7Ym94MjA0NS5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
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

Thanks for all the great info!  I still have a lot to learn, but I'm 
looking forward to learning it.  And thanks for the tips on making 
software I write work well with Speakup. :)
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
