Return-Path: <speakup+bounces-376-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 58C794D0D3C
	for <lists+speakup@lfdr.de>; Tue,  8 Mar 2022 02:07:15 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=disr.it header.i=@disr.it header.a=rsa-sha256 header.s=mail header.b=NX3U5QGU;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 49DB5380E54; Mon,  7 Mar 2022 20:07:14 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2CA2B380D47
	for <lists+speakup@lfdr.de>; Mon,  7 Mar 2022 20:07:14 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DB38C380D48; Mon,  7 Mar 2022 20:07:07 -0500 (EST)
Received: from knopi.disroot.org (knopi.disroot.org [178.21.23.139])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 17180380C73
	for <speakup@linux-speakup.org>; Mon,  7 Mar 2022 20:07:06 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id A621B40041
	for <speakup@linux-speakup.org>; Tue,  8 Mar 2022 02:07:02 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uhKmX8SlPuJ1 for <speakup@linux-speakup.org>;
	Tue,  8 Mar 2022 02:07:01 +0100 (CET)
Subject: Re: I can't change languaje
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disr.it; s=mail;
	t=1646701621; bh=L5t9/DPAh+PVWV7n3ukILQc/Okt5pFFjXHestbNtcG0=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=NX3U5QGUP7VLWo+wOl4fDkeC7QwwgFahvBijAab6/E9TFVlFlZgyjEyoRhQnGP2JH
	 N+klwWjsRca5P160J3q91+CLeDapDUfK50K4PmpFDvtp0fZVjDG/RlDsiKz/5OMlkW
	 TeqQzg+pr9wVDnt+kLhRnbvU5YyVwjeg4A5BpUTkQN1WWmQWn51KzaoZIs7HMC8DcO
	 6NDkrnSr5J/vcFH3yuZeCSsILBcpK2E13p+EycpzI/okF9+EJnNZu2hRsmsbmLN8uO
	 0XQPxol9DziGnsDRdeM2u8ZGRPNblN2ynkWi5L33JDfaoTSs6cCHHeFNXREo2b6IC0
	 FX9vxzsfLYaKQ==
To: speakup@linux-speakup.org
References: <DM6PR04MB6268EB668254EF3EE9FB7127DA089@DM6PR04MB6268.namprd04.prod.outlook.com>
From: Cleverson <clul@disr.it>
Message-ID: <8e6c941e-9cb9-72fa-7884-0c6aad214b2b@disr.it>
Date: Mon, 7 Mar 2022 22:06:57 -0300
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0
In-Reply-To: <DM6PR04MB6268EB668254EF3EE9FB7127DA089@DM6PR04MB6268.namprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: pt-BR
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi, if I recall correctly, you need to first deactivate the systemd 
service responsible for espeakup. the command should be something like:
systemctl espeakup stop

then you can run the command you wrote:
espeakup --default-voice=es

Cheers,
Cleverson

