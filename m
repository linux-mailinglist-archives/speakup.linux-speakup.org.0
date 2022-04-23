Return-Path: <speakup+bounces-400-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D282450CB1D
	for <lists+speakup@lfdr.de>; Sat, 23 Apr 2022 16:16:56 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=QueQ+qcp;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AEF29380D28; Sat, 23 Apr 2022 10:16:55 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 08AC83810D5
	for <lists+speakup@lfdr.de>; Sat, 23 Apr 2022 10:16:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C4DB3380949; Sat, 23 Apr 2022 10:16:51 -0400 (EDT)
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A38253807C3
	for <speakup@linux-speakup.org>; Sat, 23 Apr 2022 10:16:51 -0400 (EDT)
Received: by mail-il1-f181.google.com with SMTP id k12so6698894ilv.3
        for <speakup@linux-speakup.org>; Sat, 23 Apr 2022 07:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=+OXjHYK9O7iv8EbCJJT9koYcPqgu1+PcHYJWEXwD9gU=;
        b=QueQ+qcpaoWRoqS7+oz5q/ZqDYg2VQ+6LHhuzZNxw40pBkMpzeYqz8Iz+Z1ZS4Cn4Y
         68DqUmeu5u3H7FQdDsCap7liWnYr5HRBmJObP+DyF7JJYLlLssGA+NIMZIMxwo2WZYgJ
         NkUX51DGLHQPop/i0CZdPYUQUvgNQqMaUYz3jSk8pm6/56o3sFGQLWXjbIruzj0pkvvu
         KQu+yH47GFuR89DUIERnsF/hGlBez5f7VzZ8MUeK7ehRBer4dfFyc4wQkB1/6sLnoKd9
         l8z1jTSIry+OqIBK8imq0IdSdzM+5mZqHF8zq9FgdEGhXKeNMNy4U6bM2/tMhvJD/8zj
         D2Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=+OXjHYK9O7iv8EbCJJT9koYcPqgu1+PcHYJWEXwD9gU=;
        b=s1dMJl+5iH7+ntAHuJKgPd+1UXCKENAx6vXYnZzQzNlGEOCGkTopJ1hg5mmqi9YrbO
         5dKcLXwOsZjiPXJ8571TlNOCtTYGrxJT4MXhor/HE8wuh3r/ZvrLpllKJMOBeDGRoow+
         R/FHq3iPo58JJfBEYtfblVqUXhkrKzurzDxCfuItuETRQH7DW6oUDdfe2jdYShiicVvt
         jXmxO7Qbl6OROjpuk1SGNoIR1AxqcM5zDAl9DyhRLB0ovTjteYv6uTCFOXDw5A3ivrmc
         Ufz1PgqZq6ysaq1jfw/Rgqbxw0ML9p50XCx3pwwwTg0TSgOCX5DLoFQAar2aHDT4osAb
         Qsvw==
X-Gm-Message-State: AOAM530k8r0HCzEYI96TkrX6cf3XQjF1QUhiUD6nHwQnA4m/wsXVjTHl
	pr3byDiZlk+bdJ/Z0WyHMrTedy9qiYoA9+wIHp6uzpJT6tpEAA==
X-Google-Smtp-Source: ABdhPJyRnknuD24mHGvJrGV8D+BdBSbpdxpldyEfo7Z3z+stShTB7xBSHABYm9Od4I6CzSjY8Xpf7dDRUEwQDO1wMj0=
X-Received: by 2002:a05:6e02:1e0e:b0:2c6:18c3:9691 with SMTP id
 g14-20020a056e021e0e00b002c618c39691mr3893869ila.287.1650723350688; Sat, 23
 Apr 2022 07:15:50 -0700 (PDT)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
From: Adrian Orjales <adriorjalesvidal31@gmail.com>
Date: Sat, 23 Apr 2022 16:15:38 +0200
Message-ID: <CAE600ubv2JZJM477hCMutMX=J4tGUzJfFg5Ata2ymQQiqN=ueQ@mail.gmail.com>
Subject: Espeakup, arch and systemd
To: speakup@linux-speakup.org
Content-Type: multipart/alternative; boundary="000000000000f0b70f05dd52fa0e"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--000000000000f0b70f05dd52fa0e
Content-Type: text/plain; charset="UTF-8"

Hello all
I am trying to build my own OS based on Arch Linux, but I am having some
problems with the screen reader.
I have an arch linux fresh installation, with systemd, espeakup and
espeak-ng installed with pacman.
After installing the espeakup package, I noticed that the system was very
slow on boot, and some times espeakup did not wake up after boot.
After some research, I've discovered that the cause of the slow boot was
that the systemd espeakup service unit uses systemd-udev-settle.service and
waits for it to end to start, to ensure all hardware is discovered.
But as I've read, this operation is very discouraged because the
udev-settle discover process is asynchronous and it slows down the boot
process.
Furthermore, when this service ends, espeakup has the same problem,
sometimes it talks, sometimes it is not able to talk.
The problem of no speech is solved if I run systemctl reload espeakup &&
systemctl start espeakup manually from command line.
Now, I have tried removing the wants and requires of
systemd-udev-settle.service and left only the sound.target. The slow boot
is solved, but espeakup does not start properly, and I don't know how can I
solve this.
One of the info that I've found says that sometimes, systemd sound.target
unlocks the awaiting services when the first sound card is detected, but I
have a Nvidia gpu that is detected as a soundcard, but alsa's default card
is my onboard intel hda.
I know that this list is about speakup, not espeakup, but I'm sure that you
like me know that we are not much people talking about these topics and is
difficult to find help.
Thanks in advance

--000000000000f0b70f05dd52fa0e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all<br>I am trying to build my own OS based on Arch =
Linux, but I am having some problems with the screen reader. <br>I have an =
arch linux fresh installation, with systemd, espeakup and espeak-ng install=
ed with pacman.<br>After installing the espeakup package, I noticed that th=
e system was very slow on boot, and some times espeakup did not wake up aft=
er boot. <br>After some research, I&#39;ve discovered that the cause of the=
 slow boot was that the systemd espeakup service unit uses systemd-udev-set=
tle.service and waits for it to end to start, to ensure all hardware is dis=
covered.<br>But as I&#39;ve read, this operation is very discouraged becaus=
e the udev-settle discover process is asynchronous and it slows down the bo=
ot process. <br>Furthermore, when this service ends, espeakup has the same =
problem, sometimes it talks, sometimes it is not able to talk.<br>The probl=
em of no speech is solved if I run systemctl reload espeakup &amp;&amp; sys=
temctl start espeakup manually from command line.<br>Now, I have tried remo=
ving the wants and requires of systemd-udev-settle.service and left only th=
e sound.target. The slow boot is solved, but espeakup does not start proper=
ly, and I don&#39;t know how can I solve this. <br>One of the info that I&#=
39;ve found says that sometimes, systemd sound.target unlocks the awaiting =
services when the first sound card is detected, but I have a Nvidia gpu tha=
t is detected as a soundcard, but alsa&#39;s default card is my onboard int=
el hda. <br>I know that this list is about speakup, not espeakup, but I&#39=
;m sure that you like me know that we are not much people talking about the=
se topics and is difficult to find help.<br>Thanks in advance<br></div>

--000000000000f0b70f05dd52fa0e--

