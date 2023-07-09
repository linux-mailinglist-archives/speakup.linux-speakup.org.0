Return-Path: <speakup+bounces-984-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 25A9E74C91F
	for <lists+speakup@lfdr.de>; Mon, 10 Jul 2023 01:46:23 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=UJC44dhm;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AD214382536; Sun,  9 Jul 2023 19:46:22 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8E1B5382441
	for <lists+speakup@lfdr.de>; Sun,  9 Jul 2023 19:46:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F0FAF38245A; Sun,  9 Jul 2023 19:46:14 -0400 (EDT)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D5414382441
	for <speakup@linux-speakup.org>; Sun,  9 Jul 2023 19:46:14 -0400 (EDT)
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 22B8432006
	for <speakup@linux-speakup.org>; Sun,  9 Jul 2023 23:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1688946344;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rXw/skeM0YU/ViUbaGjPybPUOj89okTnS/7ehhDpLgM=;
	b=UJC44dhm7oDb6RzkmRqQwUEYxjXQVePlLs7b+kXbSb8gR2bsKritYeHeAVSARfkdCXLs9U
	/wznIcsiXi6YiLoc5bqEbDuaU19pswt9QWSLIxok88kT3/Jp9/rNIMBXNix1ubCXGOcVKn
	KPxAMqtTsCU4OE4YUfN5Zd4Bw2NOzcEOT0YDQOi5ZJ/8QcR+rULfzbsLhHwXWD/Z7g/3z3
	2KyXAoKv5LgN5pX+rK/WzJaP7JdkrX70YLENf1WwXgWo0hY10FOZ+Ugj4nz4WU8EoZVk3a
	mcyTi+jsXOrN4K2I5FndpF6CVIZ56QhJgWWGfqGLOGL61xAcbj0qhW+cOoZUfA==
Content-Type: multipart/alternative;
 boundary="------------bhOUCtSjvcpOObcanr0z2W3I"
Message-ID: <a9d7f09d-71c6-8e1d-5f90-243a82de497c@jasonjgw.net>
Date: Sun, 9 Jul 2023 19:45:43 -0400
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
References: <022501d9b2ba$f6c7ca10$01ffa8c0@nucwin10>
From: Jason White <jason@jasonjgw.net>
Subject: Re: configuring a USB/Serial port
In-Reply-To: <022501d9b2ba$f6c7ca10$01ffa8c0@nucwin10>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.
--------------bhOUCtSjvcpOObcanr0z2W3I
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 9/7/23 19:13, K0LNY wrote:
> I am trying to be able to send anything to the Dectalk express.
> I have tried configuring the port with the below command, and I get 
> the error
> unable to  perform all requested actions
> I really don't know what I'm doing, so any advice would be appreciated.
> Here's what I'm entering:
> stty -F /dev/tty4 9600 cs8 -cstopb -parenb
Check your kernel logs to obtain the name of the device representing the 
serial port. It's probably /dev/ttyS0 or /dev/ttyusb0 or similar. 
/dev/tty4 is not it, I'm fairly sure.
--------------bhOUCtSjvcpOObcanr0z2W3I
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 9/7/23 19:13, K0LNY wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:022501d9b2ba$f6c7ca10$01ffa8c0@nucwin10">
      <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
      <meta name="GENERATOR" content="MSHTML 11.00.10570.1001">
      <style></style><font size="2" face="Arial">I am trying to be able
        to send anything to the Dectalk express.</font>
      <div><font size="2" face="Arial">I have tried configuring the port
          with the below command, and I get the error</font></div>
      <div><font size="2" face="Arial">unable to  perform all requested
          actions</font></div>
      <div><font size="2" face="Arial">I really don't know what I'm
          doing, so any advice would be appreciated.</font></div>
      <div><font size="2" face="Arial">Here's what I'm entering:</font></div>
      <div><font size="2" face="Arial">stty -F /dev/tty4 9600 cs8
          -cstopb -parenb</font></div>
    </blockquote>
    <font size="2"><font face="Arial">Check your kernel logs to obtain
        the name of the device representing the serial port. It's
        probably /dev/ttyS0 or /dev/ttyusb0 or similar. /dev/tty4 is not
        it, I'm fairly sure.</font></font><br>
  </body>
</html>

--------------bhOUCtSjvcpOObcanr0z2W3I--

