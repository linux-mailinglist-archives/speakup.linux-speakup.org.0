Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 36B79D19CF
	for <lists+speakup@lfdr.de>; Wed,  9 Oct 2019 22:42:32 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 591011C4690; Wed,  9 Oct 2019 16:42:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1570653751;
	bh=DvOkXxJZJ8kT6Qc9gN+6GVzBth8Ggr5RupW++CU4+ao=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=q5PWVx062cXA6qx7OyFm0AGNvnsStLDzklB0dSZoPDSDKUerKzxABE6bLOjvZ+bBK
	 iEjocsZ+CMxCHmAtY+UPqk09Af7C0YUTvfFSiynnBs95t5rNsMqkqxkS2vb6veMmzK
	 oE2SbPD560jIgb8VJ3auVS9+7BUoZV2fTGcIhZUQ=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7CF8F1C46C6;
	Wed,  9 Oct 2019 16:40:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1570653654;
	bh=DvOkXxJZJ8kT6Qc9gN+6GVzBth8Ggr5RupW++CU4+ao=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=ra4It31XGaCWdxOGGzSCX4u/RRkftfDXuiFgVxkktzJk7gzPECgiR31LbPMAup3Gh
	 66/kXgI0ZFEsdLcKFU4zsMGRx5+S7OhoZu6UuAw1nceitdO4DTWbz5UBiPTAEpZdc0
	 uqEr47T4GSl3GIuZoGAegK9dzSaXAGDL9Z2ywK00=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 3A83C1C330C; Sun,  6 Oct 2019 12:56:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1570380978;
 bh=XZ+2q8+low7Ig8iwTncnatHY83Vr54aF74WlUCrn5uQ=;
 h=Date:From:To:Subject:From;
 b=lg0c6RyE1t0AHSc3dibX5jEtr0fqKvStwT+MNkpDUKRnPXBA2OKtuLtbEy0QzoDfm
 B2fHmG9M94mJi6ImXrd234VixIgsSF2XyGp/R1+5puArXWXTtC8zizTZAFOLeFrVea
 IJkng1OGu/NRWCKynXIda/N/+hiBoYYPjHTY3hns=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 44BD71C3292
 for <speakup@linux-speakup.org>; Sun,  6 Oct 2019 12:56:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1570380976;
 bh=XZ+2q8+low7Ig8iwTncnatHY83Vr54aF74WlUCrn5uQ=;
 h=Date:From:To:Subject:From;
 b=kYOVH1/yRsMi++YCDWj72D8DFSncFMcmysB1vV69RiiA29O7XHKPCE0W8uwE4bBxo
 GGxXvUvENd3CJZ+b2P8Qc9fCTSxBRs5TA+g+bSvNoL0GftBJ2KtlB0yiNLdA5Cc16P
 FpgzyMZtWcofQjt2ZHaqisnYULYrUSO/+QzzpVb0=
Date: Sun, 6 Oct 2019 12:56:16 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: Okash's talk
Message-ID: <alpine.DEB.2.21.1910061248420.25696@befuddled.reisers.ca>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
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

Hi Okash er al: I want to thank you for that very interesting talk. I
stupidly deleted your original message and link before listening to
the talk so I couldn't reply to that message because it hasn't shown
up in the archives yet.

Could you please give us some info on how the talk was received? How
many folks attended? Were there any blinks/users in attendence?

I believe you gave a very good overview of speakup. I certainly enjoyed
the talk and am glad to have heard your voice. That's one of those
blink things you know! 'grin'

Once again thank you very much.
   Kirk

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
