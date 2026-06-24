Return-Path: <speakup+bounces-1629-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lkXXMQz+O2pLhwgAu9opvQ
	(envelope-from <speakup+bounces-1629-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 17:55:56 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DD74D6BFD55
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 17:55:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=hubert-humphrey.com header.s=fm2 header.b="PA/6yYOv";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b=G9oWfTcg;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1629-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1629-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=none) header.from=hubert-humphrey.com
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6BFA438269C; Wed, 24 Jun 2026 11:55:55 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4DC1538260D
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 11:55:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1E4BB38263F; Wed, 24 Jun 2026 11:55:49 -0400 (EDT)
Received: from fout-a3-smtp.messagingengine.com (fout-a3-smtp.messagingengine.com [103.168.172.146])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A61473817CB
	for <speakup@linux-speakup.org>; Wed, 24 Jun 2026 11:55:48 -0400 (EDT)
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfout.phl.internal (Postfix) with ESMTP id 8295FEC0384;
	Wed, 24 Jun 2026 11:55:45 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Wed, 24 Jun 2026 11:55:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1782316545;
	 x=1782402945; bh=a2q4SiP22vtZi6dprN7htQdfC5rqYVCmdPYyZfUsV68=; b=
	PA/6yYOve+jyQnx2PIiB+oWS+8/z5wTSWW6P0p++eNAhxLRJTLwemhQIq6IYK+Yt
	JJXF1vLCda2vYKuXKpdRpxunjndTvoq7orE+/YRomJF87WkHhMa5Hrvh4wvWIZCM
	yJKQoYZZe5E6hOvuy2M2r5IGrLaebfH/z45ruOSZEFrPxC5fBfphdBcQ/QHJddH2
	HHzBtyo3R/epjcL7Yi0fMmgOpp60Ksq31BGJ46Dri/cxTMVJUATMf06M6o6Gv098
	P5uJvDS45oOegDriKHzGVajSFeJkacMfun1rpjArMWAfOr64d3w4hGbaZuJbCTG6
	PZuUJUf253re9iCLCWAh/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1782316545; x=1782402945; bh=a2q4SiP22vtZi6dprN7htQdfC5rqYVCmdPY
	yZfUsV68=; b=G9oWfTcglS12EPoSlP8uhc5LsN3432Yc1Ut7pHkaJYtka9cxlmV
	iwUFPZePaLMp/JyYpxw2ZnDAaoDfNiKbGiUB4fvby8Lx7cEBe30Q4DWzjj9RGn/j
	9BDWI9S9zGlTEUGnRwQfJarZLkpJNhNOtUsdeVnEphF1y4xtVGX5L/7ISyKSwbwA
	SlK1dJhNLTOTCkkawYTMCQ2W//dZtxmII8soevPBPY3ZUKW8DtVFIRilDKybuyYD
	Dhz7zWGpMvFhg57sLI5vZ+r7B2M8xaF8oaAiJJXb/tBg97p0pYS3mJZK+YQwDlBc
	J3L44FOk6AGnKmXb9yrF6XxRvnLXl6PBlYw==
X-ME-Sender: <xms:Af47arCqfi34qrcadPjg24QsIs0WtUdz5ctaUu9WUj11A5h1on8S3Q>
    <xme:Af47at25M-gJeCpm86Tyo7nP1yyPRwrVYTpnQl2UKw0ebGPTc2XdRWccvsc3QN2hb
    MVmzsNDAvGSHWTLxWZFMXoRMANPoKj-X4boeOI6jRun5dlsCv_wFsk>
X-ME-Received: <xmr:Af47apW6vWPbV3AHKk5MjlRkk2t2UFE3109qdhjJ_GeRR18jxeUyHBb7PcDt>
X-ME-Proxy-Cause: dmFkZTEfhoEMAE6QunQgNKl0wGCv09BYGOqlzvYV6CXI4e95C6xXFWTOVzp9/AQavIegh6
    ZlmXHKz8XQ110IAIWfSKyM0l0Sv5Q805u6ovyWnFAn+exg5KY873Me2JNbAjOLdqfd3lRf
    8elRpKPlK7IPy0+65AuTDWX9yAI4CA+EQBjCS81wuuvFRfSrURTtVY08ub/ofgx/xaagS3
    XwC9c4xAb2g7Wbj7YstNuy9rFRY28qJAKgS35aVZssvHfZv6SCrlhmul447ap+sv3VbNwp
    iEhTWzJzJDyuDOSwtJwbkVMkIHt1hxqjHwLejUqagHLqVeOAMWfzjo8+U2MafAM8tR3tDx
    I+/a1QxIAKxbjkS4AMkvUM/sjwYg85ZIxJZd5Sn/ppyaVBeQCV1iBksr25vN/1SPep3eAF
    BV+q6LvoCwnk9B6OxOZSamRL2gBpV/J0gjgLAuBM+Qvvg3V+Sj+7qjR6ay15f4NxB68YUN
    ONc0y1oVWx4hLPGXmMB0yrs3Jmv87GnLHvRAqytRv3n9remvXOqehYo/tsjL+wcdgEMpKp
    1lyCkZd36zlTKcy4kR63+Mvq46RNQ940dFJAMdTLmkSDjJxqrBnodh4Zrdrajo6G9K5dT2
    r3C1jnFfLquRJT6el9QtiEo06lDNlXJR5fuHRqw7zXSxuqlD5u2g0rYv0UZw
X-ME-Proxy: <xmx:Af47avnuWf0juHgHUcPYl-VXInsEoX5AyswZmqE0VltJX8B1Ja2c-g>
    <xmx:Af47ajBs0xt3boG6dQ1w6Z9E28ooOUB929uMs2eKWAnMwqt457e4TA>
    <xmx:Af47and5UlArnzCZflJuGPsPuASRTgn6sDwW0sMljfkWuNoIhAxD2A>
    <xmx:Af47amIfuWEYTzglZgUU4vrzNSWXhKdSMsSGKamH8OnRUQrWB8HxVw>
    <xmx:Af47aq7AjDcL9_z7rP40GiFR-LEIGVHkQpexFyle6uHt5vUMdFWQcMTt>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 24 Jun 2026 11:55:44 -0400 (EDT)
Date: Wed, 24 Jun 2026 08:55:43 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Georgina Joyce <gena@m0ebp.uk>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Social media from the terminal
In-Reply-To: <D7D21247-9059-4643-85A4-BEF006828EDA@m0ebp.uk>
Message-ID: <86406e85-fa15-f55c-68c1-ab2067baf81b@hubert-humphrey.com>
References: <D7D21247-9059-4643-85A4-BEF006828EDA@m0ebp.uk>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[hubert-humphrey.com,none];
	R_DKIM_ALLOW(-0.20)[hubert-humphrey.com:s=fm2,messagingengine.com:s=fm1];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[hubert-humphrey.com:+,messagingengine.com:+];
	TAGGED_FROM(0.00)[bounces-1629-lists,speakup=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:gena@m0ebp.uk,s:lists@lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER(0.00)[chime@hubert-humphrey.com,speakup@linux-speakup.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim,linux-speakup.org:from_smtp,befuddled.reisers.ca:rdns,befuddled.reisers.ca:helo];
	FROM_NEQ_ENVFROM(0.00)[chime@hubert-humphrey.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DD74D6BFD55

Well, Gena, as far as youtube, if you are in Linux, you can play useing mpv 
which is really a better replacement of mplayer. You can use youtube-viewer to 
search youtube or look over favorite channels. I wish there were an easy way of 
writing to a youtube poster, but unlike years ago they don't usually post 
contact info
Chime


