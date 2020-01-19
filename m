Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A17BE141FAD
	for <lists+speakup@lfdr.de>; Sun, 19 Jan 2020 19:59:54 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 83D4C1C2A04; Sun, 19 Jan 2020 13:59:52 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=KYw6WWBc;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6CE561C2A1E;
	Sun, 19 Jan 2020 13:58:53 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id F1CB61C2A04; Sun, 19 Jan 2020 13:58:50 -0500 (EST)
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 8BC0C1C29FD
 for <speakup@linux-speakup.org>; Sun, 19 Jan 2020 13:58:49 -0500 (EST)
Received: by mail-lj1-x233.google.com with SMTP id l2so31512129lja.6
 for <speakup@linux-speakup.org>; Sun, 19 Jan 2020 10:58:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:autocrypt:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=kNQVQmYQ6aUI5xXzMc+NQcsef4hTZxdczLhRUPt92uo=;
 b=KYw6WWBcOJdK7duo57WbKBvBR3Av70kcszKYzAl6Hrnqs658L+FvOuAtErUHOCRJdU
 FLYLFYo/OTjhh7L9gzJ21FR9zgIWmdzyk4sq0TtW+LozI6ItnM+hha/UKzjp0B7J6Zx1
 FD+FnuLwymbIv4xXW0BBtZfibzDxKG1mRfl1jusYSpvb+AGr0zBfn3kl8inuvstGXs1+
 aKYgK4tV9JEtAkBNyBL9Se2UZ2iJHNh2DQFsamccXtMcp8qpz4Ar+r+UJdqeAoJGjb4/
 VNsyPjLl7Ja3zFsAerYWiwNvrJJGuLJFAw9hVEpwMWR3O1x5k25Srf10PXceThm9uE5C
 GBHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:autocrypt:message-id:date
 :user-agent:mime-version:content-transfer-encoding:content-language;
 bh=kNQVQmYQ6aUI5xXzMc+NQcsef4hTZxdczLhRUPt92uo=;
 b=lT2VV3L2Fzj0ZNK6dUC9kiB73RP+dY7hAEB7ipoql0noNF6Q6l/xjj9Orf5eHXzyq/
 vkG1XHeGcnKDY8lPKTruGgZQ0+NCYPvnoNQcgPaiZcHC8IB/kOFp0tE5PHVl+FAXc1Ju
 HLNXzGgAfjbQ+okzt5mTbDF5ojA8mVM/gylzX3WQAG3APxdzMsUIGOHibcRcCBkk8Bh6
 /mRvBR2N8foCNmuTHY6KtjLAAigiDO/zqgS8o+9nDMxMZ474Hw2FGzNYSuEUSNooadd5
 lY9mpLAE3BkzeKTCXNJs+xOsYzy5hKrkFevgFiX4uT7ZLJWTzfYx8XDMeW44yrqWg3V9
 OTCg==
X-Gm-Message-State: APjAAAXn/jV0JoKiyd68Cj2i31IwuQD83YkUpjM9YMRj+8LDZb0kyq41
 dMYVgrfTP8ECHMhZRurg9RYTEKCu
X-Google-Smtp-Source: APXvYqxWiYTzKuFUf9zcxBWu9cpZUrL4AJvEm5vOf7pEVw3761uDrn+BIztaIm9bSCsP3NiagcYvCQ==
X-Received: by 2002:a2e:8758:: with SMTP id q24mr11721760ljj.157.1579460327291; 
 Sun, 19 Jan 2020 10:58:47 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
 by smtp.gmail.com with ESMTPSA id f16sm15506858ljn.17.2020.01.19.10.58.46
 for <speakup@linux-speakup.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 19 Jan 2020 10:58:46 -0800 (PST)
From: Alexandr Epaneshnikov <aarnaarn2@gmail.com>
Subject: speakup lockup problem
To: speakup@linux-speakup.org
Autocrypt: addr=aarnaarn2@gmail.com; keydata=
 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
Message-ID: <a07e6785-5851-f993-1c2b-de5636f3ede1@gmail.com>
Date: Sun, 19 Jan 2020 21:58:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
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

hello. i see this problem is known. i experience it too on my arch box
with latest kernel 5.4.12-zen1-1-zen
are there any fix or bug report witch i can track?
this is a serious problem that prevents me from working.

Sincerely, Alexander
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
