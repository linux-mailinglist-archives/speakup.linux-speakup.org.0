Return-Path: <speakup+bounces-980-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C2A2574C844
	for <lists+speakup@lfdr.de>; Sun,  9 Jul 2023 22:50:19 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=DATfic0S;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CBFD038245D; Sun,  9 Jul 2023 16:50:18 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AD561380771
	for <lists+speakup@lfdr.de>; Sun,  9 Jul 2023 16:50:18 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 11990382440; Sun,  9 Jul 2023 16:50:11 -0400 (EDT)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1760E380771
	for <speakup@linux-speakup.org>; Sun,  9 Jul 2023 16:50:10 -0400 (EDT)
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 0F57732006
	for <speakup@linux-speakup.org>; Sun,  9 Jul 2023 20:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1688935775;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3yVwQbD32OXv0OzR6XUdB4WpE00g7Ouyjg4AQCSaonw=;
	b=DATfic0Sukp1O67+wrB37ThM0UNCnKqr8u32zKIOwmBQmG9HmuDh31SlY+BT+kX+ROTKk9
	RDqiXd5VA1MlU1DKiyVEbrjXTicUL6qkTwzL4grbhm21m9QHviBZNK3jAcznt0SUD/eTmO
	c/ewJX9OXfqP+LFxbiwV/Y/RSheZ2TUBkk3m9MjtnGLiyI9J6U4ccBkcT8a875SbTGsyAp
	t5ncop8uITzv/lScanopxp7K+R6g3vcAbVgsTf2YTcMCq56q/wWJeI81HtE6nsdeeG7BMd
	irhTx0tNwl0a9hsJIFVTfn+RQ6cY8PJjaxvAiLRPvUoCwex2FiBeeiSDzNllvg==
Content-Type: multipart/alternative;
 boundary="------------m3GmfcqzKana02ca8NW0EuFt"
Message-ID: <af03dac9-b93b-59a9-845c-706ec37ddb1c@jasonjgw.net>
Date: Sun, 9 Jul 2023 16:49:34 -0400
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: speakup@linux-speakup.org
References: <01e901d9b29a$5bbdbf90$01ffa8c0@nucwin10>
From: Jason White <jason@jasonjgw.net>
Subject: Re: Dectalk
In-Reply-To: <01e901d9b29a$5bbdbf90$01ffa8c0@nucwin10>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.
--------------m3GmfcqzKana02ca8NW0EuFt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 9/7/23 15:19, K0LNY wrote:
> I'm wondering, do I need to install some Linux drivers for the Dectalk 
> into the system first?

You shouldn't need drivers, but if you wish to set up a serial 
connection manually, you'll need to run the stty command to configure 
the serial interface.

 From memory, it requires a 9600 baud connection, 8 data bits, 1 stop 
bit, hardware flow control. I might be wrong though.

A VM will complicate the situation, as you would have to configure it to 
pass through the serial port to the guest operating system.

--------------m3GmfcqzKana02ca8NW0EuFt
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 9/7/23 15:19, K0LNY wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:01e901d9b29a$5bbdbf90$01ffa8c0@nucwin10">
      <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
      <meta name="GENERATOR" content="MSHTML 11.00.10570.1001">
      <style></style><font size="2" face="Arial">I'm wondering, do I
        need to install some Linux drivers for the Dectalk into the
        system first?</font></blockquote>
    <p><font size="2"><font face="Arial">You shouldn't need drivers, but
          if you wish to set up a serial connection manually, you'll
          need to run the stty command to configure the serial
          interface.</font></font></p>
    <p><font size="2"><font face="Arial">From memory, it requires a 9600
          baud connection, 8 data bits, 1 stop bit, hardware flow
          control. I might be wrong though.<br>
        </font></font></p>
    <p><font size="2"><font face="Arial">A VM will complicate the
          situation, as you would have to configure it to pass through
          the serial port to the guest operating system.<br>
        </font></font></p>
  </body>
</html>

--------------m3GmfcqzKana02ca8NW0EuFt--

