Return-Path: <speakup+bounces-277-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 959804053D0
	for <lists+speakup@lfdr.de>; Thu,  9 Sep 2021 15:17:54 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 89385381015; Thu,  9 Sep 2021 09:17:53 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=bluegrasspals.com header.i=@bluegrasspals.com header.a=rsa-sha256 header.s=default header.b=HsmoJ6O+;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 73EBE380E81
	for <lists+speakup@lfdr.de>; Thu,  9 Sep 2021 09:17:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 393D4380B12; Thu,  9 Sep 2021 09:17:51 -0400 (EDT)
Received: from bluegrasspals.com (bluegrasspals.com [96.126.127.231])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EA0543805C2
	for <speakup@linux-speakup.org>; Thu,  9 Sep 2021 09:17:50 -0400 (EDT)
Received: from [10.10.220.117] (70-233-189-56.lightspeed.lsvlky.sbcglobal.net [70.233.189.56])
	(authenticated bits=0)
	by bluegrasspals.com (8.15.2/8.15.2/Debian-8+deb9u1) with ESMTPSA id 189DHkb2023862
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO)
	for <speakup@linux-speakup.org>; Thu, 9 Sep 2021 09:17:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=bluegrasspals.com;
	s=default; t=1631193467;
	bh=eIxxxveBGa0pafMLOpmYWHN+/Ore/7wx/UNv2HaL30E=;
	h=Subject:References:To:From:Date:In-Reply-To:From;
	b=HsmoJ6O+eZ7SFTDKT9HDekLyjiOVpUv6rdNTsAwjav6t2JX3aW/OQMEu4Q0zGAuaF
	 pDfeuTj6GSe7OcdJDb5vYhDqSEkIn2d398N2Y+iVU5Qt0C7s3LS49uSYvTnwihbVtm
	 XCbPvOuUeh136edoSj/phYFEEcQxMaksPw6GRGt0=
Subject: Fwd: [DECtalk] Fw: Looking for a home for a couple of serial synths
References: <d32931d2-c683-fdcc-b38b-75a7139eb0fc@comcast.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: Jayson Smith <jaybird@bluegrasspals.com>
X-Forwarded-Message-Id: <d32931d2-c683-fdcc-b38b-75a7139eb0fc@comcast.net>
Message-ID: <a877f914-9885-48e9-0b2c-ce71303d18f9@bluegrasspals.com>
Date: Thu, 9 Sep 2021 09:17:46 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
In-Reply-To: <d32931d2-c683-fdcc-b38b-75a7139eb0fc@comcast.net>
Content-Type: multipart/alternative;
 boundary="------------1E214301B1C7A4162586760D"
Content-Language: en-US
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.
--------------1E214301B1C7A4162586760D
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Forwarding this response from the DECtalk list.




-------- Forwarded Message --------
Subject: 	Re: [DECtalk] Fw: Looking for a home for a couple of serial 
synths
Date: 	Thu, 9 Sep 2021 06:08:26 -0400
From: 	Tom Kopec <w1pf@comcast.net>
Reply-To: 	DECtalk <dectalk@bluegrasspals.com>
To: 	dectalk@bluegrasspals.com



A DECTalk Express should power-up OK on external power with a 
dead/missing battery.

The battery uses 600mAh prismatic ni-cad cells, which are very difficult 
to find.. I don't think they are in current production.
I have seen some Chinese NiMH cells that might sort-of work, but the 
charger circuitry is not compatible with NiMH cells.

There isn't a lot of room in there to hack in another solution. With 
significant hacking it is might be possible to convert to a lithium 
battery, but that's not plug-and-play.

> ----------------------------------------------------------------------
>
> Message: 1
> Date: Tue, 07 Sep 2021 16:18:07 -0400
> From: "Jayson Smith" <jaybird@bluegrasspals.com>
> To: dectalk@bluegrasspals.com
> Subject: [DECtalk] Fw: Looking for a home for a couple of serial
> synths
> Message-ID: <20210907.201807.235.1@TRENT>
>
>
>
> ----- Original Message -----
> From: "Keith Wessel" <keith@wessel.com>
> To: <speakup@linux-speakup.org>
> Date: Tue, 7 Sep 2021 15:14:16 -0500
> Subject: Looking for a home for a couple of serial synths
>
> Hi, all,
>
> I hope this isn't off-topic, but I know there are a lot of hardware synth
> enthusiasts on this list, and I've got two that I'd rather find homes for
> than send to electronics recycling.
>
> Those of you on the brltty list saw my post a couple weeks ago about 
> looking
> for a new home for a serial braille display. My cleaning has now lead 
> me to
> two serial synths, both of which I'd be happy to let anyone have for the
> cost of shipping.
>
> One is a Doubletalk LT (speakup_synth=ltlk). This was the Doubletalk that
> could either be run off of a 9-volt battery or an AC adapter. It has a
> hard-wired cable that goes to a DB9 serial plug. It's in perfect working
> condition, and I have the AC adapter that I'll include.
>
> The other needs a little work. It's a DECTalk express, complete with case,
> AC adapter, serial cable, and headphones. However, it won't power up
> presumably because the internal battery needs to be replaced. Anyone handy
> with a soldering iron should be able to tackle this, and last I 
> checked the
> battery was a type that's available from Batteries Plus and various 
> on-line
> sources.
>
> I have no need for either of these any more since I no longer have a 
> desktop
> with a serial port. If you're interested in either of these, email me
> off-list at keith@wessel.com.
>
> Thanks,
> Keith
>

_______________________________________________
Dectalk mailing list
Dectalk@bluegrasspals.com
https://bluegrasspals.com/mailman/listinfo/dectalk


--------------1E214301B1C7A4162586760D
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=windows-1252">
  </head>
  <body>
    <p>Forwarding this response from the DECtalk list.</p>
    <p><br>
    </p>
    <div class="moz-forward-container"><br>
      <br>
      -------- Forwarded Message --------
      <table class="moz-email-headers-table" cellspacing="0"
        cellpadding="0" border="0">
        <tbody>
          <tr>
            <th valign="BASELINE" nowrap="nowrap" align="RIGHT">Subject:
            </th>
            <td>Re: [DECtalk] Fw: Looking for a home for a couple of
              serial synths</td>
          </tr>
          <tr>
            <th valign="BASELINE" nowrap="nowrap" align="RIGHT">Date: </th>
            <td>Thu, 9 Sep 2021 06:08:26 -0400</td>
          </tr>
          <tr>
            <th valign="BASELINE" nowrap="nowrap" align="RIGHT">From: </th>
            <td>Tom Kopec <a class="moz-txt-link-rfc2396E" href="mailto:w1pf@comcast.net">&lt;w1pf@comcast.net&gt;</a></td>
          </tr>
          <tr>
            <th valign="BASELINE" nowrap="nowrap" align="RIGHT">Reply-To:
            </th>
            <td>DECtalk <a class="moz-txt-link-rfc2396E" href="mailto:dectalk@bluegrasspals.com">&lt;dectalk@bluegrasspals.com&gt;</a></td>
          </tr>
          <tr>
            <th valign="BASELINE" nowrap="nowrap" align="RIGHT">To: </th>
            <td><a class="moz-txt-link-abbreviated" href="mailto:dectalk@bluegrasspals.com">dectalk@bluegrasspals.com</a></td>
          </tr>
        </tbody>
      </table>
      <br>
      <br>
      A DECTalk Express should power-up OK on external power with a
      dead/missing battery.<br>
      <br>
      The battery uses 600mAh prismatic ni-cad cells, which are very
      difficult to find.. I don't think they are in current production.<br>
      I have seen some Chinese NiMH cells that might sort-of work, but
      the charger circuitry is not compatible with NiMH cells.<br>
      <br>
      There isn't a lot of room in there to hack in another solution.
      With significant hacking it is might be possible to convert to a
      lithium battery, but that's not plug-and-play.<br>
      <br>
      <blockquote type="cite">----------------------------------------------------------------------<br>
        <br>
        Message: 1<br>
        Date: Tue, 07 Sep 2021 16:18:07 -0400<br>
        From: "Jayson Smith" <a class="moz-txt-link-rfc2396E" href="mailto:jaybird@bluegrasspals.com">&lt;jaybird@bluegrasspals.com&gt;</a><br>
        To: <a class="moz-txt-link-abbreviated" href="mailto:dectalk@bluegrasspals.com">dectalk@bluegrasspals.com</a><br>
        Subject: [DECtalk] Fw: Looking for a home for a couple of serial<br>
        synths<br>
        Message-ID: &lt;20210907.201807.235.1@TRENT&gt;<br>
        <br>
        <br>
        <br>
        ----- Original Message -----<br>
        From: "Keith Wessel" <a class="moz-txt-link-rfc2396E" href="mailto:keith@wessel.com">&lt;keith@wessel.com&gt;</a><br>
        To: <a class="moz-txt-link-rfc2396E" href="mailto:speakup@linux-speakup.org">&lt;speakup@linux-speakup.org&gt;</a><br>
        Date: Tue, 7 Sep 2021 15:14:16 -0500<br>
        Subject: Looking for a home for a couple of serial synths<br>
        <br>
        Hi, all,<br>
        <br>
        I hope this isn't off-topic, but I know there are a lot of
        hardware synth<br>
        enthusiasts on this list, and I've got two that I'd rather find
        homes for<br>
        than send to electronics recycling.<br>
        <br>
        Those of you on the brltty list saw my post a couple weeks ago
        about looking<br>
        for a new home for a serial braille display. My cleaning has now
        lead me to<br>
        two serial synths, both of which I'd be happy to let anyone have
        for the<br>
        cost of shipping.<br>
        <br>
        One is a Doubletalk LT (speakup_synth=ltlk). This was the
        Doubletalk that<br>
        could either be run off of a 9-volt battery or an AC adapter. It
        has a<br>
        hard-wired cable that goes to a DB9 serial plug. It's in perfect
        working<br>
        condition, and I have the AC adapter that I'll include.<br>
        <br>
        The other needs a little work. It's a DECTalk express, complete
        with case,<br>
        AC adapter, serial cable, and headphones. However, it won't
        power up<br>
        presumably because the internal battery needs to be replaced.
        Anyone handy<br>
        with a soldering iron should be able to tackle this, and last I
        checked the<br>
        battery was a type that's available from Batteries Plus and
        various on-line<br>
        sources.<br>
        <br>
        I have no need for either of these any more since I no longer
        have a desktop<br>
        with a serial port. If you're interested in either of these,
        email me<br>
        off-list at <a class="moz-txt-link-abbreviated" href="mailto:keith@wessel.com">keith@wessel.com</a>.<br>
        <br>
        Thanks,<br>
        Keith<br>
        <br>
      </blockquote>
      <br>
      _______________________________________________<br>
      Dectalk mailing list<br>
      <a class="moz-txt-link-abbreviated" href="mailto:Dectalk@bluegrasspals.com">Dectalk@bluegrasspals.com</a><br>
      <a class="moz-txt-link-freetext" href="https://bluegrasspals.com/mailman/listinfo/dectalk">https://bluegrasspals.com/mailman/listinfo/dectalk</a><br>
      <br>
    </div>
  </body>
</html>

--------------1E214301B1C7A4162586760D--

