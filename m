Return-Path: <speakup+bounces-1617-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Qs5WGae9OmpNFggAu9opvQ
	(envelope-from <speakup+bounces-1617-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 19:08:55 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 758086B8F76
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 19:08:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=hubert-humphrey.com header.s=fm2 header.b=AJvpwqsB;
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b=FLxuT66N;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1617-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1617-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=none) header.from=hubert-humphrey.com
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8BB3738267B; Tue, 23 Jun 2026 13:08:53 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6AFC83820A0
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 13:08:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3E36438262D; Tue, 23 Jun 2026 13:08:47 -0400 (EDT)
Received: from fout-a1-smtp.messagingengine.com (fout-a1-smtp.messagingengine.com [103.168.172.144])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A0A803820A0
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 13:08:46 -0400 (EDT)
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfout.phl.internal (Postfix) with ESMTP id BFFC1EC00C5;
	Tue, 23 Jun 2026 13:08:42 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Tue, 23 Jun 2026 13:08:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1782234522;
	 x=1782320922; bh=Xju2P6nMaB4UjpocDk7+cDa1mD0+3vMgVYaiet4yxuY=; b=
	AJvpwqsBPPIK20MGSO5DJPtdwdm71NzsOMs+LCmJXX2ew4efrmm3W9/Zf8CkNV3A
	kNh22VaQn8ef6Q9ATEhzArqglrhcTvsMrm1HYTzPgxKSUesGJC+sR9ebdiBsrF9I
	mwU15VFknufkdDPzuUi6JiToloUHtgy4uG2bG1l1tOd1buei9gPEIb2m+uXmVilr
	nCuqid9g39YfTsGdQYvBgmpNMGfhHQQsDi0SxGg3SshWcb3vperzk2FkF2q4hah5
	KxvBz7bX8M4Bh4Lf7gmehkMUzEPiHmEaaM2TjE8bvphj8M8Qj9LigmWJhqk1qAMx
	Hk2kn5naps3JDhoQaoo5mQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1782234522; x=1782320922; bh=Xju2P6nMaB4UjpocDk7+cDa1mD0+3vMgVYa
	iet4yxuY=; b=FLxuT66NKkOACgTQ1XkUuxc0DNLx5IxqoJqlHjUh4MwBxp+8gBi
	9a8ghgPwGXPwB/d+PL+vgfsiUx4gN8kdN97miYutADIuocPMrJZp8Itt2HRNPJD5
	JkWEL1G3IGiIG6a9UG7Td3RyHLvLNXTnZp0bR9AyT2vy6ESB62qHKwSmXutp02Fn
	ila/P1MDHQjxui8obvUXyVx1vJHXKhdMl1YtdndZdZ/Sk9k0wDk94srzXe+dnrU/
	q6QjPP/9BQERcBx23ZphRny7cx5ZS3iABTxVODocOr1S2jlipgvKGByXrA5ZqK3Q
	Rf0p2mMaRkxEyNQ0LcSDbtvaF1OtOMPohIw==
X-ME-Sender: <xms:mr06aq8Kq0Vs_iWybsALZK8MeHQ1m2zyzqEGuJHoOUxr0O00J2oQXg>
    <xme:mr06aiK-kqIUvHP9bgE8FehC2hxL1IBUQi5Q8ZK3ny7C39BQ6pbR9pOZtiA3YnBcy
    643MyX4uf-BWIQfbVsfDN8atzFbDkZzawE54Jie1VPNfC6GQJ8Q7d0>
X-ME-Received: <xmr:mr06ataIIwcrYgIaC33Qf0jehJxnynj3BP1Y1c5lymmZAl2zOeDXF4-VGGXE>
X-ME-Proxy-Cause: dmFkZTFVo7brfxaQ7X8Z7ps1atb//7W1ybAxAvENO0Ee9rnRlH+igiMivj/CSWvsDVScoH
    7OsEi0QOkM3LHKrRfgsJE+51gPOtOnwfonaPXLlMw6bopgtM/AberWFi8xELqH1UDZlPsN
    xPTtiDS5t+JNIjZOySPMyrU0v7xKi4tHFW8f/pqOj+xPM+OM9JKAG3oz9yJsi70MTNVxd/
    K8er7/zLF4cVaxR7O2bU1BQpgyKYz47vUAjr9wmXxOMig2S5q9Dc3uZ59wH6Id9lxYWKD4
    S/IjikOWqfOnrxSIUtFeU+2jUrmgDdJ95pOEtZ5bx+bX5zUmhjBxMsyHdb3UObQAEMp3hO
    vI/1PCzbYFEIA405qhfvCKDVN9rM86MziW4wVkdpPuS2qp03mmzq29lpqp4dYIGn7r9vKt
    zI/WIahBiTVcyPKsOYwFQR94daBGgxIMvZQa7dvGFRZ/VzXxc8tcsH2b1BzPDwlrLKPblT
    4ymx3lCGRCgO44khQCWlk/l+3v5SG4mRrOWkLs3TRyXG2Gor+QCoqd3rSAxqD9El2IuXoy
    vXzPQhycHPOZlnT9U6ocUOkKY2cN+XW5LMF47BmC5EWS0NXYY2+QVfZkORMTD4I1F9g3Ow
    RSrpmvNlobRRkRuPE8Mw7fhjDjvgsrCEQn3bvesV+OiA+Re9iGu0Q698XWpw
X-ME-Proxy: <xmx:mr06asIKJJk8RcPAVHTebcpWLk3C42AMzH6WWm6Y-H-g_v5shDUStw>
    <xmx:mr06ajBcPCfBEdd5PjDj8UL57AGM6BTwfGCdsYXxAB2UE_8m7YTDlA>
    <xmx:mr06aprhV5ZwTbIIYPHYiQx14WvQsI42rZMe8Mt0_QtMOoBdA-txLw>
    <xmx:mr06amh05uuZx7VkQ88hbh4eQIohHSgpX_DF0Xtxz4AtWp5bEKa_3Q>
    <xmx:mr06auOhhXyjT_qZihq58IUeMcPIEtdplHwljtu83dLGgkSpNm0mkfZX>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 23 Jun 2026 13:08:41 -0400 (EDT)
Date: Tue, 23 Jun 2026 10:08:40 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: K0LNY ?? <glenn@ervin.email>
cc: "John G. Heim" <jheim@math.wisc.edu>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Speechd-up -- nice!
In-Reply-To: <036601dd032c$a63f17e0$8b01f80a@nucwin10>
Message-ID: <d39caef1-9a00-0c5d-8b32-b1ac0d28a4cc@hubert-humphrey.com>
References: <aa9f5623-dba3-4686-9b5c-8144e409425f@math.wisc.edu> <031401dd02c6$798d33a0$8b01f80a@nucwin10> <d6e07425-3566-407a-a371-a4d8055e9764@math.wisc.edu> <036601dd032c$a63f17e0$8b01f80a@nucwin10>
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
	TAGGED_FROM(0.00)[bounces-1617-lists,speakup=lfdr.de];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	FORGED_SENDER(0.00)[chime@hubert-humphrey.com,speakup@linux-speakup.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[hubert-humphrey.com:+,messagingengine.com:+];
	FORGED_RECIPIENTS(0.00)[m:glenn@ervin.email,m:jheim@math.wisc.edu,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-speakup.org:from_smtp,hubert-humphrey.com:dkim,hubert-humphrey.com:mid,hubert-humphrey.com:from_mime,befuddled.reisers.ca:rdns,befuddled.reisers.ca:helo];
	FROM_NEQ_ENVFROM(0.00)[chime@hubert-humphrey.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 758086B8F76

Well, Glen, several messages ago I think you said "I hate Speakup" maybe you 
meant "espeakup" as well, I wouldn't want to waste even 1 byte of any kind of e 
speak. As far as the screen-reader Speakup, I think a perfect solution would be 
combining best features of Speakup-and-Vocal-Eyes. I agree as far as ROKU, but 
whats funny, if you use their voice asistant, you hear a Google engine which is 
`wonderful, but I tried convincing them to make that a defalt, but I cannot get 
to any1 incharge of Accessibility. Many other streaming devices such as an 
Amazon FireTV, AppleTV, and Google TV Streamer have much better speech. I 
thought I still had a sample of the same engine on ROKU, but I cannot find it, 
name sounds like microft.
Chime


