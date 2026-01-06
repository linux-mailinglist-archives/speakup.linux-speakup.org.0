Return-Path: <speakup+bounces-1498-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CEB3FCFAA3A
	for <lists+speakup@lfdr.de>; Tue, 06 Jan 2026 20:26:09 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3ED9C38192C; Tue, 06 Jan 2026 14:26:09 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2BB013817BB
	for <lists+speakup@lfdr.de>; Tue, 06 Jan 2026 14:26:09 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0A14038181C; Tue, 06 Jan 2026 14:26:06 -0500 (EST)
Received: from nbsmtp1.nfbcal.org (nbsmtp1.nfbcal.org [45.79.226.29])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AFADF38096F
	for <speakup@linux-speakup.org>; Tue, 06 Jan 2026 14:26:05 -0500 (EST)
Received: from nfbcal.org (ns3.NFBCAL.ORG [199.4.218.125])
	by nbsmtp1.nfbcal.org (8.18.1/8.14.1-NFBNETBSD) with ESMTPS id 606JPIYX000803
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=FAIL);
	Tue, 6 Jan 2026 11:25:19 -0800 (PST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.4.3 at nbsmtp1.nfbcal.org
Received: from nfbcal.org (localhost [127.0.0.1])
	by nfbcal.org (8.18.1/8.15.2-NFBNETBSD) with ESMTPS id 606JPBJo013555
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 6 Jan 2026 11:25:12 -0800 (PST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.4.3 at lothlorien.nfbcal.org
Received: (from buhrow@localhost)
	by nfbcal.org (8.18.1/8.12.11) id 606JPBHI005552;
	Tue, 6 Jan 2026 11:25:11 -0800 (PST)
Message-Id: <202601061925.606JPBHI005552@nfbcal.org>
From: Brian Buhrow <buhrow@nfbcal.org>
Date: Tue, 6 Jan 2026 11:25:11 -0800
In-Reply-To: <3aa08a4a-d309-4472-be93-61118eea32f6@math.wisc.edu>
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
To: "John G. Heim" <jheim@math.wisc.edu>, Gregory Nowak <greg@gregn.net>
Subject: Re: Building a hardware speech synth with a Raspberry Pi
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
        buhrow@nfbcal.org
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.4.3 (nbsmtp1.nfbcal.org [45.79.226.29]); Tue, 06 Jan 2026 11:25:19 -0800 (PST)
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.4 (nfbcal.org [0.0.0.0]); Tue, 06 Jan 2026 11:25:12 -0800 (PST)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

	hello.  I'm pretty sure the extraneous characters are index markers which the screen
reader uses to tag its utterances.  The idea is to be able to do things like tell the synth to
shut up at marker 200, or change pitch between markers 250 and 265.  In return, the synth is
supposed to send return data as to what it's currently speaking, thus keeping the screen reader
in closer touch with what's actually going on on the synth itself.  The specifics of the codes
used to convey these markers and speaking instructions vary from manufactuerer to manufacturer,
but the methodology is pretty similar across all the models.

-Brian

