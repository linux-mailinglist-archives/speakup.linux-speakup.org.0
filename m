Return-Path: <speakup+bounces-251-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C6F343D3D90
	for <lists+speakup@lfdr.de>; Fri, 23 Jul 2021 18:28:51 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8FC94380F3A; Fri, 23 Jul 2021 12:28:50 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=bMcR3JsA;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 714D6380C71
	for <lists+speakup@lfdr.de>; Fri, 23 Jul 2021 12:28:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4FD11380C76; Fri, 23 Jul 2021 12:28:44 -0400 (EDT)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DD5F7380B3F
	for <speakup@linux-speakup.org>; Fri, 23 Jul 2021 12:28:42 -0400 (EDT)
Received: by mail-lf1-f46.google.com with SMTP id r17so3028682lfe.2
        for <speakup@linux-speakup.org>; Fri, 23 Jul 2021 09:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uNzoddz+mhr+NCA+95L6D38m7ak8Q0N2T7Hebj2qK9o=;
        b=bMcR3JsAP/ao4h5dYSZkIqkVzear4CQM7jRxIbBOXf1fUrie+riZ9jlcspQkn0rkxE
         z/naaPVvOP0dhGUMYYBX9Aa3Nq8dw57JuP2cFO1SYgoU2lefvK2vERxm2rnHoZ+bJKSF
         dSkAh7IWwDvwSVBEul3uJfSE3Dhvp2GRIwbqr45rd3opjsMOW/2Tz5zjmzWpN9E3djOM
         5FvMpez6IhgcebqcI/Z7IYICKRbcquLXs33lxP0UEkC7u/KbHRKmMxUoSyFSsFuNlkVo
         GXHvxpHaTOZkWp95Q6iXdMktWEzdleCeaxdX2UD8k77ESIaNWLk3Umrkp0QryBeka9Hs
         eOCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uNzoddz+mhr+NCA+95L6D38m7ak8Q0N2T7Hebj2qK9o=;
        b=PPUiNZohlDE9zdGiMJEiZh7hY0Wvoy3kimzkwIiOJYklDsnKuvIUdwkRRUojE7muW+
         Xrzs1ixmyr2Ge9tJnXzzyABJQpWyYzCTjf9SmqlLKg4CBsHMcQ8s+fre8cNyqBVCV8IB
         BNSUKmrDEninCtspf2MKW9jIg6mymqZzVbjfg1sLAvqOBxWYIcHaMPrwTECvuNEdqW00
         flEhKpg7kYu5m7lNsKGQD6NMbAEBZpqbedLhzLwH371jIhijiVQifzPssJXo6A+XIQcK
         aGdxmUR/NRZXi1E7NI0eAbvABogVoVwOVD2uflbBX+fl2rp5VZys3EW92+nZai/Vuzv6
         25YA==
X-Gm-Message-State: AOAM532m5GwcDEHdiqa6YKz/lF84dnlem/yVaIkFlbbUO6wtpeG6a0ai
	4JfZY6if51/cvX6gzxxDgp8=
X-Google-Smtp-Source: ABdhPJzn8Uo/cocol7e2KCZAGjSLD32wZzsgsYM3b6WtahIlYVMUwGs433pJ6XKCLrwVPLTSYieGlA==
X-Received: by 2002:a05:6512:220b:: with SMTP id h11mr3540215lfu.504.1627057652931;
        Fri, 23 Jul 2021 09:27:32 -0700 (PDT)
Received: from localhost ([91.77.167.245])
        by smtp.gmail.com with ESMTPSA id o22sm2290278lfl.6.2021.07.23.09.27.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 09:27:32 -0700 (PDT)
Date: Fri, 23 Jul 2021 19:27:31 +0300
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
To: "Joseph C. Lininger" <joe@pcdesk.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Speakup on Arch Linux
Message-ID: <20210723162731.ybyg2okeqgydfzph@alex-pc>
References: <c5c14706-16d7-c9bf-9b1e-b72e52b37889@pcdesk.net>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <c5c14706-16d7-c9bf-9b1e-b72e52b37889@pcdesk.net>
User-Agent: NeoMutt/20210205
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Fri, Jul 23, 2021 at 12:12:12PM -0400, Joseph C. Lininger wrote:
> Good day all,

hello Joseph.

> I saw a couple of messages earlier about ALSA issues on Arch Linux with
> espeakup. I can't find them now though. The latest versions of alsa,
> speakup, linux kernel, etc. cause the speach to lag while typing. Is there a
> workaround to this, packages I should not upgrade right now, etc? I can
> revert my system to a previous state, but I need to know how to avoid this
> problem when I go to update packages going forward. Also, anyone know if a
> fix is in the works? Obviously just permanently using older package versions
> isn't a good solution.

can you describe problem in more details? or maybe you can record sound?
>
> Thanks in advance.
> Joe
>
--
Sincerely, Alexander

