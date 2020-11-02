Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1FD002A23C7
	for <lists+speakup@lfdr.de>; Mon,  2 Nov 2020 05:24:17 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 91020380F43; Sun,  1 Nov 2020 23:24:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1604291056;
	bh=UjvCqDQP/arju15OPJCq3tQ4nXYnRzECbptFHobGLh8=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=wgPSgCjAzvMedN/rKYzS9gdUUuJWUGIzAg+2CDWuCWPomMy9fxGtbUD6g5fD+Rcva
	 4wBmv3BxZXN+qw3mAG2OvGY+cqFVinJVxNQaCeeIGOFN+RQSY1TdEwoHnUhIeCuYLn
	 jMKDIUiVfFNcCMZuUYS072Spwh/QXovNIfPk61OQ=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6216E380F3E;
	Sun,  1 Nov 2020 23:24:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1604291054;
	bh=UjvCqDQP/arju15OPJCq3tQ4nXYnRzECbptFHobGLh8=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=Ru4cJP8dSaSaQgU0KTxONduUW1VXZEYpL7CAe44IGegElFReWDlhjKzJSLsmOnNtG
	 Q89/TYzPdycbPzpTca2VQyYpzmXaGDoDAbI7S1f6E2TpGDp4rO9PyI8Po/LP2gIvSJ
	 7x8PfXXNdeMsRctlhIx8xb9jYJyVUd84xVRbnNys=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id DC246380F1B; Sun,  1 Nov 2020 23:24:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1604291053;
 bh=v2FmVZgGlOaHmRexWoME10Hz4D5jqaqWUPfqBEVk8Ps=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=Sc4Jdq9q93DcDoCaDZSFvAb8cVU4ZtJxmejRrXF1tBbxo2VP4Yjt/ZyzAymlSpq4+
 wp3YGT1IprwlqE3etE+SZDpw7KmnAhp3twNa7AiVI/tmBAn8/gXuZ9HgIBVm/sA3//
 Iz8ZHfmD7U2bCT15urpvoQcqwvGkIbBRjOt17NME=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id C3EFB380F14
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 23:24:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1604291053;
 bh=v2FmVZgGlOaHmRexWoME10Hz4D5jqaqWUPfqBEVk8Ps=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=Sc4Jdq9q93DcDoCaDZSFvAb8cVU4ZtJxmejRrXF1tBbxo2VP4Yjt/ZyzAymlSpq4+
 wp3YGT1IprwlqE3etE+SZDpw7KmnAhp3twNa7AiVI/tmBAn8/gXuZ9HgIBVm/sA3//
 Iz8ZHfmD7U2bCT15urpvoQcqwvGkIbBRjOt17NME=
Date: Sun, 1 Nov 2020 23:24:13 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Another speakup cut and paste bug and park
In-Reply-To: <20201101213040.olsushjjokgnbyl5@function>
Message-ID: <alpine.DEB.2.23.453.2011012317180.605953@befuddled.reisers.ca>
References: <alpine.DEB.2.23.453.2010312053480.568552@befuddled.reisers.ca>
 <20201101213040.olsushjjokgnbyl5@function>
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

Well, when I originally wrote it if you toggled it on the reading
cursor would stay where it was when you toggled it unless you move it
specifically with the review functions. I did it so one could place
the reading cursor and have it stay in one place so programs that
update the screen constantly can be monitored. I do use it a lot. I'm
kind of surprised it was never documented.

The console changing code once again originally sync'd the reading
cursor to the system cursor position unless one had specifically
parked the reading cursor with the park toggle. It hasn't had the
original operation for a long time now. It wasn't something that
bothered me very much just a simple annoyence I notice when changing
consoles.

   Kirk

On Sun, 1 Nov 2020, Samuel Thibault wrote:

> Actually, I can't find any documentation about the parking feature in
> the spkguide. What is it supposed to do?
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
