Return-Path: <speakup+bounces-1549-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mD7IJFNBgmlHRQMAu9opvQ
	(envelope-from <speakup+bounces-1549-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 03 Feb 2026 19:41:23 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F13DFDDBCA
	for <lists+speakup@lfdr.de>; Tue, 03 Feb 2026 19:41:22 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C92D838210B; Tue, 03 Feb 2026 13:41:18 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B52E0381813
	for <lists+speakup@lfdr.de>; Tue, 03 Feb 2026 13:41:18 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 81E5E38189F; Tue, 03 Feb 2026 13:41:15 -0500 (EST)
Received: from a11y.nyc (opera.a11y.nyc [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 44135381805
	for <speakup@linux-speakup.org>; Tue, 03 Feb 2026 13:41:15 -0500 (EST)
Received: from opera.a11y.nyc (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by a11y.nyc (Postfix) with ESMTPS id 8C391FA040;
	Tue, 03 Feb 2026 13:41:14 -0500 (EST)
DMARC-Filter: OpenDMARC Filter v1.4.2 a11y.nyc 8C391FA040
Authentication-Results: a11y.nyc; dmarc=pass (p=reject dis=none) header.from=a11y.nyc
Authentication-Results: a11y.nyc; spf=pass smtp.mailfrom=a11y.nyc
Received: (from janina@localhost)
	by opera.a11y.nyc (8.18.1/8.16.1/Submit) id 613IfDLd254720;
	Tue, 3 Feb 2026 13:41:13 -0500
Date: Tue, 3 Feb 2026 13:41:13 -0500
From: Janina Sajka <janina@a11y.nyc>
To: jude dashiell <jdashiel@panix.com>
Cc: Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org
Subject: Re: Mourning Didier Spaier
Message-ID: <aYJBSZYZLIgwolxO@A11y.NYC>
References: <d5543615-3d43-6169-8ce4-18dba36d1b80@reisers.ca>
 <2DD5ABE9-DE07-4E18-B2FA-60B04E107478@panix.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2DD5ABE9-DE07-4E18-B2FA-60B04E107478@panix.com>
X-Operating-System: Linux opera.a11y.nyc 6.18.7-200.fc43.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.82 / 15.00];
	DMARC_POLICY_REJECT(2.00)[a11y.nyc : No valid SPF, No valid DKIM,reject];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_RCPT(0.00)[speakup];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.985];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[janina@a11y.nyc,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1549-lists,speakup=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:url,linkedin.com:url,lwn.net:url,reisers.ca:email,levelaccess.com:url]
X-Rspamd-Queue-Id: F13DFDDBCA
X-Rspamd-Action: no action

He had me almost convinced to install his Slackware based spin. The only
thing that stopped me over the couple weeks I seriously considered doing
that was not understanding how devices and packages are managed in
Slackware. Ultimately, I didn't do it because I percieved learning yet
another package and device management schema a mountain too high.

From the perspective of this news I'm charmed to realize it was the
force of his accomodating and welcoming personality that almost made a
Slack user of me! I never spoke to him voice. We only ever exchanged email. And yet he had that impact on me.

May he rest in peace.

Warmly,
Janina

jude dashiell writes:
> Didier certainly was a contributor and I will miss him and his voice we talked on the phone before Old Boney came and switched the channel on him. With any luck, we will all meet again in a better place.
> 
> 
> On Feb 3, 2026, at 12:04???PM, Kirk Reiser <kirk@reisers.ca> wrote:
> 
> ???Yes, he will be missed. It's always hard to hear of ones passing when
> you've known them forever. As time goes bye one misses more and more
> folks.
> 
>  Kirk
> 
> On Tue, 3 Feb 2026, Janina Sajka wrote:
> 
> > I am saddened by this news. Didier was indeed a frequent contributor
> > here. But perhaps more specifically, he was always quick to respond when
> > people needed help, and to respond directly and graciously. I know I've
> > benefited from his responses, and I will miss that grace because of his
> > passing.
> > 
> > Thanks for the news, Gregory.
> > 
> > Warmly,
> > Janina
> > 
> > Gregory Nowak writes:
> >> Hello all.
> >> 
> >> Since Didier was a frequent contributor to this group, I thought I
> >> would post this here.
> >> 
> >> <https://lwn.net/Articles/1056384/>
> >> 
> >> Greg
> >> 
> >> 
> >> --
> >> web site: http://www.gregn.net
> >> gpg public key: http://www.gregn.net/pubkey.asc
> >> 
> >> --
> >> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> > 
> > 

-- 

Janina Sajka (she/her)
https://linkedin.com/in/jsajka

Digital Accessibility Standards Lead,
Level Access https://www.levelaccess.com/

W3C Accessible Platform Architectures	(APA) CoChair,
http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/about/leadership#team-bio-janina-sajka


