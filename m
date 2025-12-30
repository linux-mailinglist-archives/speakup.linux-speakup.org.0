Return-Path: <speakup+bounces-1491-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 91059CEA524
	for <lists+speakup@lfdr.de>; Tue, 30 Dec 2025 18:33:56 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 61ACE3818F1; Tue, 30 Dec 2025 12:33:55 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4DF8A381847
	for <lists+speakup@lfdr.de>; Tue, 30 Dec 2025 12:33:55 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1E598381848; Tue, 30 Dec 2025 12:33:52 -0500 (EST)
Received: from cloud (ip74-208-194-141.pbiaas.com [74.208.194.141])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 08F4D380965
	for <speakup@linux-speakup.org>; Tue, 30 Dec 2025 12:33:52 -0500 (EST)
Received: by cloud (Postfix, from userid 1000)
	id 64B7620675; Tue, 30 Dec 2025 17:33:49 +0000 (UTC)
Date: Tue, 30 Dec 2025 17:33:49 +0000
From: "Terry D. Cudney" <terry@cudneys.ca>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: speakup@linux-speakup.org
Subject: Re: Building a hardware speech synth with a Raspberry Pi
Message-ID: <aVQM_dupS6eRZSU5@cudneys.ca>
References: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
 <4946952f-7980-4979-bb63-745750da47dd@math.wisc.edu>
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
In-Reply-To: <4946952f-7980-4979-bb63-745750da47dd@math.wisc.edu>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi John,

   Which model of rpi to you have?

   I have 3, 4 and now 5. Both the 3 and 4 have 3.5 mm jacks for audio out with onboard audio. The 5 has several options for audio boards that you can add in from different manufactureres.

   So, it depends which model you have and the quality of the audio you want.

   Just something to consider...

   --terry
On Mon, Dec 29, 2025 at 01:56:37PM -0600, John G. Heim wrote:
--> I have to take a break from this project for a few days. For one thing,
--> I've been neglecting my real life responsibilities. But I also think I am
--> going to send for some audio hardware for the Raspberry Pi instead of
--> relying on the bluetooth speaker. I figure that was good enough for the
--> proof-of-concept phase of the project but I need real audio hardware now.
--> They have these things called HATs which can be hooked onto an RPI via an
--> edge connector. I'm going to order a sound card and speaker HAT for my
--> RPI. Also, I'm going to see if I can figure out how to take advantage of
--> speech-dispatcher so I don't have to code for different TTS engines. But I
--> had ChatGPT write up a howto for the project so far so you can try it
--> yourself if you want to. I just had ChatGPt generate the howto because it
--> would have taken me all day. So I'm not 100% sure the directions are
--> correct. Look pretty good though. I posted it on my web space at the
--> University Of Wisconsin. The LiteTalk emulator python script (which is
--> really the key to the whole project) is there. So you might at least want
--> to take a look at that.
--> 
--> https://people.math.wisc.edu/~jheim/RPITalk/
--> 
--> 
--> 

-- 
Name: Terry D. Cudney
Telephone: 289-438-6828
E-mail: terry@cudneys.ca
 

