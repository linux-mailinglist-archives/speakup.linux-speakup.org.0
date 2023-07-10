Return-Path: <speakup+bounces-986-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E7E3874C92A
	for <lists+speakup@lfdr.de>; Mon, 10 Jul 2023 02:03:18 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 81FF0382583; Sun,  9 Jul 2023 20:03:18 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6EB38382320
	for <lists+speakup@lfdr.de>; Sun,  9 Jul 2023 20:03:18 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 41540382465; Sun,  9 Jul 2023 20:03:14 -0400 (EDT)
Received: from atlas.bondproducts.com (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165])
	by befuddled.reisers.ca (Postfix) with ESMTP id 289CB382320
	for <speakup@linux-speakup.org>; Sun,  9 Jul 2023 20:03:14 -0400 (EDT)
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id E05C440508;
	Sun,  9 Jul 2023 20:03:12 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 9F2EF1001B5; Sun,  9 Jul 2023 20:03:12 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 9DC4D100063;
	Sun,  9 Jul 2023 20:03:12 -0400 (EDT)
Date: Sun, 9 Jul 2023 20:03:12 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: K0LNY <glenn@ervin.email>
cc: speakup@linux-speakup.org, Jason White <jason@jasonjgw.net>
Subject: Re: configuring a USB/Serial port
In-Reply-To: <023301d9b2c0$cc014300$01ffa8c0@nucwin10>
Message-ID: <Pine.LNX.4.64.2307092001040.1050358@users.shellworld.net>
References: <022501d9b2ba$f6c7ca10$01ffa8c0@nucwin10>
 <a9d7f09d-71c6-8e1d-5f90-243a82de497c@jasonjgw.net> <023301d9b2c0$cc014300$01ffa8c0@nucwin10>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,
A quick search of the question,
how to set a serial port in command line Linux?
Yielded the suggestion of tty0 or ttyusb0.
Also that running stty should show you what the settings are currently.



On Sun, 9 Jul 2023, K0LNY wrote:

> Yes, I should have added, I did lsusb, and the futuretk is on usb2, but I tried that command I sent with /dev/usb2 and it gave an invalid device or something like that.
> Glenn
>  ----- Original Message -----
>  From: Jason White
>  To: speakup@linux-speakup.org
>  Sent: Sunday, July 9, 2023 6:45 PM
>  Subject: Re: configuring a USB/Serial port
>
>
>
>
>
>  On 9/7/23 19:13, K0LNY wrote:
>
>    I am trying to be able to send anything to the Dectalk express.
>    I have tried configuring the port with the below command, and I get the error
>    unable to  perform all requested actions
>    I really don't know what I'm doing, so any advice would be appreciated.
>    Here's what I'm entering:
>    stty -F /dev/tty4 9600 cs8 -cstopb -parenb
>  Check your kernel logs to obtain the name of the device representing the serial port. It's probably /dev/ttyS0 or /dev/ttyusb0 or similar. /dev/tty4 is not it, I'm fairly sure.
>

