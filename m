Return-Path: <speakup+bounces-1477-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0CC1ACDFD29
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 15:17:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1766845053;
	bh=f+l8w9HTMiIi3B9/ABc8K1HP/a0XOyIhmuz1S1kX15E=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=juKso5RrN+UPlzhu2vKHma87ifcJ4jPM4GLsfuJrGMDeHxxK5AHQHvs95PmiW8YSr
	 7g2AjXeQc0vINOpz/p6xwOS1q+Kbtx5NC1pq9iTXl4hwWNksXGQ6OYuYDNBI8nc/j6
	 bKv04AjmAXSwjMeXE4F97nicJNJw0m81tc+saxso=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7D35E381807; Sat, 27 Dec 2025 09:17:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1766845053;
	bh=f+l8w9HTMiIi3B9/ABc8K1HP/a0XOyIhmuz1S1kX15E=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=juKso5RrN+UPlzhu2vKHma87ifcJ4jPM4GLsfuJrGMDeHxxK5AHQHvs95PmiW8YSr
	 7g2AjXeQc0vINOpz/p6xwOS1q+Kbtx5NC1pq9iTXl4hwWNksXGQ6OYuYDNBI8nc/j6
	 bKv04AjmAXSwjMeXE4F97nicJNJw0m81tc+saxso=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5DE9E380965
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 09:17:33 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1766845047;
	bh=f+l8w9HTMiIi3B9/ABc8K1HP/a0XOyIhmuz1S1kX15E=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=KUYdI5Q7lBd3TwbKUxgtx8j1v8/hmCNq26aw5uF28GxsIrQ2J58upj8dGHN5JlLJZ
	 huuDTmPfPKVtc4wD4dLmXVbHVV3/vXV3+AY+SfaOXyHv1toWGFkzn7Sj1wkIhJmDRv
	 4ARJqVY5NFPS/AgHCimuR/MKVVYufZx9E+3yIxtM=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7DE913817DA; Sat, 27 Dec 2025 09:17:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1766845047;
	bh=f+l8w9HTMiIi3B9/ABc8K1HP/a0XOyIhmuz1S1kX15E=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=KUYdI5Q7lBd3TwbKUxgtx8j1v8/hmCNq26aw5uF28GxsIrQ2J58upj8dGHN5JlLJZ
	 huuDTmPfPKVtc4wD4dLmXVbHVV3/vXV3+AY+SfaOXyHv1toWGFkzn7Sj1wkIhJmDRv
	 4ARJqVY5NFPS/AgHCimuR/MKVVYufZx9E+3yIxtM=
Received: from localhost (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5C7BC380965
	for <speakup@linux-speakup.org>; Sat, 27 Dec 2025 09:17:27 -0500 (EST)
Date: Sat, 27 Dec 2025 09:17:27 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: Re: I'm losing it big time!
In-Reply-To: <dae41d81-e038-41fc-e2c6-39d079283819@reisers.ca>
Message-ID: <ba0c32d7-b453-08e7-4e08-daf0a8ad3636@reisers.ca>
References: <dae41d81-e038-41fc-e2c6-39d079283819@reisers.ca>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello folks: I'm not sure how many people realized it but the speakup
list has been down since November 29th. There was an update to the
mlmmj software that we use for the list and the new version started
throwing an error when trying to free() a nil pointer. Unfortunately
it did it quietly so we weren't aware that it even happened. John Heim
alerted me to something being wrong yesterday and Greg and Tyler
Spivey started hunting the problem down. I have to thank Ty for his
diligence and finding and fixing the problem. It seems the new version
of mlmmj-process doesn't like spaces at the beginning of the line in
the customheaders it puts at the beginning of each mail message.

Hopefully we shall go forward with new errors in 2026. BTW, happy New
Year everyone!

   me


On Fri, 26 Dec 2025, Kirk Reiser wrote:

> This is another test of the emergency broadcast system. The world has
> come to an end because linux-speakup.org is down! Well, maybe not now,
> but it was!
>
>  me
>
>

