Return-Path: <speakup+bounces-1014-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C3E9E759414
	for <lists+speakup@lfdr.de>; Wed, 19 Jul 2023 13:22:01 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 40F29382462; Wed, 19 Jul 2023 07:22:01 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 28A24382349
	for <lists+speakup@lfdr.de>; Wed, 19 Jul 2023 07:22:01 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EFEE43823E1; Wed, 19 Jul 2023 07:21:56 -0400 (EDT)
Received: from covici.com (debian-2.covici.com [166.84.7.93])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D64D8382335
	for <speakup@linux-speakup.org>; Wed, 19 Jul 2023 07:21:56 -0400 (EDT)
Received: from ccs.covici.com (ccs.covici.com [70.109.51.194])
	(authenticated bits=0)
	by covici.com (8.15.2/8.15.2/Debian-22) with ESMTPSA id 36JBMhFh941017
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 19 Jul 2023 07:22:44 -0400
Received: from ccs.covici.com (localhost [127.0.0.1])
	by ccs.covici.com (8.17.1.9/8.17.1) with ESMTPS id 36JBM6l71076336
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 19 Jul 2023 07:22:07 -0400
Received: (from covici@localhost)
	by ccs.covici.com (8.17.1.9/8.17.1/Submit) id 36JBM6ZW1076335;
	Wed, 19 Jul 2023 07:22:06 -0400
Date: Wed, 19 Jul 2023 07:22:06 -0400
Message-ID: <m3y1jcdu3l.wl-covici@ccs.covici.com>
From: John Covici <covici@ccs.covici.com>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: sort of ot: what causes this issue?
In-Reply-To: <Pine.LNX.4.64.2307190655310.1206822@users.shellworld.net>
References: <Pine.LNX.4.64.2307190655310.1206822@users.shellworld.net>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.3 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Reply-To: covici@ccs.covici.com
Organization: Covici Computer Systems
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Sounds like the handshake is not working properly.  What is your synth
and what handshake is being used?

On Wed, 19 Jul 2023 06:58:22 -0400,
Karen Lewellen wrote:
> 
> Hi folks,
> for those who use serial synthesizers, what can cause garbled
> characters to be sent to the synthesizer?
> they are not on the screen,  and I am trying to troubleshoot how,
> with two different computers the problem starts after a while.
> Thanks,
> Karen
> 
> 
> 

-- 
Your life is like a penny.  You're going to lose it.  The question is:
How do
you spend it?

         John Covici wb2una
         covici@ccs.covici.com

