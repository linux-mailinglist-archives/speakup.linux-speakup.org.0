Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B098A753A3
	for <lists+speakup@lfdr.de>; Thu, 25 Jul 2019 18:13:52 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CFA681C43AF; Thu, 25 Jul 2019 12:13:51 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SjiZ/EsL";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D6B151C43D4;
	Thu, 25 Jul 2019 12:13:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 97CE51C436F; Thu, 25 Jul 2019 12:13:34 -0400 (EDT)
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 8EC9C1C3663
 for <speakup@linux-speakup.org>; Thu, 25 Jul 2019 12:13:33 -0400 (EDT)
Received: by mail-io1-f68.google.com with SMTP id k20so98381472ios.10
 for <speakup@linux-speakup.org>; Thu, 25 Jul 2019 09:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AYcM4OjYNMNS08YGrVk1gH5D6/F4IacsCdPRETCcGB0=;
 b=SjiZ/EsLC7IVVyys/zcOqUOJpT6YWM3FXriYBSYJMCWJN3/NxAkc/6qKgZ1Xmz1mr+
 rr2BEZWylr4jrVClE3pxeScYjL2YD4pWvXEQqdtDf6DtkcHPSu7dTvPunkYx8SQyx1S7
 +dn5sjuMgkdS6kve/wwbQI8u6AfULmv40v/3B/L5KwfKSsEBnghjHhH+qoo8TBY9BXId
 33ZdXYQfRy4DHvZt9yTEoOJCsCXpUMuK5TadfG1XDuE1dphq0WvLqO0YFvyRl5PBhOO7
 ws22u60iVHjT+FjZd6ii9ZH9uz4DefNGeXLugsyomqP7gjqkPAiin2oZxKo5D2C47M7e
 Sa+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AYcM4OjYNMNS08YGrVk1gH5D6/F4IacsCdPRETCcGB0=;
 b=qfq9yenuVpZSd522qVnriTWz6rubBPJM9MFcbfEg9uXZuPqtaguA5EHs424q3lMioE
 U8/X23Pq/8zsJwehdO+6Ya+ycvHQV2DGZLI4fwx7bz9p+GjT1jNlY7nMZWM4p6zbtilN
 +UsYaz9MLfv4S8G0cEELxrgNyVcP/Q1nGI9GDtrjONx60lk6iqZXPCHByokbFzrKI9dR
 izsW2j1Hx1bsaYqWbKN8G6eLC6Wmwl8o35wAuYFXl6JHGxiWmUI8dN6qS4p+tU8ja8r4
 Zf5iVNE1r+bxLTvRz4sNteR2BAHRz3qxe4coXpb9Cz/3mi9+ro1xO4Qh3/FD1R0EYJc1
 fSqA==
X-Gm-Message-State: APjAAAU7XbG3ywv2WuFTz0Zd8DluDP7fEkCmb/albdnI7ujM2w/iLMWX
 bAcqhgxN6vaq7CdXyTvdpKHXtKSv
X-Google-Smtp-Source: APXvYqz20u57pO5fqwVYY9dkmLd6yBrHK7OvpAq8P56fjbvi1SceI7MUPeTr9MubA3NrCKyTW3ju9Q==
X-Received: by 2002:a5d:80d6:: with SMTP id h22mr59935595ior.231.1564071150521; 
 Thu, 25 Jul 2019 09:12:30 -0700 (PDT)
Received: from my-p4 (CPE7085c263c0df-CMa84e3fcdd2d0.cpe.net.cable.rogers.com.
 [99.251.55.14])
 by smtp.gmail.com with ESMTPSA id c81sm76953439iof.28.2019.07.25.09.12.29
 for <speakup@linux-speakup.org>
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 25 Jul 2019 09:12:29 -0700 (PDT)
Date: Thu, 25 Jul 2019 12:12:27 -0400
From: David <david.a.borowski@gmail.com>
To: speakup@linux-speakup.org
Subject: Re: Speakup Digest, Vol 189, Issue 7
Message-ID: <20190725161227.slydva44ry32nhqz@my-p4>
References: <mailman.1.1564070401.27881.speakup@linux-speakup.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mailman.1.1564070401.27881.speakup@linux-speakup.org>
User-Agent: NeoMutt/20170113 (1.7.2)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

The program genmap takes the speakupmap.map file and either generates the
speakupmap.h which is compiled into speakup or output suitable for keymap.
run genmap -i to generate speakupmap.h.
for a keymap on a precompiled kernel or for testing you can do:
genmap >/sys/accessibility/speakup/keymap
you should be in /usr/src/linux/drivers/staging/speakup to use genmap.
the speakup mappings are separate from the kernel key mappings.
dumpkeys will not show them.
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
