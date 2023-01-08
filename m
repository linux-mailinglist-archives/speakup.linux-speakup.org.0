Return-Path: <speakup+bounces-915-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7E5DC6619E8
	for <lists+speakup@lfdr.de>; Sun,  8 Jan 2023 22:22:29 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B4A5A382932; Sun,  8 Jan 2023 16:12:25 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9FFAE38281E
	for <lists+speakup@lfdr.de>; Sun,  8 Jan 2023 16:12:25 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D536C382823; Sun,  8 Jan 2023 16:12:20 -0500 (EST)
Received: from smtprelay.b.hostedemail.com (smtprelay0014.b.hostedemail.com [64.98.42.14])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BFE7238281A
	for <speakup@linux-speakup.org>; Sun,  8 Jan 2023 16:12:20 -0500 (EST)
Received: from omf07.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay04.b.hostedemail.com (Postfix) with ESMTP id 6A57910033217
	for <speakup@linux-speakup.org>; Sun,  8 Jan 2023 21:12:18 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf07.b.hostedemail.com (Postfix) with ESMTPA id EECF010DC4954
	for <speakup@linux-speakup.org>; Sun,  8 Jan 2023 21:12:17 +0000 (UTC)
Message-ID: <004401d923a5$e3e9b2e0$93ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: using espeak to echo the amount of RAM
Date: Sun, 8 Jan 2023 15:12:17 -0600
Organization: Home
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Rspamd-Queue-Id: EECF010DC4954
X-Spam-Status: No, score=-2.60
X-Stat-Signature: tniq59y4i4me13tch5kip9ccb1gzb679
X-Rspamd-Server: rspamout04
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19kCQixFwb41nzyTLq2qCtJVT/zUI5OoxY=
X-HE-Tag: 1673212337-163323
X-HE-Meta: U2FsdGVkX18gfY8sVTlPMRvlQortsGpvhPDpcYxb3ZrnZzP0jjgu53Zc50/8QDqgkprTmpXwQYFU/xCINdd3YA==
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi All,
I'm trying to set up a system on an old computer.
I have an Intel NUC and I put a stick of RAM into it and a new HD, and I 
booted to Ubuntu 18.04 that has Chirp software on it.
My plan is to install that old Ubuntu with Chirp, because the new Chirp is 
no longer accessible, I think because of it using flatpak, so if I want to 
use Chirp, it's likely on an old Linux that isn't using Python 3.

I put in the memory and drive, but I don't know how much RAM that particular 
stick is, it could be 1, 2, or 8 GB.
When I start Orca, it starts and then closes out.
I can open the terminal and do espeak, such as echoing its IP address with
hostname -I | espeak
I was hoping to SSH into it, but SSH may not be installed, but this version 
of Ubuntu is too old to get anything from a repository.
But if I can find out the amount of RAM I installed, I might be able to 
determine if I need to try another stick of RAM, because I'm guessing that 
if it is just a 1 GB RAM, maybe that is why Orca is starting and stopping.
So, my question is,
Is there a command that I can pipe the output to eSpeak to hear the 
information on how much RAM there is?
Like I did with the hostname -I command.
Thanks in advance.

Glenn 


