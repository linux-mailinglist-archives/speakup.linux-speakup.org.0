Return-Path: <speakup+bounces-1565-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHPDBPD9uml2eAIAu9opvQ
	(envelope-from <speakup+bounces-1565-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 18 Mar 2026 20:33:04 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BB1F12C20A6
	for <lists+speakup@lfdr.de>; Wed, 18 Mar 2026 20:32:58 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9F7ED38272D; Wed, 18 Mar 2026 15:32:57 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8C4D0381976
	for <lists+speakup@lfdr.de>; Wed, 18 Mar 2026 15:32:57 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 50EDC381976; Wed, 18 Mar 2026 15:32:54 -0400 (EDT)
Received: from btprdrgo003.btinternet.com (btprdrgo003.btinternet.com [65.20.50.48])
	by befuddled.reisers.ca (Postfix) with ESMTP id D265A3818EC
	for <speakup@linux-speakup.org>; Wed, 18 Mar 2026 15:32:53 -0400 (EDT)
Authentication-Results: btinternet.com;
    auth=pass (PLAIN) smtp.auth=mike.ray@btinternet.com
X-SNCR-Rigid: 69AF652F00DD27CD
X-Originating-IP: [86.155.172.100]
X-OWM-Source-IP: 86.155.172.100
X-OWM-Env-Sender: mike@raspberryvi.org
X-RazorGate-Vade: dmFkZTGdandfdGHTnRdyYdGay74frBkKFMslN/XYHE+9e6ncD7NWxR3izALNBK7JPCYdlbexSQwa6BC5DnPHkLoBdZARL8XmkleY2ifyklLhJCXTBIGbD8spP26mITnKMg8SYslzkGwxJmbxA3kcORKbIFj0/yi4B+2d52TsE0YZisDKLd3x0+FNeoJJhxOcctLDUlxNBsZK8srdTMle27pQqr+K5qJoz1n1tfyL0XI2RlGzlnu6a69n9E6yKrUi+E6M3ChXxBtd/KJW4prOUA6WomhiqUBZngGVjt92cqOnpsdwFMfTXmzkaQdAzF/qhe/cUR8jcxGC8mU9KrCDGG0F2NaXt4VB4wn6NHwXBwD8tj4WzZrLLEA9t6dq4yoR0O+FyCje4hBoVMPMrdibaeblwRoDPFsQYcOcXt5sbW2w4sVEBm4PRNgT0iCdEBVfR9KrmWTyPmFwg1KjcffvWuauAi6R00HUWuJJ4vT9koxghu6JZiIlsyG319GW+u/uKiFzMPGu/uFehohgB7eU/G3tojAmvh8nCvLYIbsmSTOQsOLc7Epskx8V2YmupkbOmd8MB/uGmgwLqgkuFfwLLXH2YDURzQ54ATDcoxcvf2RxA/62n7udCoL1NAnNJoiXc+gmHMAfsHJ2xxA/qN7QOIteUrNjDBnTQPv4gvXD1Xxwu7lBTA
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
X-VadeSecure-score: verdict=clean score=0/300, class=clean
Received: from [192.168.68.103] (86.155.172.100) by btprdrgo003.btinternet.com (authenticated as mike.ray@btinternet.com)
        id 69AF652F00DD27CD; Wed, 18 Mar 2026 19:32:38 +0000
Message-ID: <65660797-d85c-488b-ae64-fdba06f3e5d4@raspberryvi.org>
Date: Wed, 18 Mar 2026 19:32:37 +0000
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: mike@raspberryvi.org
Subject: Re: RPItalk hardware speech synth project
To: "John G. Heim" <jheim@math.wisc.edu>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <f58445bf-9bef-466a-8c0d-2707001c9c84@math.wisc.edu>
Content-Language: en-US
From: Mike Ray <mike@raspberryvi.org>
In-Reply-To: <f58445bf-9bef-466a-8c0d-2707001c9c84@math.wisc.edu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [0.81 / 15.00];
	AUTH_NA(1.00)[];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1565-lists,speakup=lfdr.de];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[raspberryvi.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mike@raspberryvi.org,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[mike@raspberryvi.org];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.990];
	HAS_XOIP(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[raspberryvi.org:replyto,raspberryvi.org:mid,wisc.edu:url]
X-Rspamd-Queue-Id: BB1F12C20A6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



John

Is it interruptible? And is there a speech-dispatcher driver for it? 
Does it simulate an existing hardware synth such as the DECTalk, or 
another one?

Mike




On 18/03/2026 18:29, John G. Heim wrote:
> Okay, I've mostly wrapped up development of my Raspberry Pi hardware 
> speech synth project. From now on, it will be upgrades or maintenance 
> releases. Instructions for building a device can be found here:
> 
> https://people.math.wisc.edu/~jheim/RPITalk/
> 
> The biggest thing yet to be done is to get my  package into the Debian 
> archive so it will get into Raspberry Pi OS. That doesn't depend on me 
> though. I've already taken the steps I need to take to get my package 
> into Debian but I haven't heard back from Debian yet. In the mean time, 
> I set up  a Debian  repository on my own space at the University Of 
> Wisconsin. Installation can be done easily via aptif you add my 
> repository to your system.
> 
> I've tested this  on  a Raspberry Pi Zero, a Pi 4, and even on a Linux 
> laptop. I've used both an OTG (gadget) port with a plain USB cable and a 
> regular USB port with a USB-serial converter. In other words, with this 
> package, you can use any machine running Linux as a hardware speech 
> synth. You could take an old Windows laptop, install Debian on it, and 
> use that as a hardware speech synth. But I am guessing most people are 
> going to want to use a Raspberry Pi or similar device.
> 
> 
> 
> 


-- 
Michael A. Ray
Software engineer
Witley, Surrey, South-east UK

He/him

"Perfection is achieved, not when there is nothing more to add, but when 
there is nothing left to take away." -- A. de Saint-Exupery



