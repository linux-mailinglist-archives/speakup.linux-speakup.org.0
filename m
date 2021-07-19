Return-Path: <speakup+bounces-248-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9D1E13CEB7E
	for <lists+speakup@lfdr.de>; Mon, 19 Jul 2021 21:57:07 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 048C4380EF6; Mon, 19 Jul 2021 15:57:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1626724627;
	bh=I/xuhbVk6/t11GCJ9bozTkZjRhZOR8aCxu1JzoS5iKI=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=cXaMScDZ0fGN9c17mG5CqzCX5B4U2vvXi4ADyMZd+2HoURuIn0+vwJHSnXDUHEUB/
	 dIiGvhUgo2809t5u8d3KyU2o4fpDlZd/gsQ36cvglqOaFXJWIQONM8DMTqSi9hzyjw
	 Shu1jwO3AGzXliFqqzZT7iBiAvzBF1+WlR10DGxg=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E694138098B
	for <lists+speakup@lfdr.de>; Mon, 19 Jul 2021 15:57:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1626724626;
	bh=I/xuhbVk6/t11GCJ9bozTkZjRhZOR8aCxu1JzoS5iKI=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=mgppNRfy2s+cqHF44M/GiyUf21h9KeJHkSHmBV21slURlhh7dFvdzxDzBj6lK7yLq
	 t7QiwCaPOettt6TePysKg91sBxF+aRG1xbp2w10dMn0Y3vIlQecUfZXUvCxJ9fFA+b
	 fLej2p/sBZ1ye1xkH3pr3rNoxak6gaD3TZ/HJGr4=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5693E380B92; Mon, 19 Jul 2021 15:57:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1626724622;
	bh=I/xuhbVk6/t11GCJ9bozTkZjRhZOR8aCxu1JzoS5iKI=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=mIILi81EhBplopXldFoTtTFQwpcxswVE227iJhNRNalmocwgKWutuYqExfxVEnJxK
	 cSzrJxd487+fSltqsoZyJ74Uif7Ee8POXpWdyXX7wFiv2O5DHwv152uNq5nqgaSaDn
	 b4w0uvMPOPHJzAxbwD3Jaq/lDNUxKlQ+KykHf2jg=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3DA5338098B;
	Mon, 19 Jul 2021 15:57:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1626724622;
	bh=I/xuhbVk6/t11GCJ9bozTkZjRhZOR8aCxu1JzoS5iKI=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=mIILi81EhBplopXldFoTtTFQwpcxswVE227iJhNRNalmocwgKWutuYqExfxVEnJxK
	 cSzrJxd487+fSltqsoZyJ74Uif7Ee8POXpWdyXX7wFiv2O5DHwv152uNq5nqgaSaDn
	 b4w0uvMPOPHJzAxbwD3Jaq/lDNUxKlQ+KykHf2jg=
Date: Mon, 19 Jul 2021 15:57:02 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: =?ISO-8859-2?Q?Micha=B3_Zegan?= <webczat_200@poczta.onet.pl>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: changing subscription
In-Reply-To: <7f0bd106-57a2-1719-576a-29a0ecd8e926@poczta.onet.pl>
Message-ID: <4567e05e-447-308e-80ba-8128a9e9637b@reisers.ca>
References: <7f0bd106-57a2-1719-576a-29a0ecd8e926@poczta.onet.pl>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1042817529-1626724622=:81824"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1042817529-1626724622=:81824
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

The mailman pages and archives are no longer available. You can
unsubscribe your old address by sending a
speakup+unsubscribe@linux-speakup.org from that address. You can
subscribe your new address by sending
speakup+subscribe@linux-speakup.org from the new address.

Recreating a web interface and access to the archives are on my todo
list but they are not high on that list.

   Kirk

On Mon, 19 Jul 2021, Michał Zegan wrote:

> Hi,
> seems like something is very very broken because when I go to the
> mailman info page of the list and try to remind my password, the whole
> thing crashes.
> My intention was to change subscription to my new email address.
>
>
--8323329-1042817529-1626724622=:81824--

