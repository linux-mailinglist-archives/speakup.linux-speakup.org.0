Return-Path: <speakup+bounces-1529-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLrZAGk8eWlSwAEAu9opvQ
	(envelope-from <speakup+bounces-1529-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 23:30:01 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C2F349B0F6
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 23:29:59 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EBBE238193B; Tue, 27 Jan 2026 17:20:37 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D8546381908
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 17:20:37 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BB940381909; Tue, 27 Jan 2026 17:20:34 -0500 (EST)
Received: from nbsmtp1.nfbcal.org (nbsmtp1.nfbcal.org [45.79.226.29])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 625B23817CA
	for <speakup@linux-speakup.org>; Tue, 27 Jan 2026 17:20:34 -0500 (EST)
Received: from nfbcal.org ([199.4.218.125])
	by nbsmtp1.nfbcal.org (8.18.1/8.14.1-NFBNETBSD) with ESMTPS id 60RMKJfp013873
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=FAIL);
	Tue, 27 Jan 2026 14:20:19 -0800 (PST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.4.3 at nbsmtp1.nfbcal.org
Received: from nfbcal.org (localhost [127.0.0.1])
	by nfbcal.org (8.18.1/8.15.2-NFBNETBSD) with ESMTPS id 60RMKCvV028031
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 27 Jan 2026 14:20:12 -0800 (PST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.4.3 at lothlorien.nfbcal.org
Received: (from buhrow@localhost)
	by nfbcal.org (8.18.1/8.12.11) id 60RMKBLE022931;
	Tue, 27 Jan 2026 14:20:11 -0800 (PST)
Message-Id: <202601272220.60RMKBLE022931@nfbcal.org>
From: Brian Buhrow <buhrow@nfbcal.org>
Date: Tue, 27 Jan 2026 14:20:11 -0800
In-Reply-To: <36e4c9b5-5ea5-47d3-b7cf-15706d0470cd@math.wisc.edu>
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
To: "John G. Heim" <jheim@math.wisc.edu>,
        Samuel Thibault <samuel.thibault@aquilenet.fr>
Subject: Re: Cannot get indexing to work on my RPI hardware speech emulator
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
        buhrow@nfbcal.org
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.4.3 (nbsmtp1.nfbcal.org [45.79.226.29]); Tue, 27 Jan 2026 14:20:20 -0800 (PST)
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.4 (nfbcal.org [0.0.0.0]); Tue, 27 Jan 2026 14:20:12 -0800 (PST)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.31 / 15.00];
	AUTH_NA(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_NA(0.00)[nfbcal.org];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[bounces-1529-lists,speakup=lfdr.de];
	TAGGED_RCPT(0.00)[speakup];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[buhrow@nfbcal.org,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nfbcal.org:mid,befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.949];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Queue-Id: C2F349B0F6
X-Rspamd-Action: no action

	hello John.  A quick romp through the speakup sources from the linux kernel suggests your
issue with the lite-talk and delay is not related to indexing.  Instead, it looks like Speakup
is expecting the synthesizer to signal its readiness for more data by raising the DTR (Data
Terminal Ready) pin on the serial port.  If it doesn't have that, it uses the full_time as an
absolute timeout to wait to send more data.  So, if your emulator can raise the DTR pin and
your serial connection carries that pin back to the linux machine, I think you'll find the
delay goes away.

The differnce in delay behavior between the Ltlk and Apollo synthesizers appears to be related
to the default size of the speech buffer for each driver rather than the characteristics of the
synthesizer itself.  That is, if you run the Apollo long enough, I think you'll run into a
similar delay.

Conversely, when Speakup wants to send data to serial synthesizers, it raises the RTS pin on
the serial line.  Consequently, it looks like in order to get the best emulation, you need to
have a serial connection which has 5 pins connected: gnd, snd, rcv, dtr and rts.

Hope that helps.

-Brian


