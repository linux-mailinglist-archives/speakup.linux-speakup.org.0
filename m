Return-Path: <speakup+bounces-1312-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C118CAFBBB4
	for <lists+speakup@lfdr.de>; Mon,  7 Jul 2025 21:30:09 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2F3733822DD; Mon, 07 Jul 2025 15:29:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1C7313818C4
	for <lists+speakup@lfdr.de>; Mon, 07 Jul 2025 15:29:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 659E938195A; Mon, 07 Jul 2025 15:29:54 -0400 (EDT)
Received: from smtp.livemail.co.uk (smtp-out-60.livemail.co.uk [213.171.216.60])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 370873818C4
	for <speakup@linux-speakup.org>; Mon, 07 Jul 2025 15:29:54 -0400 (EDT)
Received: from smtpclient.apple (219.206.9.51.dyn.plus.net [51.9.206.219])
	(Authenticated sender: gena@m0ebp.uk)
	by smtp.livemail.co.uk (Postfix) with ESMTPSA id 4F614A01A5
	for <speakup@linux-speakup.org>; Mon,  7 Jul 2025 20:29:42 +0100 (BST)
From: Georgina Joyce <gena@m0ebp.uk>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: debian update killed speakup
Message-Id: <8BEF2F60-C508-44B0-B8B5-68268D196FCB@m0ebp.uk>
Date: Mon, 7 Jul 2025 20:29:22 +0100
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
X-Mailer: Apple Mail (2.3826.600.51.1.1)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

I am at a loss to why debian update should kill speakup. The soft synth =
module is still loading on boot. I think I tried restarting the service =
with systemctl but not too sure of having the right syntax but it stated =
speakup was already running. I recall someone mentioning a symlink that =
had been removed but have no idea what is meant to be linked to what. =
Speakup was installed using espeakup. I have a desktop installed and =
using pipewire. I suspect that pipewire was probably the culprit but no =
proof.

How do I troubleshoot or even better restore speakup in the console?

Thanks,

Gena
=20=

