Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 6739CFE58B
	for <lists+speakup@lfdr.de>; Fri, 15 Nov 2019 20:24:34 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C18AB1C4480; Fri, 15 Nov 2019 14:24:33 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YE64Csgu";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 534201C46D6;
	Fri, 15 Nov 2019 14:23:51 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 28A751C4480; Fri, 15 Nov 2019 14:23:44 -0500 (EST)
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com
 [IPv6:2607:f8b0:4864:20::835])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 8CA481C31E1
 for <speakup@linux-speakup.org>; Fri, 15 Nov 2019 14:23:42 -0500 (EST)
Received: by mail-qt1-x835.google.com with SMTP id r20so11901792qtp.13
 for <speakup@linux-speakup.org>; Fri, 15 Nov 2019 11:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UJERBSGuftLD0IN/x6ROuimZJ0X5qdgfNtC5bar8yb8=;
 b=YE64CsguJZmGObsJc1CQMTZdqva4qGw8zIn2AH25wWQS7zyAK+4+yazgj/jR5NXhdO
 FH9sIuVMvs4JOr/2F1Hq40iElypXcoGdTLV1weZRBxIFENyqY3UbmdbdNLJ6ZXYRmQDI
 Jj33XXfwJ/Hc1nASXx6TkULbNvJa92wgSTAjdY2bpw6oUm+zFqhyhPsQ5iAI6Z72+vd3
 iGo12NDaGVHH5Y+HqgtmBERDsotwD6FX8MfBs+dwohHEqjLnqZwiWdVB5Y12k0szZXBI
 9Vh2isIxwl9lwVv83xmyuclgIt9oBC5ub1CunymIvchSfC2HSYcjRmv6mIUAvjhsE1qK
 CznA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UJERBSGuftLD0IN/x6ROuimZJ0X5qdgfNtC5bar8yb8=;
 b=Ovlv1vxLsTQRUMvsGLm+1ravabw8Z61FhaOg/x97jt5xJpeNZOi/gD6WMR2ba+XD5t
 bteb22dIIFBd2PCDjqrYP3FGvaXAci27U53CvN02sBRNr5C64CL05g5BFnl61am3Z3V+
 cECSNiEPBVTKpZsvzcjzIOntSCElCuQgmbK71OSK9Ch39DuWWc6VA0aO5t6aXnyUy8YA
 0LtXqzNhDLv3KxM1kriQO18CS2zxRJXbhGB+G6ABgpfTO5buWfQR5cf6USnzKVqTaMZa
 h/4+cPOWcwuD0+JaTvQfSPsrxxejqglvPS01xb5QFEwjHmiD4imG5P8UyPsBEhpmkM8x
 +LaQ==
X-Gm-Message-State: APjAAAWs34NmXCYZBkLjv3opgUoD1dYmf/U6GEM8H2KRrGw3XkZb0+yY
 W9W716fZMCPIL73CYiBj1uiZXNIYqtQ=
X-Google-Smtp-Source: APXvYqznDyJ47g/fmHmncLT2gB261+y5BR0wCurVsaaJmZI65m7ne/lH0XlYYHu2dpgy+bKaSrgOmQ==
X-Received: by 2002:ac8:2903:: with SMTP id y3mr15116216qty.83.1573845820630; 
 Fri, 15 Nov 2019 11:23:40 -0800 (PST)
Received: from my-p4 (CPE7085c263c0df-CMa84e3fcdd2d0.cpe.net.cable.rogers.com.
 [99.251.55.14])
 by smtp.gmail.com with ESMTPSA id t26sm5670915qta.75.2019.11.15.11.23.39
 for <speakup@linux-speakup.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 11:23:39 -0800 (PST)
Date: Fri, 15 Nov 2019 14:23:37 -0500
From: David <david.a.borowski@gmail.com>
To: speakup@linux-speakup.org
Subject: google doesn't like us
Message-ID: <20191115192337.GA31439@my-p4>
References: <mailman.1.1573837202.13038.speakup@linux-speakup.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mailman.1.1573837202.13038.speakup@linux-speakup.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

My wife Darlene says lose google and switch to duckduckgo.com
No clutter and still a decent search.
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
