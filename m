Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 36FDD300D5
	for <lists+speakup@lfdr.de>; Thu, 30 May 2019 19:19:41 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5B8321C5462; Thu, 30 May 2019 13:19:40 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pdaLloiV";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 070CC1C6B4B;
	Thu, 30 May 2019 13:18:57 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 84DF51C43C5; Thu, 30 May 2019 13:18:53 -0400 (EDT)
Received: from mail-it1-x12a.google.com (mail-it1-x12a.google.com
 [IPv6:2607:f8b0:4864:20::12a])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 90FCB1C42CB
 for <speakup@linux-speakup.org>; Thu, 30 May 2019 13:18:52 -0400 (EDT)
Received: by mail-it1-x12a.google.com with SMTP id h20so11187829itk.4
 for <speakup@linux-speakup.org>; Thu, 30 May 2019 10:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=B9WD0UIAbqi6ciKq3m7oYgEdzlZzbyEPxq09HEr3dSM=;
 b=pdaLloiVkKv9/jYMpWcQfIUSbNR4nmrGOIklAOfJdzgWKDWedB3r8eH1VKO5UN2s+2
 q7Z8tVlvms4kM7ohSqogd+LHAuG2fkGt4VKwzyaT8U69gbqx+xXW1yDnohus35SNluJp
 a5phRIcZr07Yxs12GnqF0+klJaASVx1qAjUqiDx8hvL+BD7nWC3hbM5yIGEF1ljH0njf
 77fcBtq1Eq3imm4+cDmYGKVDlWDM856BfEEGaOWe1pSkXiujCDTUi1+GtY9jak0tM/AA
 Gvdf3MZbCoJCGZIqBFaOmdOlc5wFHLpjmVKFOJzDAmR549PfTLar/QsUGzEIMbMOO18z
 0MyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=B9WD0UIAbqi6ciKq3m7oYgEdzlZzbyEPxq09HEr3dSM=;
 b=o4+2XIQ2mLYOOwrzXVJTU8e1UuB2OHzKNHRbcpS2SS7NWJWx3h1Zmk0OLv1Q8U+xCm
 DlV5kpXvfFa6jwsWB24oIDtUeUecJyj7PzplQI7vQ98imdvGbMJru/hN9jU+3acPa0Fh
 +aX9lOCouh+4OxIDe5S1K1X12r1sjFpmV2BTA6rzFUaYI+G+rKa/y90CpxVYB52i4Z+p
 9gXSicrZXXBO5VH2x9lNNP9jzkDfhTly1gB7PzfLgLI+jrIKThAnUY4KcRuZTdb5qAv9
 ivWw/ZD0w+ZXIU1NiB48C8gQM2zMYiSeLX6bNllNZV5dnHuFLv6TYdJwJPdVcyxZVDev
 fO1Q==
X-Gm-Message-State: APjAAAWZHSO6TtQs+nzJtgFX/s8gXu5USx0L1fQa2PY69lG0c9j478my
 2O9dZIHJqkyKofhIfDqE0Nio6QvV
X-Google-Smtp-Source: APXvYqxoeybEsOv0XWLYcq51FCwvxanGD7ihbRmuOBaueymX/nxrrB+ioxSCyAOHf5SdYFrjEx0grg==
X-Received: by 2002:a05:660c:a59:: with SMTP id
 j25mr3688443itl.111.1559236731037; 
 Thu, 30 May 2019 10:18:51 -0700 (PDT)
Received: from my-p4 (CPE7085c263c0df-CMa84e3fcdd2d0.cpe.net.cable.rogers.com.
 [99.251.55.14])
 by smtp.gmail.com with ESMTPSA id v190sm1475359ita.14.2019.05.30.10.18.50
 for <speakup@linux-speakup.org>
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 30 May 2019 10:18:50 -0700 (PDT)
Date: Thu, 30 May 2019 13:18:48 -0400
From: David <david.a.borowski@gmail.com>
To: speakup@linux-speakup.org
Subject: changing synth language
Message-ID: <20190530171848.5lpqinjusszperc5@my-p4>
References: <mailman.1.1559232001.29486.speakup@linux-speakup.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mailman.1.1559232001.29486.speakup@linux-speakup.org>
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

in the file spk_priv_keyinfo.h there are keys lang_dec and lang_inc.
You can add them to the speakupmap.map file and then rebuild the kernel and
the make should see the updated speakupmap.map and run genmap to rebuild
speakupmap.h. Then synths that support lang should work.
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
