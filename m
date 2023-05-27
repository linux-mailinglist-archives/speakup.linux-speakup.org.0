Return-Path: <speakup+bounces-940-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 97CC0713648
	for <lists+speakup@lfdr.de>; Sat, 27 May 2023 21:48:08 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=noisynotes.com header.i=@noisynotes.com header.a=rsa-sha256 header.s=default header.b=CU2Au5j8;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 122B0382480; Sat, 27 May 2023 15:48:07 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E68D7382467
	for <lists+speakup@lfdr.de>; Sat, 27 May 2023 15:48:06 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B02DA382451; Sat, 27 May 2023 15:47:57 -0400 (EDT)
Received: from premium139-1.web-hosting.com (premium139-1.web-hosting.com [162.0.232.137])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 83E2E382419
	for <speakup@linux-speakup.org>; Sat, 27 May 2023 15:47:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=noisynotes.com; s=default; h=In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Content-Type:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=zyY6+ns/ql7gE3RX1XAOEK1vDFZybS/SCBcPlc56iWY=; b=CU2Au5j85m6PrKL/DH9NBgXuuX
	dtztbR34G1AJDNqAWfVsx/Uqa4KFR2lsLHctWNNE8xDKYKDj3HSuQYJK6+ln4St4riA1LoFQ/CCiY
	gEeaep0kP1yRWyLdQ7ejtNaOe5j1T+9tVGy75piij7SBGqVtabfMWuZa+Disny1Xj95k27C0sCFTr
	Vq3FQvQXaZh0Hye/1Mmj1EeWIG4D9GpHMl6VnfM9Q4ctdqhnRjlhfmj5EsUTOWLNRM2gytcVwXDYJ
	Ot4NgEHfwziJiBhOxSxn3pB3jU2XpR6GgeCt9XbyxAeop1FSsBF6KD6eObNSsnj2BWJJ+88pzR6DZ
	qzKiWg3Q==;
Received: from pool-108-41-98-141.nycmny.fios.verizon.net ([108.41.98.141]:56152 helo=[192.168.1.140])
	by premium139.web-hosting.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.95)
	(envelope-from <sm@noisynotes.com>)
	id 1q2ztH-0073dy-WA
	for speakup@linux-speakup.org;
	Sat, 27 May 2023 15:47:56 -0400
Content-Type: multipart/alternative;
 boundary="------------0Dz3sTCh0RwgV3akVOLaPTJG"
Message-ID: <2a28b749-ffd1-5fe1-7e25-d12e7807fbb3@noisynotes.com>
Date: Sat, 27 May 2023 15:47:34 -0400
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
Content-Language: en-US
To: speakup@linux-speakup.org
References: <2a1801d990c2$5c0559d0$01ffa8c0@nucwin10>
 <2a2b01d990c6$28c3b860$01ffa8c0@nucwin10>
From: Steve Matzura <sm@noisynotes.com>
In-Reply-To: <2a2b01d990c6$28c3b860$01ffa8c0@nucwin10>
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
--------------0Dz3sTCh0RwgV3akVOLaPTJG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Glad to know I was wrong. I swear I read in some wiki that only the full 
installer disks had speech during installation.


On 5/27/2023 2:07 PM, K0LNY wrote:
> Hi All,
> It was operator error.
> My system wasn't booting to my USB media, and when I did the actions 
> to select a boot drive, I got it to work with S and enter.
> Thanks.
> Glenn
> -----
>
>     ----- Original Message -----
>     *From:* K0LNY <mailto:glenn@ervin.email>
>     *To:* Speakup is a screen review system for Linux.
>     <mailto:speakup@linux-speakup.org>
>     *Sent:* Saturday, May 27, 2023 12:40 PM
>     *Subject:* Debian Install With Speech
>
>             Howdy All,
>     I am not having luck with getting the Debian installer to speak.
>     I am booting to:
>     debian-11.7.0-i386-netinst.iso
>     from:
>     https://cdimage.debian.org/debian-cd/current/i386/iso-cd/
>     and I have tried alt S, S alone, and down arrowing 5 times and
>     enter, and down arrowing 4 times and enter.
>     These are things I read that are supposed to put it into a talking
>     installer.
>     Does this version not have a talking installer?
>     I asked on the Debian accessibility list, but I have gotten no
>     responses, so I thought I'd ask here.
>     I'll use speakup on it in a CLI, if I can get it working.
>     Thanks.
>     Glenn
>
--------------0Dz3sTCh0RwgV3akVOLaPTJG
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Glad to know I was wrong. I swear I read in some wiki that only
      the full installer disks had speech during installation.</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 5/27/2023 2:07 PM, K0LNY wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:2a2b01d990c6$28c3b860$01ffa8c0@nucwin10">
      <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
      <meta name="GENERATOR" content="MSHTML 11.00.10570.1001">
      <style></style>
      <div><font size="2" face="Arial">   
          <div>Hi All,</div>
          <div>It was operator error.</div>
          <div>My system wasn't booting to my USB media, and when I did
            the actions to select a boot drive, I got it to work with S
            and enter.</div>
          <div>Thanks.</div>
          <div>Glenn</div>
          <div>----- </div>
        </font></div>
      <blockquote style="PADDING-LEFT: 5px; MARGIN-LEFT: 5px;
        BORDER-LEFT: #000000 2px solid; PADDING-RIGHT: 0px;
        MARGIN-RIGHT: 0px" dir="ltr">
        <div style="FONT: 10pt arial">----- Original Message ----- </div>
        <div style="BACKGROUND: #e4e4e4; FONT: 10pt arial; font-color:
          black"><b>From:</b> <a title="glenn@ervin.email"
            href="mailto:glenn@ervin.email" moz-do-not-send="true">K0LNY</a>
        </div>
        <div style="FONT: 10pt arial"><b>To:</b> <a
            title="speakup@linux-speakup.org"
            href="mailto:speakup@linux-speakup.org"
            moz-do-not-send="true">Speakup is a screen review system for
            Linux.</a> </div>
        <div style="FONT: 10pt arial"><b>Sent:</b> Saturday, May 27,
          2023 12:40 PM</div>
        <div style="FONT: 10pt arial"><b>Subject:</b> Debian Install
          With Speech</div>
        <div><br>
        </div>
        <div><font size="2" face="Arial">        Howdy All,</font></div>
        <div><font size="2" face="Arial">I am not having luck with
            getting the Debian installer to speak.</font></div>
        <div><font size="2" face="Arial">I am booting to:</font></div>
        <div><font size="2" face="Arial">debian-11.7.0-i386-netinst.iso</font></div>
        <div><font size="2" face="Arial">from:</font></div>
        <div><font size="2" face="Arial"><a
              href="https://cdimage.debian.org/debian-cd/current/i386/iso-cd/"
              moz-do-not-send="true" class="moz-txt-link-freetext">https://cdimage.debian.org/debian-cd/current/i386/iso-cd/</a></font></div>
        <div><font size="2" face="Arial">and I have tried alt S, S
            alone, and down arrowing 5 times and enter, and down
            arrowing 4 times and enter.</font></div>
        <div><font size="2" face="Arial">These are things I read that
            are supposed to put it into a talking installer.</font></div>
        <div><font size="2" face="Arial">Does this version not have a
            talking installer?</font></div>
        <div><font size="2" face="Arial">I asked on the Debian
            accessibility list, but I have gotten no responses, so I
            thought I'd ask here.</font></div>
        <div><font size="2" face="Arial">I'll use speakup on it in a
            CLI, if I can get it working.</font></div>
        <div> </div>
        <div><font size="2" face="Arial">Thanks.</font></div>
        <div> </div>
        <div><font size="2" face="Arial">Glenn</font></div>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------0Dz3sTCh0RwgV3akVOLaPTJG--

