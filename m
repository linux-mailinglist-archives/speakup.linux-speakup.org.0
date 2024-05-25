Return-Path: <speakup+bounces-1110-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3BC668CEF34
	for <lists+speakup@lfdr.de>; Sat, 25 May 2024 16:01:53 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2C86A382737; Sat, 25 May 2024 10:01:45 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 16E91382716
	for <lists+speakup@lfdr.de>; Sat, 25 May 2024 10:01:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4798238270F; Sat, 25 May 2024 10:01:41 -0400 (EDT)
Received: from out.packetderm.com (out.packetderm.com [173.166.91.13])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0C8F7382701
	for <speakup@linux-speakup.org>; Sat, 25 May 2024 10:01:40 -0400 (EDT)
Received: from localhost (out.packetderm.com[173.166.91.13])
        by smtp (5.7.4/5.7.4) with ESMTPSA id 44PE1VgY088009
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
        for <speakup@linux-speakup.org>; Sat, 25 May 2024 10:01:32 -0400 (EDT)
        (envelope-from speakup@clul.router5.com)
Message-ID: <MTAwMDA0MS5jbHVs.1716645692@quikprotect>
Date: Sat, 25 May 2024 11:01:24 -0300
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Subject: Re: gentoo dracut puzzle
Content-Language: pt-BR
To: speakup@linux-speakup.org
References: <a65a8a6f-4230-3bd9-153c-8edef21e74da@panix.com>
From: Cleverson Casarin Uliana <speakup@clul.router5.com>
In-Reply-To: <a65a8a6f-4230-3bd9-153c-8edef21e74da@panix.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi, I have installed Gentoo last year, so I don't know if any 
instruction has changed since then. In any case, since the first time I 
installed Gentoo back in 2007, my practice has been to firstly read all 
of the Handbook, as well as all relevant material at Gentoo Wiki, and 
keep annotating in a plain text file all of commands I'll be taking. 
Only after finishing such notetaking, I proceed to start installing.

Although I still have all the commands I used, I don't recall exactly 
what was the purpose of each and every of them. In any case, here is 
what I have anotated regarding kernel and initramfs specifically, as 
well as commands which appears to be related, along with some comments 
I'm inserting when the following command isn't obvious. As you will see, 
I didn't need to deal with dracut directly. From what I recall, simply 
inserting an initramfs USE flag was enough to generate an initramfs 
automatically:

nano /etc/portage/package.use/linux-firmware
# insert this line, and save
sys-kernel/linux-firmware initramfs

mkdir /etc/portage/package.license
nano /etc/portage/package.license/kernel
# Insert these two lines and save
sys-kernel/linux-firmware @BINARY-REDISTRIBUTABLE
sys-firmware/intel-microcode intel-ucode

emerge linux-firmware
nano /etc/portage/package.use/intel-microcode
# Insert this line and save
sys-firmware/intel-microcode hostonly initramfs

emerge --noreplace intel-microcode
iucode_tool -S --write-earlyfw=/boot/early_ucode.cpio 
/lib/firmware/intel-ucode/*
emerge installkernel-gentoo
emerge gentoo-kernel-bin

HTH,
Cleverson

