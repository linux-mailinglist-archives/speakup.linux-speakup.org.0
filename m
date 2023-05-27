Return-Path: <speakup+bounces-939-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E0296713644
	for <lists+speakup@lfdr.de>; Sat, 27 May 2023 21:45:45 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=noisynotes.com header.i=@noisynotes.com header.a=rsa-sha256 header.s=default header.b=liyOf2lr;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 33231382477; Sat, 27 May 2023 15:45:45 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1295E3823F1
	for <lists+speakup@lfdr.de>; Sat, 27 May 2023 15:45:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B648938242C; Sat, 27 May 2023 15:45:35 -0400 (EDT)
Received: from premium139-1.web-hosting.com (premium139-1.web-hosting.com [162.0.232.137])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6117A3823F1
	for <speakup@linux-speakup.org>; Sat, 27 May 2023 15:45:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=noisynotes.com; s=default; h=In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Content-Type:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=COm+vhWeMfkae8zfsLKsjRwM9K3r/GfwhXkK5LFsuB0=; b=liyOf2lr2iBeQK3Qd5sFMVXNN6
	UqZp5vOIxg2qwQgGG30H2HE2A5aH9rvsebFZ9co+JyAlHi5DJKYAAnAlBmeTqEDJoxRWuF92VT+Nk
	Q29ZW7poFbl20q4SX75VjLEceBkzqyGYuai+pXofjpKcwyAT0KKsyuAPciQlcW4DJISBPDFSo7BQg
	pB0ddkOMETEwaxJiYD4eyZJ83rfHpHPOAdmo9unzBrkBbq/7HixWmv4nEFNuVkxUt8zJR3eklUHeB
	jtZQkPG6lryvwSE5VmirYoC430HD2m6YqzTNOibrMmEx/qNv9U8k6kSTYcsEqht7EU5HtCBq4m2PY
	gb8CaoFg==;
Received: from pool-108-41-98-141.nycmny.fios.verizon.net ([108.41.98.141]:56131 helo=[192.168.1.140])
	by premium139.web-hosting.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.95)
	(envelope-from <sm@noisynotes.com>)
	id 1q2zqz-0072Nd-1F
	for speakup@linux-speakup.org;
	Sat, 27 May 2023 15:45:33 -0400
Content-Type: multipart/alternative;
 boundary="------------XLU5lr26MJiqzH0afE0zoj00"
Message-ID: <69604dc4-6b77-821c-9ec0-dcd77152dc32@noisynotes.com>
Date: Sat, 27 May 2023 15:45:28 -0400
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: Debian Install With Speech
To: speakup@linux-speakup.org
References: <2a1801d990c2$5c0559d0$01ffa8c0@nucwin10>
Content-Language: en-US
From: Steve Matzura <sm@noisynotes.com>
In-Reply-To: <2a1801d990c2$5c0559d0$01ffa8c0@nucwin10>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - premium139.web-hosting.com
X-AntiAbuse: Original Domain - linux-speakup.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - noisynotes.com
X-Get-Message-Sender-Via: premium139.web-hosting.com: authenticated_id: sm@noisynotes.com
X-Authenticated-Sender: premium139.web-hosting.com: sm@noisynotes.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-From-Rewrite: unmodified, already matched
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.
--------------XLU5lr26MJiqzH0afE0zoj00
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Unless I am sadly mistaken, the only Debian distro with speech is the 
full installer, Disk #1. I didn't know that 11.7 was out in distributed 
form, only upgradable from 11.6, which I just did the other day 
successfully.


On 5/27/2023 1:40 PM, K0LNY wrote:
>         Howdy All,
> I am not having luck with getting the Debian installer to speak.
> I am booting to:
> debian-11.7.0-i386-netinst.iso
> from:
> https://cdimage.debian.org/debian-cd/current/i386/iso-cd/
> and I have tried alt S, S alone, and down arrowing 5 times and enter, 
> and down arrowing 4 times and enter.
> These are things I read that are supposed to put it into a talking 
> installer.
> Does this version not have a talking installer?
> I asked on the Debian accessibility list, but I have gotten no 
> responses, so I thought I'd ask here.
> I'll use speakup on it in a CLI, if I can get it working.
> Thanks.
> Glenn
--------------XLU5lr26MJiqzH0afE0zoj00
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Unless I am sadly mistaken, the only Debian distro with speech is
      the full installer, Disk #1. I didn't know that 11.7 was out in
      distributed form, only upgradable from 11.6, which I just did the
      other day successfully.</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 5/27/2023 1:40 PM, K0LNY wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:2a1801d990c2$5c0559d0$01ffa8c0@nucwin10">
      <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
      <meta name="GENERATOR" content="MSHTML 11.00.10570.1001">
      <style></style>
      <div><font size="2" face="Arial">        Howdy All,</font></div>
      <div><font size="2" face="Arial">I am not having luck with getting
          the Debian installer to speak.</font></div>
      <div><font size="2" face="Arial">I am booting to:</font></div>
      <div><font size="2" face="Arial">debian-11.7.0-i386-netinst.iso</font></div>
      <div><font size="2" face="Arial">from:</font></div>
      <div><font size="2" face="Arial"><a
            href="https://cdimage.debian.org/debian-cd/current/i386/iso-cd/"
            moz-do-not-send="true" class="moz-txt-link-freetext">https://cdimage.debian.org/debian-cd/current/i386/iso-cd/</a></font></div>
      <div><font size="2" face="Arial">and I have tried alt S, S alone,
          and down arrowing 5 times and enter, and down arrowing 4 times
          and enter.</font></div>
      <div><font size="2" face="Arial">These are things I read that are
          supposed to put it into a talking installer.</font></div>
      <div><font size="2" face="Arial">Does this version not have a
          talking installer?</font></div>
      <div><font size="2" face="Arial">I asked on the Debian
          accessibility list, but I have gotten no responses, so I
          thought I'd ask here.</font></div>
      <div><font size="2" face="Arial">I'll use speakup on it in a CLI,
          if I can get it working.</font></div>
      <div> </div>
      <div><font size="2" face="Arial">Thanks.</font></div>
      <div> </div>
      <div><font size="2" face="Arial">Glenn</font></div>
    </blockquote>
  </body>
</html>

--------------XLU5lr26MJiqzH0afE0zoj00--

