Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id A4DCCE6212
	for <lists+speakup@lfdr.de>; Sun, 27 Oct 2019 11:58:05 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0A5001C4481; Sun, 27 Oct 2019 06:58:03 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="rPyCVARO";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 502701C43E9;
	Sun, 27 Oct 2019 06:56:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7AB331C3336; Sun, 27 Oct 2019 06:55:34 -0400 (EDT)
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com
 [IPv6:2607:f8b0:4864:20::336])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 927791C3336
 for <speakup@linux-speakup.org>; Sun, 27 Oct 2019 06:55:01 -0400 (EDT)
Received: by mail-ot1-x336.google.com with SMTP id u13so4964199ote.0
 for <speakup@linux-speakup.org>; Sun, 27 Oct 2019 03:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:reply-to:to:subject:message-id:user-agent:mime-version;
 bh=Gr4GxRPP3srF6L/xBbVLRlN2FDOx4Ikh8h4qoK2UOIY=;
 b=rPyCVAROjtqsiy4f9AcGKT0PWnnkexPynhhPG7MEPSzbFc+TdZ94kfHfcNdN4jm7i6
 J5L8eIqOXVKpqyQ2PuGNfLsGOMCN0IkdK7BtxFB8+f8Hf6/JiXj00uLQSg7xiMyzDXIY
 ksFSL790jdWTaOBgGdZG7QWSuDUhx6KX1lzoCt7FCQw3h+R4LkquimDRQadZFk0YuBRt
 LGpiJ7KmKmTDLFynqDNzTku5i0pD7R5Kppt2HM8xKTZ/l32lMNi39pk0aDl/S63Nu/fx
 O94iGBDq5jurz19FP1CcckhhyNXmygotaWgHyLRaNICq+zk21BhPoUwSs57oswOEiZp+
 0hZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:reply-to:to:subject:message-id
 :user-agent:mime-version;
 bh=Gr4GxRPP3srF6L/xBbVLRlN2FDOx4Ikh8h4qoK2UOIY=;
 b=OJbfIyJQ9kAjTDCivdRPtGyN1frxhtEuQz7e+eLsj+1bayfdLhKdaTTEZCN5tunZPK
 1Vc0jdGDXN3IMMIiEHBiYF/q5OThgvvTu4mxnFEpOtG6LrPfVeHiZt6eQk7ANduewyUr
 ZsbwSAMkEo4GGnVuW2DC6Jo4HC5+7Y/UENyxaCeQ83i6KrfottfxfXxnph4Ij56FMfTh
 wsP5S73+TsV4sFBOvtkfbvZ9iUo7q5ZuKITJQ+JIb1RJeQFUXaTQZfXT4KujA5tZ/VcL
 jBKNA0itDtnjwphI2IibtAcdipCFIkkDNctzx5T3UyQtJqO/6d6d/0OdF5rpX+XID98y
 5khQ==
X-Gm-Message-State: APjAAAX0h5IhvrCG5aT4SvUg/4t4Jz21C4jN8/isD+K5hPWPofTljqJg
 Ak7ySHILn60URKnYaHBrrHDDBkFtXIM=
X-Google-Smtp-Source: APXvYqwC0LvR5kYS7DR3Csx1xA07QwWD/OjOzA8UBrkxwkZZBkZg5gFh8WuFNLI5OBnbchNd8Xdssg==
X-Received: by 2002:a05:6830:1d8f:: with SMTP id
 y15mr1309070oti.121.1572173695597; 
 Sun, 27 Oct 2019 03:54:55 -0700 (PDT)
Received: from unknownb8ac6f31a9d2.attlocal.net
 ([2600:1702:19a0:4f10:baac:6fff:fe31:a9d2])
 by smtp.gmail.com with ESMTPSA id k24sm2123338oic.29.2019.10.27.03.54.54
 for <speakup@linux-speakup.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 03:54:54 -0700 (PDT)
From: Chuck Hallenbeck <chuckhallenbeck@gmail.com>
X-Google-Original-From: Chuck Hallenbeck <chuck@gmail.com>
Date: Sun, 27 Oct 2019 06:54:39 -0400 (EDT)
X-X-Sender: chuck@kappa.cleveland.inc
To: "speakup@linux-speakup.org" <speakup@linux-speakup.org>
Subject: Help needed, TalkingArch 
Message-ID: <alpine.DEB.2.21.1910270652240.7442@kappa.cleveland.inc>
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
Reply-To: Chuck Hallenbeck <chuckhallenbeck@gmail.com>,
 "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hi all,

I have found myself in need of a TalkingArch installation ISO recently,
and have found the latest release not to work any more.  I tried catching
up on the recent state of things, and found the Arch wiki TalkingArch
page to be very informative, and very discouraging.  I reviewed the
installation guide, noticed a couple of discrepancies from Kyle's audio
tutorial, and modified my procedure accordingly.  At the moment, I get
identical failures on several X86-64 systems, even after replacing the
mirrorlist with a version known to work currently, and asking pacstrap
to fetch an appropriate set of packages.  Pacstrap downloads them,
begins the installation, then fails with a screenful of complaints about
possibly corrupted packages or obsolete package keys.

Inspecting the root directory I was attempting to populate, I see
that all top level directories are empty.  except var, which shows the
expected subdirectory structure, including the 140 or so packages that
had been downloaded.

At present I have a VPS on Linode running ArchLinux, but of course it's
not TalkingArch, and I have Debian Buster in console mode on my desktop.

Anyone know where I can get a TalkingArch Installation ISO that works? or
any other ideas?

Thanks,

Chuck H.


-- 

Here In Northeast Ohio, The Moon is Waning Crescent (1% of Full)

Sent from Judith's missing iPhone.
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
