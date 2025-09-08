Return-Path: <speakup+bounces-1325-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 676EDB49BC4
	for <lists+speakup@lfdr.de>; Mon,  8 Sep 2025 23:23:10 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=crosslink.net header.i=cstrobel@crosslink.net header.a=rsa-sha256 header.s=zoho header.b=AHRtbM+U;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E60C0382748; Mon, 08 Sep 2025 17:23:09 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C554E38272F
	for <lists+speakup@lfdr.de>; Mon, 08 Sep 2025 17:23:09 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 80C39382729; Mon, 08 Sep 2025 17:23:02 -0400 (EDT)
Received: from sender3-op-o12.zoho.com (sender3-op-o12.zoho.com [136.143.184.12])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 89FE9382724
	for <speakup@linux-speakup.org>; Mon, 08 Sep 2025 17:23:01 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; t=1757366561; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=HGF/KC0hNl7bYAvs6HTfH+Y4/XZvv17coAq5xuCAtvkfQoh684/KdRGPSJzIlB6lyKzQXMWa3GyhTZaJ9wPZHHiDXEJkfBNYQ8j/Hk5dE3VVCfNZ5dJcmbWLk9O0dnsWf/xbFjwPZ6hU7Qo3igM4fFlUXVmtmx/YikmLE1ak2gU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1757366561; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=HCihoaidhoUIUlsnbqh6M1DaqV/9ztkw0RcMTG7/IRs=; 
	b=nkGp4RrtyKIWUPcotCzM/m32PhlsiHJoUQAw8XpR/4lwo4TcP+/uAWNf7GJvERm99FkG7E3YgIo/RTNlNsCpUC3ontmWyN5UpMkpbA9metpHxv/eDJZgLFY0FX+iLkinYw8rUgTpy1iVNZy4dE0pxwKU7WyqIibx0Yv0kUGXsCM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=crosslink.net;
	spf=pass  smtp.mailfrom=cstrobel@crosslink.net;
	dmarc=pass header.from=<cstrobel@crosslink.net>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1757366561;
	s=zoho; d=crosslink.net; i=cstrobel@crosslink.net;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To:Cc;
	bh=HCihoaidhoUIUlsnbqh6M1DaqV/9ztkw0RcMTG7/IRs=;
	b=AHRtbM+UOwjIjP+U29I54K1VG0DmLIr3wxAS1V2Pdt1FDxmBzamzG0fsCzSjhnQX
	DgDwpT9aEWKbVgsWQdnhcCQNwfL/f7vJavpEwpNKim6gb8f9gvzjyjt9oEyrNYatDHs
	DHjmeRKxWUJC1KmVyQRNjpyQTvtJa+uMbNyvgFsU=
Received: by mx.zohomail.com with SMTPS id 1757366558806252.4508029712564;
	Mon, 8 Sep 2025 14:22:38 -0700 (PDT)
Message-ID: <2a46280b-3f61-492b-b7a4-b7f685c41a4e@crosslink.net>
Date: Mon, 8 Sep 2025 17:22:37 -0400
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: speakup from boot
To: speakup@linux-speakup.org
References: <aL5U_xg372xiMOJm@cudneys.ca> <aL5dVITcCcq369vC@cudneys.ca>
 <aL9BrQYKOSsZg6NJ@gregn.net>
Content-Language: en-US
From: Chevelle <cstrobel@crosslink.net>
In-Reply-To: <aL9BrQYKOSsZg6NJ@gregn.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On my Debian systems, Speakup does talk before login in.  I'm using 
espeak-ng.  I'm not sure what 'softsynth' is, or why you need to stop 
espeakup at all? On this system typing 'systemctl status espeakup' shows 
it running.



On 9/8/25 4:50 PM, Gregory Nowak wrote:
> Switch to a systemd-free distro like devuan or void. Probably not the
> advice you wanted.
>
> Greg
>
>
> On Mon, Sep 08, 2025 at 04:36:36AM +0000, Terry D. Cudney wrote:
>> Hi again,
>>
>>     To give credit where credit is due...
>>
>>     This little script (now modified) came from Kirk...
>>
>>     This is how I get speakup to talk after logging in.
>>
>>     First I must run this script,  as root:
>> /* start of script */
>> #!/bin/bash
>>
>> systemctl stop espeakup
>> /usr/bin/chown terry:terry /dev/softsynth*
>> /usr/bin/chmod 1777 /run
>> /* end of script */
>>
>>
>> Then logged in as myself, I run espeakup as an application.
>> /usr/bin/espeakup
>>
>> 	From here on speakup talks normally on all tty's including the login prompts.
>>
>> 	This is good, but not completely satisfactory, The goal is to have speakup talking before loggin in, ideally from power-on.
>>
>> 	Thanks again for any suggestions/help ,
>>
>> 	--terry
>>   
>> -- 
>> Name: Terry D. Cudney
>> Telephone: 289-438-6828
>> E-mail: terry@cudneys.ca
>>   
>>

