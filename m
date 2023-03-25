Return-Path: <speakup+bounces-925-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F00F86C9000
	for <lists+speakup@lfdr.de>; Sat, 25 Mar 2023 19:22:00 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=carmickle.com header.i=@carmickle.com header.a=rsa-sha256 header.s=2021081500 header.b=c4FBjYm1;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CE705382B90; Sat, 25 Mar 2023 14:21:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AEDBC3828E5
	for <lists+speakup@lfdr.de>; Sat, 25 Mar 2023 14:21:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8F5A5382930; Sat, 25 Mar 2023 14:21:49 -0400 (EDT)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com [50.116.61.232])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1DFB83827E1
	for <speakup@linux-speakup.org>; Sat, 25 Mar 2023 14:21:49 -0400 (EDT)
Received: from smtpclient.apple (unknown [IPv6:2600:4040:5db4:1000:886e:38ac:331d:6abf])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 7554F54ACAE0;
	Sat, 25 Mar 2023 18:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=carmickle.com;
	s=2021081500; t=1679768467;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KjyIc9MYl404m8V6u9WRIARoaOv/hdrfBfqnVgv2AIA=;
	b=c4FBjYm1859Gr/BBjfLm40tW6GYs194vrYIFiHoOBRgBSylAdnJYHAgVUdiGD48h3RIOgX
	rgk5/kFJHg/jaHN3lNyW7dGtar/CDxXQIrwGlTcn7YOeJbdpwfMUR5QMsmhcvqRFO2S96l
	KqHZVWJmtRum4pfGWdtkxU/XELv6yWk=
Content-Type: text/plain;
	charset=us-ascii
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Subject: Re: espeakup stops speaking version 1:0.90-11
From: Frank Carmickle <frank@carmickle.com>
In-Reply-To: <6723d173-9711-cda3-ee3b-8a5414d2e75d@jasonjgw.net>
Date: Sat, 25 Mar 2023 14:21:06 -0400
Cc: Debian Accessibility Team <debian-accessibility@lists.debian.org>,
 speakup@linux-speakup.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <A4C6925E-0936-4742-BBEC-0907A3CDE9B8@carmickle.com>
References: <CBE9BA77-6D28-4918-ACED-A3D681F9C892@carmickle.com>
 <20221007212120.ftn6kzpy2k24krea@begin>
 <7DCDA6E7-90E8-48C6-977A-5D8175360D17@carmickle.com>
 <20221028151652.dcctvqouumu3nbzo@begin>
 <7E82D512-52A8-4E37-A473-3CE6297FE996@carmickle.com>
 <8DCFF48C-6FDC-4B5A-B71C-7CD1F58E160E@carmickle.com>
 <9533ca38-aed4-c8a7-9af9-7d185b68e4da@jasonjgw.net>
 <592FA98B-386A-4344-9EF3-6D8F3F823E44@carmickle.com>
 <a05c1094-f38d-e124-10c6-b0fd241a9bcb@jasonjgw.net>
 <4E15851A-744A-4DA2-A960-45C9421FDB1C@carmickle.com>
 <6723d173-9711-cda3-ee3b-8a5414d2e75d@jasonjgw.net>
To: Jason White <jason@jasonjgw.net>
X-Mailer: Apple Mail (2.3731.400.51.1.1)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Mar 25, 2023, at 13:45, Jason White <jason@jasonjgw.net> wrote:
>=20
> On 25/3/23 13:27, Frank Carmickle wrote:
>> That's nasty. What happens if you run Espeakup within gdb from the =
beginning?
>> It doesn't speak at all. I may just not know what I'm doing in the =
debugger.
> Did you use the run command to start execution of the program once it =
was loaded in the debugger? You can supply any desired command line =
options.

Thank you for spelling that out for me. I thought I needed to tell it to =
execute somehow. Quite unfortunately this is what happens.

Reading symbols from /usr/bin/espeakup...
Reading symbols from =
/usr/lib/debug/.build-id/2c/a5375523b29da3b9abcab61d402b5d1d074942.debug..=
.
(gdb) run
Starting program: /usr/bin/espeakup --default-voice=3Den
[Thread debugging using libthread_db enabled]
Using host libthread_db library =
"/lib/aarch64-linux-gnu/libthread_db.so.1".
/build/gdb-yCDzia/gdb-13.1/gdb/thread.c:85: internal-error: =
inferior_thread: Assertion `current_thread_ !=3D nullptr' failed.
A problem internal to GDB has been detected,
further debugging may prove unreliable.
----- Backtrace -----
0xaaaac8be9b9b ???
0xaaaac8f2cefb ???
0xaaaac8f2d0e3 ???
0xaaaac90d4873 ???
0xaaaac8ee6ebb ???
0xaaaac8e3f49b ???
0xaaaac8b3a2bf ???
0xaaaac8ee1a37 ???
0xaaaac8ee1f47 ???
0xaaaac8ee1ff7 ???
0xaaaac8de82d7 ???
0xffff7a885387 _td_fetch_value
./nptl_db/fetch-value.c:115
0xffff7a88230f td_ta_map_lwp2thr
./nptl_db/td_ta_map_lwp2thr.c:194
0xaaaac8d77d8f ???
0xaaaac8d79347 ???
0xaaaac8ee3e73 ???
0xaaaac8d3a8a7 ???
0xaaaac8d4b82f ???
0xaaaac90d4d03 ???
0xaaaac90d57f7 ???
0xaaaac8d89d0f ???
0xaaaac8d8b737 ???
0xaaaac8b31183 ???
0xffff8026777f __libc_start_call_main
../sysdeps/nptl/libc_start_call_main.h:58
0xffff80267857 __libc_start_main_impl
../csu/libc-start.c:381
0xaaaac8b373af ???
0xffffffffffffffff ???
---------------------
/build/gdb-yCDzia/gdb-13.1/gdb/thread.c:85: internal-error: =
inferior_thread: Assertion `current_thread_ !=3D nullptr' failed.
A problem internal to GDB has been detected,
further debugging may prove unreliable.

Copying the speakup mailing list also, as I think William might be =
hanging out there too.

The back story is that I'm having an issue where espeakup stops =
speaking. It appears to do so completely randomly. I'm seeing it on =
multiple installations, arm64 now. I have seen this before on amd64 =
also. I've been using it under both vmware Fusion, amd64, and now qemu =
arm64. I will do some testing on bare metal to see if there's any =
impact.

Does anyone have any ideas?


Thanks all,
--FC


