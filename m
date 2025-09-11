Return-Path: <speakup+bounces-1328-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7D0F5B532D0
	for <lists+speakup@lfdr.de>; Thu, 11 Sep 2025 14:54:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1757595268;
	bh=BFRTu9Tiqj0IK5MP9UIuvLrj7xcJPNIDenOn6v8DdoY=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=R0KLH8wbMulbwC1V8e1/oyG/EuohzEDlfIT/NoVCa0KOPAqI6FjgRB6CrismVpGXQ
	 OcGcYnJP004qWDgZ2QgBn7eOTE0hSzqKCYKOY4r9di8zRY3BEbmEA8fsc41mT/UMQM
	 FUbkmsbSug+MjaVR1/o7IJaluIr9lHHL34gIyFcY=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9304938211F; Thu, 11 Sep 2025 08:54:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1757595268;
	bh=BFRTu9Tiqj0IK5MP9UIuvLrj7xcJPNIDenOn6v8DdoY=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=R0KLH8wbMulbwC1V8e1/oyG/EuohzEDlfIT/NoVCa0KOPAqI6FjgRB6CrismVpGXQ
	 OcGcYnJP004qWDgZ2QgBn7eOTE0hSzqKCYKOY4r9di8zRY3BEbmEA8fsc41mT/UMQM
	 FUbkmsbSug+MjaVR1/o7IJaluIr9lHHL34gIyFcY=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 71C2F38270F
	for <lists+speakup@lfdr.de>; Thu, 11 Sep 2025 08:54:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1757595261;
	bh=BFRTu9Tiqj0IK5MP9UIuvLrj7xcJPNIDenOn6v8DdoY=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=xCnDPv4hDjpWuXfhKurEziCy4Cz5FcvRLVt0yiQCskjgNpDPq2Ex4k5Cl9YjrLJ8D
	 GSXx6J4XbLE+F143KotM9C94MwOVihTq7yOs3PrWEL4s8MuooBrikNzgIORXlXXQeE
	 EWvOQDgbBVtxfW7YV4oaPmjKAIEbk9S+0Y3JxKm0=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5AA4638271C; Thu, 11 Sep 2025 08:54:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1757595259;
	bh=BFRTu9Tiqj0IK5MP9UIuvLrj7xcJPNIDenOn6v8DdoY=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=YxtmTwAkhWDWa/46rcQzed6LYlM2Hd0nG+VjTbgOJM9ZJ7jH8TsFxXAp/2bU42MRI
	 Ikd/ZNh5Lgb1BfVaV762Z9RNvE1s3jpDRS7MTVsSgT4uh0o8vTWd97XxLoeidv5Yk3
	 ypSU7MzTcXe6OZ5QaBU0SN0FUhhs4eo5x7ZYG4vY=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BEA2138211F;
	Thu, 11 Sep 2025 08:54:19 -0400 (EDT)
Date: Thu, 11 Sep 2025 08:54:19 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: kperry@blinksoft.com
cc: 'Willem van der Walt' <wvdwalt@csir.co.za>, 
    "'Speakup is a screen review system for Linux.'" <speakup@linux-speakup.org>
Subject: RE: "your browser is not supported anymore" both lynx and elinks,
 what now?
In-Reply-To: <001e01dc2307$12695b30$373c1190$@blinksoft.com>
Message-ID: <537bf3ad-31bc-268b-4a11-8993ca64e752@reisers.ca>
References: <f2b8f3d0-eb0d-8426-09e2-1afce33c713c@csir.co.za> <001e01dc2307$12695b30$373c1190$@blinksoft.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I agree with Ken. I personally use emacs with the eww browser. There
are times it doesn't handle forms very well and then I fall back to
elinks.

   Kirk

On Thu, 11 Sep 2025, kperry@blinksoft.com wrote:

> You may want to look at the browsers that run in emacs. Emacspeak brings
> access to the w3 browser and I think it is still up-to-date.  Iam not
> currently using it but I might set it up and see today.
>
> Ken
>
> -----Original Message-----
> From: Willem van der Walt <wvdwalt@csir.co.za>
> Sent: Thursday, September 11, 2025 4:12 AM
> Cc: Speakup is a screen review system for Linux. <speakup@linux-speakup.org>
> Subject: "your browser is not supported anymore" both lynx and elinks, what
> now?
>
> Good day list,
> When trying to do a google search this morning, I got the above message.
>  My Orca setup is currently broken, so I would like to know if there is a
> console browser/searchengine combination that will still work?
> TIA, Willem
>
>
>
>
>

