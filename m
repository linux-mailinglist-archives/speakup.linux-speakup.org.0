Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9443035F1C
	for <lists+speakup@lfdr.de>; Wed,  5 Jun 2019 16:22:55 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CEF591C6B7F; Wed,  5 Jun 2019 10:22:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1559744574;
	bh=lnCQVorzomfWQa6i0xYllf5FVfw8TMLaHYK7a1VwUsQ=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=LE49TlY2HNzFA9iWJ6iQcBLLWMMnvtnWWrveooBPXxvGnRjIqwqYkq6x3yLo00f+4
	 sTCLe3sDEkASLpAhqorplWxrJshiA3dh2/8coj7S0g/FwUx89m0j0J0yTr24vlqlqK
	 np2vc09P68u9l2f2BPoX7UQgKbX3z/qGKT/Z9gWk=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D7EAE1C5B68;
	Wed,  5 Jun 2019 10:22:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1559744551;
	bh=lnCQVorzomfWQa6i0xYllf5FVfw8TMLaHYK7a1VwUsQ=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=SQNBVdn92FacaycPYg/sMGm0uOumFmB7P/Zw/9duG4s9JvPWAV1qoeUMsku1XQhPe
	 WdlDKDn1tvjwRnPii6JQOX4kvUGKRbYDLfM1BIwRmyHuzN+Hfh4SSx0reNbZzZfWoM
	 9eydryq5c+WnyXK2XBiFdaSNwrrdp81p/bDsY4n0=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 1C3081C6B3B; Wed,  5 Jun 2019 10:22:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1559744549;
 bh=UzY346L8PMIk+TgQ4ndJ601Nv9HQKndUfk5sHFHFtNk=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=N9NmfP7yYKfP6xAH3PV0aRt6XwTF+aD4ECnkJbqVFZl0JYBq8bWSpp7LgPTsBiswv
 Fb3Abpd1Z5DuG2hcioUKv/9v0/7Ss7Xxj57HnJ1eZkHxSJlJaFW53L6t5md0AY5sGh
 r6ZXQC2hw32jPVcabKnk10DgCqGRH6v8M33HzKbY=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 3F0AC1C5A80;
 Wed,  5 Jun 2019 10:22:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1559744548;
 bh=UzY346L8PMIk+TgQ4ndJ601Nv9HQKndUfk5sHFHFtNk=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=k7Ylah80j2gto491GCRbZd58wjH6wLVN9J/sbrH2LabH9/flVFBZmgwWUSBHIzxHJ
 rURAXi0Cu996L+jUGJfaj0DyvVc3YUgc0BpQ9rHncHEUjf5HPVe2hXkeCG/rXp3RCt
 lOesVrRZSY7HdYCWSipAukyjbjxdGuDhfRg6DJME=
Date: Wed, 5 Jun 2019 10:22:28 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: jheim@math.wisc.edu, 
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: no sound except speakup
In-Reply-To: <bb706092-7289-2093-e7d0-e1788722cc37@math.wisc.edu>
Message-ID: <alpine.DEB.2.21.1906051019050.12923@befuddled.reisers.ca>
References: <bb706092-7289-2093-e7d0-e1788722cc37@math.wisc.edu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hey John: When I've had similar issues with sound it's because there
is usually a pulse audio process running or trying to run. There are
work arounds to be able to use pulse audio but I believe it includes
running it as root or something. I don't use pulse audio so I'm not
sure of the work around but others are using it.

   Kirk

On Wed, 5 Jun 2019, John G Heim wrote:

> I am running a debian buster machine in character mode. Speakup with software 
> speech works fine but I can't get any other sound. When I use aplay to play a 
> wav file, it prints the data indicating that it is playing the file but there 
> is no sound. The same with espeak and spd-say at the command line. No error 
> messages are displayed but there is no sound. I would think it was a volume 
> problem except I can hear speakup. The sound card controls have volume 
> settings, they are not user settings, right?
>
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
