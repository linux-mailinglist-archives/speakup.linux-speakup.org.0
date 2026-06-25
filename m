Return-Path: <speakup+bounces-1640-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tyIwKD9pPWo22wgAu9opvQ
	(envelope-from <speakup+bounces-1640-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 25 Jun 2026 19:45:35 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 305206C7FB2
	for <lists+speakup@lfdr.de>; Thu, 25 Jun 2026 19:45:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1640-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1640-lists+speakup=lfdr.de@linux-speakup.org"
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 38F103826F9; Thu, 25 Jun 2026 13:36:16 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 23132382699
	for <lists+speakup@lfdr.de>; Thu, 25 Jun 2026 13:36:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C6AE438269D; Thu, 25 Jun 2026 13:36:12 -0400 (EDT)
Received: from ta1.astrope.ca (ip74-208-146-219.pbiaas.com [74.208.146.219])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B31AE382674
	for <speakup@linux-speakup.org>; Thu, 25 Jun 2026 13:36:12 -0400 (EDT)
Received: from astrope.astrope.ca (modemcable038.110-160-184.mc.videotron.ca [184.160.110.38])
	by ta1.astrope.ca (Postfix) with ESMTPSA id 2B8F68015BD2;
	Thu, 25 Jun 2026 13:36:11 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 ta1.astrope.ca 2B8F68015BD2
Date: Thu, 25 Jun 2026 13:36:02 -0400 (EDT)
From: Trevor Astrope <astrope@tabbweb.com>
To: Georgina Joyce <gena@m0ebp.uk>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Social media from the terminal
In-Reply-To: <D7D21247-9059-4643-85A4-BEF006828EDA@m0ebp.uk>
Message-ID: <0ed1f22d-ffa0-ea58-3358-6034f00f2e3d@tabbweb.com>
References: <D7D21247-9059-4643-85A4-BEF006828EDA@m0ebp.uk>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.81 / 15.00];
	AUTH_NA(1.00)[];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1640-lists,speakup=lfdr.de];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_NA(0.00)[tabbweb.com];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER(0.00)[astrope@tabbweb.com,speakup@linux-speakup.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:gena@m0ebp.uk,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[astrope@tabbweb.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_NA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tabbweb.com:mid,tabbweb.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 305206C7FB2

Hi Gena,

If you don't find a cli for what you want, one thing I started doing 
lately is to use codex (or your favorite coding harness) and have it 
create one. I've had surprisingly good success at creating command lines 
for web guis. Sometimes it requires using chromium, but it can run it 
headlessly in the background and keep everything console based.

Or it might be able to suggest something that already exists. It has an 
excellent knowledge of what is available at github.

And it is pretty fun, at least for me. <grin>


Trevor

On Wed, 24 Jun 2026, Georgina Joyce wrote:

> Hello All,
>
> I just thought I would ask if anyone was using the terminal to access social media? I received an email that promoted a particular adaptive tech company's facebook pages. It got me thinking I have never been able to manage the facebook interface. I understood they also prevented access to the mobile site. I see that in 2012 there was fbcmd app. I'll look later to see if it is still available. I recall twitter was easy from the command line some time ago. However, I have no interest in X. I also believe there is an easy to listen to youtube videos option but the BT Speak requires a GUI browser to log into a Google account. So I am not sure if there are any pure terminal options now-a-days?
>
> Perhaps, I'm too old! LOL!
>
> Are there simpler social media options than IOS and Android?
> Thanks,
>
>
> Gena
>
>
>

