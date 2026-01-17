Return-Path: <speakup+bounces-1508-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 821AFD38B05
	for <lists+speakup@lfdr.de>; Sat, 17 Jan 2026 02:10:07 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C1009381962; Fri, 16 Jan 2026 20:10:06 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AF78D3817DC
	for <lists+speakup@lfdr.de>; Fri, 16 Jan 2026 20:10:06 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 98F703817F6; Fri, 16 Jan 2026 20:10:03 -0500 (EST)
Received: from cloud (unknown [74.208.194.141])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 166103817DC
	for <speakup@linux-speakup.org>; Fri, 16 Jan 2026 20:10:03 -0500 (EST)
Received: by cloud (Postfix, from userid 1000)
	id 56C48205FF; Sat, 17 Jan 2026 01:10:00 +0000 (UTC)
Date: Sat, 17 Jan 2026 01:10:00 +0000
From: "Terry D. Cudney" <terry@cudneys.ca>
To: Kirk Reiser <kirk@reisers.ca>
Cc: speakup@linux-speakup.org
Subject: Re: Espeakup & Espeak Upgrades Broke Latency
Message-ID: <aWrhaB8c_QLPnkxc@cudneys.ca>
References: <aWpRKvcLNxlSLfbU@A11y.NYC>
 <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca>
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
In-Reply-To: <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi all,

   I don't have a solution to this problem.... just a complication, or maybe a clue as to where the problem lies.

   I have two raspberry pi's.

   The pi 4 exibits the same symtpoms that Janina, et al have described.

   The  pi 5 has espeakup 0.90 and espaek-ng and it works as we like.

   These are both running the same version of raspberryos, which is essentially debian12.

   Why are the two machines running essentially the same software so different?

   The pi5 is faster than the pi4, but that doesn't explain the lack of interrupts on the speech outlput on the pi4.

   We're sill looking for the cause and a remedy.

   Thanks all,

   --terry
-- 
Name: Terry D. Cudney
Telephone: 289-438-6828
E-mail: terry@cudneys.ca
 

