Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C92E72E024A
	for <lists+speakup@lfdr.de>; Mon, 21 Dec 2020 23:03:43 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6570F380F92; Mon, 21 Dec 2020 17:03:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1608588223;
	bh=7mkmL1L2m2jp8PaSfaHB6hEy3JB9HiYQJUVcOf5ewdg=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=K/0vcRQUrJO6rpWqA0KMewA2Gx9jeyg5JON2LwcLcENrzebbbD5WMceF6cZbsDLSm
	 j3RZiTWrnPc0udlAUV42DKqg5bscRMZU068AxpiwcylshNzfxwBI5gAWyenXYXYYzm
	 CrKLUDt2XI4ij8zMOvrF7GH4TelMd4wekuXocU8k=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3FF92380F44;
	Mon, 21 Dec 2020 17:03:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1608588221;
	bh=7mkmL1L2m2jp8PaSfaHB6hEy3JB9HiYQJUVcOf5ewdg=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=rXh6y0inqBUZh3qLrWiBjfVyzwwt0JKWlIp/aSm9oYV7NdM991Wuuv8K12BVNzGag
	 toe8p/5rXatB5A7UX5G2FuixaGW+0qijRGUUSxP6mCX16UVwrbWHCdWgrumd+ppO5k
	 GNp7xsWuRdhqe+b7t0+0WXTnKv7CjUi+GSTEYSvE=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id D92A2380F1B; Mon, 21 Dec 2020 17:03:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1608588220;
 bh=StO/zdMWbrDjmRBn9Fk82B1gjzCNl2G71q3k/yKmsj0=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=LnNHTi1EcTDDtdRhdXglI8eXvTJof4LtPekzaYEJfBs+JUPBw5UfPXUsJ0kG8rijt
 wP0eG+zbH8cjAyLLt0rzH75j1ejuEdUUXcoYkDeJ09yUUon4Z2gbDzncghIeVnIHId
 oWNu/0LMLn3dmC/zkFDbtUh7W2tk8xVw8l269Ha4=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id C64A5380C1A
 for <speakup@linux-speakup.org>; Mon, 21 Dec 2020 17:03:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1608588220;
 bh=StO/zdMWbrDjmRBn9Fk82B1gjzCNl2G71q3k/yKmsj0=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=LnNHTi1EcTDDtdRhdXglI8eXvTJof4LtPekzaYEJfBs+JUPBw5UfPXUsJ0kG8rijt
 wP0eG+zbH8cjAyLLt0rzH75j1ejuEdUUXcoYkDeJ09yUUon4Z2gbDzncghIeVnIHId
 oWNu/0LMLn3dmC/zkFDbtUh7W2tk8xVw8l269Ha4=
Date: Mon, 21 Dec 2020 17:03:40 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Hosting speakup on freedesktop?
In-Reply-To: <20201221214457.hu7cg3ino7yqqswn@function>
Message-ID: <alpine.DEB.2.23.453.2012211701310.533489@befuddled.reisers.ca>
References: <20201221214457.hu7cg3ino7yqqswn@function>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
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
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hi Samuel et al: That works fine for me. I haven't really had much to
do with development work on speakup for a longg time. You had an
account on my server but I see it appears to have disappeared sometime
over the years for no reason I can think of.

   Kirk

On Mon, 21 Dec 2020, Samuel Thibault wrote:

> Hello,
>
> Currently we have an old git repository on
> http://linux-speakup.org/speakup.git , that was not updated since
> ~2013.  I don't seem to have push access to it. We also have some
> bug tracking on https://github.com/bytefire/speakup/issues . This
> looks quite scattered, and github.com depends on the good will
> of Microsoft. I'm thinking that we could have speakup hosted on
> https://gitlab.freedesktop.org (freedesktop is a "completely volunteer
> organisation with no corporate backing or funding stream", notably part
> of X.org). We can keep the mailing list as it is, but we could move the
> git repository and the issue tracking there, where it is easy to create
> accounts, give rights, follow-up on bugs etc.  I have made a request for
> a speakup group creation to freedesktop people.
>
> The idea is that on that repository we could host the latest version of
> the speakup source code, so that people can try it without having to
> patch and rebuild their whole kernel etc.
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
