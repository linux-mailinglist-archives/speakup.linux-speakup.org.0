Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 72733231EB4
	for <lists+speakup@lfdr.de>; Wed, 29 Jul 2020 14:42:10 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 796051C0483; Wed, 29 Jul 2020 08:42:09 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=Q7EUOO+X;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7ABE11C06E8;
	Wed, 29 Jul 2020 08:41:01 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 538CE1C0481; Wed, 29 Jul 2020 08:40:57 -0400 (EDT)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
 [209.85.218.44])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 5C58C1C047B
 for <speakup@linux-speakup.org>; Wed, 29 Jul 2020 08:40:55 -0400 (EDT)
Received: by mail-ej1-f44.google.com with SMTP id w9so24153304ejc.8
 for <speakup@linux-speakup.org>; Wed, 29 Jul 2020 05:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=EWSdZL0m5Ae6/ZrvRVAyebK3uGERWCq3RRtOtCxshgA=;
 b=Q7EUOO+X7BQQpx6hePJTOCufCUz0pWSuFpA0YgyEQ5LxDvoHloiddBxCQcuzW0KqRw
 yR5nKL/uAJTxn+ubjDBCxXAPMBKzv8JJ52xyps/jdri7qwu00K1hHmm3i8+ptK0uLMKV
 lMfovQ9O6RiTvQvbA/dZGlClcN+NolZoOD7Rf59rqV44A1OhApjxjbtOJnv1dXL3GkX7
 OpVtUABXI6DijGy8sqQoQqL4SZ0u1d7rIP9K1f/yzG0D7bbC6vrHXp+gks55mD7BwFQP
 jvxKAA/cUlmCX6G/d993owAV1+5NQSNqnKwc+QzOD4z3+zQ5lkd3/3FbGCg5ONH4fO0o
 CeMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=EWSdZL0m5Ae6/ZrvRVAyebK3uGERWCq3RRtOtCxshgA=;
 b=ksEqJ9m5mJJWRhYC0RYqX7AZmIyTW2mqojq8KpAa6AmBY65otgDBsRiHpKEku67uIj
 kJH7GrRA438MFy9BndNZsP9LJrhDlfPefYBTCuE3XxWp4xznp7HP/YtWSm/TQ03BcXlx
 1NUrFCxil0gVf2vGA5RKfZNxJKO22vMqqMIgAM3TQyBMabyFZkMJytJG28OGM6j9dIAF
 WBNzldrrqwzzjM72IKZYBryekmQYCUa7OX1X1R+AOMAEQFPVR6N9qdO1vOK56uXgJV+X
 orvFVAg+PxNlP1TBtszD+xxxpy1KZodKPw43+RLDgQ74mK2k8CFMwNimQQXfCVkh0a9K
 mpPw==
X-Gm-Message-State: AOAM531vFn9tgxAUT9+4MAfZf/pEKRyEw6ERUX6c3KtE62LOQ82gTooP
 oP5yJL8zJqDgNOT8TNjVHXTL5/gKsHc0bEHSq0itU0JH
X-Google-Smtp-Source: ABdhPJxY4xjbNb5deUjKmn3QDC8sC6xaLXq7RvbM/Zc2T4YEIEKVh1oDI4z1ZKkYNWMVnJhVRK/2XvHopgjMrCwI85s=
X-Received: by 2002:a17:906:c08a:: with SMTP id
 f10mr20134799ejz.181.1596026392442; 
 Wed, 29 Jul 2020 05:39:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200729003531.907370-1-samuel.thibault@ens-lyon.org>
 <20200729120533.GA2883831@kroah.com>
 <20200729121936.6ajd3b6vc5oox2aw@function>
 <20200729122042.pu6aksehzxoesvoh@function>
In-Reply-To: <20200729122042.pu6aksehzxoesvoh@function>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Wed, 29 Jul 2020 13:39:41 +0100
Message-ID: <CAOtcWM3Oe2C-CM=Cx5h8ZvTjvx7iA=zg3Dmxuy05th2oqQi4wA@mail.gmail.com>
Subject: Re: [PATCHv2] staging/speakup: Move out of staging
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
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

Great news! Thanks very much Samuel. It's a big milestone.

On Wed, 29 Jul 2020, 13:22 Samuel Thibault, <samuel.thibault@ens-lyon.org>
wrote:

> For information for the speakup mailing list: that means speakup in
> mainline Linux probably in its version 5.9.
>
> Samuel
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
