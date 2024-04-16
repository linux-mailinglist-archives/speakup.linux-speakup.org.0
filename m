Return-Path: <speakup+bounces-1103-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9E8BD8A732D
	for <lists+speakup@lfdr.de>; Tue, 16 Apr 2024 20:25:12 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E8F11C81CCA; Tue, 16 Apr 2024 14:25:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D6713C81C72
	for <lists+speakup@lfdr.de>; Tue, 16 Apr 2024 14:25:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7222BC81C72; Tue, 16 Apr 2024 14:25:07 -0400 (EDT)
Received: from out.packetderm.com (out.packetderm.com [173.166.91.13])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 25916C81C70
	for <speakup@linux-speakup.org>; Tue, 16 Apr 2024 14:25:07 -0400 (EDT)
Received: from localhost (out.packetderm.com[173.166.91.13])
        by smtp (5.7.4/5.7.4) with ESMTPSA id 43GIOqoO007195
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
        for <speakup@linux-speakup.org>; Tue, 16 Apr 2024 14:24:53 -0400 (EDT)
        (envelope-from speakup@clul.router5.com)
Message-ID: <MTAwMDAwMi5jbHVs.1713291893@quikprotect>
Date: Tue, 16 Apr 2024 15:24:45 -0300
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Subject: Re: How Can I Enable Speakup in Arch?
Content-Language: pt-BR
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <5f590a48-de70-df83-f932-7c8b45f20c9d@hubert-humphrey.com>
 <018d835d-9ff8-e6cb-1cb3-d3182c40c3ec@panix.com>
 <44349bc7-0281-802e-b2e6-ca87886c9dbe@hubert-humphrey.com>
From: Cleverson Casarin Uliana <speakup@clul.router5.com>
In-Reply-To: <44349bc7-0281-802e-b2e6-ca87886c9dbe@hubert-humphrey.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Chime, you need the Voxinup connector, which makes the interface 
between speakup and Voxin. Try downloading it from:
https://codeload.github.com/Oralux/voxinup/zip/refs/heads/master

Best,
Cleverson

