Return-Path: <speakup+bounces-302-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3EBD0410C54
	for <lists+speakup@lfdr.de>; Sun, 19 Sep 2021 18:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1632067440;
	bh=qSkSxchLM137PwLQKHAOiZv3rvENFC9TA1uQbh9UZ7A=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=Pjn8wZpRd3pPA/jEN0SjdShdP+EiiNwyQR+spSxKBG9CTUNQ01eNGirESBuBf1EsF
	 XAlM/pZFqosQPa6+/+c8u0iIwxruwWb4OfZzKclEgDTsLncd4Qfbgh4KtyX/KKB8KA
	 CW20ELgcc5fJTEdDLcCe1MVsJe+J/Y4OaPToSU8s=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 955D93811E1; Sun, 19 Sep 2021 12:04:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1632067440;
	bh=qSkSxchLM137PwLQKHAOiZv3rvENFC9TA1uQbh9UZ7A=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=Pjn8wZpRd3pPA/jEN0SjdShdP+EiiNwyQR+spSxKBG9CTUNQ01eNGirESBuBf1EsF
	 XAlM/pZFqosQPa6+/+c8u0iIwxruwWb4OfZzKclEgDTsLncd4Qfbgh4KtyX/KKB8KA
	 CW20ELgcc5fJTEdDLcCe1MVsJe+J/Y4OaPToSU8s=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 835E9380982
	for <lists+speakup@lfdr.de>; Sun, 19 Sep 2021 12:04:00 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1632067435;
	bh=qSkSxchLM137PwLQKHAOiZv3rvENFC9TA1uQbh9UZ7A=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=P+0q1ZVXBxU9DmiMGsZucCkLCXFlu570Hjwkl6jj0fIJcnx7ntOcPspEg8ijGUvKJ
	 hU0r0i7sMoBFfAUOv1708dmSOOl/33tTA9vpiq/eGZI1kEeupMDlMG+hmJK2CJuNz9
	 NmNTcPsB/94/QxhKpb9D518NTV3SPkw+ndlGeacg=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E109E380C5A; Sun, 19 Sep 2021 12:03:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1632067434;
	bh=qSkSxchLM137PwLQKHAOiZv3rvENFC9TA1uQbh9UZ7A=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=gaiLi/yeKjGLpr0O0qd3kmQKOjyGoZXuoEsBAr11TkDSlHoGWrIB0304PsqNLvXev
	 v0NhHTDP1nFkcLvNX0JLhmdnz3jo66dg9YL9RB5XOCXvzBO7QN5tgv6+TUaz0KaxzR
	 gZDT0XfDGU73gHSayAKgIjL19w40VDCg4a6IUNK4=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D46DD380982;
	Sun, 19 Sep 2021 12:03:54 -0400 (EDT)
Date: Sun, 19 Sep 2021 12:03:54 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
cc: speakup@linux-speakup.org
Subject: Re: Broken espeakup on debian sid
In-Reply-To: <20210919144914.fxgktwspo7wxhkqv@begin>
Message-ID: <db4aba7-807a-a243-92b1-ec77d54611a2@reisers.ca>
References: <74614290-2cb8-c5a7-91e9-e639a673464a@reisers.ca> <20210919144914.fxgktwspo7wxhkqv@begin>
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

Good suggestion Samuel. I'll see what that provides.


On Sun, 19 Sep 2021, Samuel Thibault wrote:

> Hello,
>
> Kirk Reiser, le jeu. 16 sept. 2021 12:04:58 -0400, a ecrit:
>> Hi folks: Does anyone have espeakup running on debian sid with
>> libasound2 1.2.5?
>
> I don't have any problem with espeakup + libasound2 1.2.5 on debian sid.
>
> I guess to debug the issue we'd need the output obtained when running
> espeakup with the -d option.
>
> Samuel
>

