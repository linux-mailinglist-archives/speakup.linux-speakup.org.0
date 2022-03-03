Return-Path: <speakup+bounces-374-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3F3464CC1E2
	for <lists+speakup@lfdr.de>; Thu,  3 Mar 2022 16:46:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1646322394;
	bh=zdW/QMGEyqQx/JyBSiL4vsjTIT73zM+srhYblBbWkos=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=KTtYoxAJPBu4TlDQnjZ/pHDLJoV/eNTr//bCE3T1o2CeHfGtXyl8OMY2en33LP5jU
	 UxlitMGFsB5LovUoysiht1scHvzII4PdjT22O+4F1HzjP+m7oX0btXmDNgXzivNh7m
	 DfMchDg6niLnWc2X66T6rjefxuTN0P/T4zb6p57g=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B4D3C380E19; Thu,  3 Mar 2022 10:46:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1646322394;
	bh=zdW/QMGEyqQx/JyBSiL4vsjTIT73zM+srhYblBbWkos=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=KTtYoxAJPBu4TlDQnjZ/pHDLJoV/eNTr//bCE3T1o2CeHfGtXyl8OMY2en33LP5jU
	 UxlitMGFsB5LovUoysiht1scHvzII4PdjT22O+4F1HzjP+m7oX0btXmDNgXzivNh7m
	 DfMchDg6niLnWc2X66T6rjefxuTN0P/T4zb6p57g=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 960F83809FD
	for <lists+speakup@lfdr.de>; Thu,  3 Mar 2022 10:46:34 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1646322388;
	bh=zdW/QMGEyqQx/JyBSiL4vsjTIT73zM+srhYblBbWkos=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=aPbVZTdX6i2tyuxWTXyYFOteUpdfdSziRBNkb0Zk/IUThb5GCCWrZE0zoQKfc7Y21
	 kR0EBCzZt0u9LavBF4E1wiARBYadtgmJ64We1FTNCTYCAm5+ewvAUTTfTWdRvwLFBc
	 5aBvYsO8Q2zSAJ/GNz2Ben12u+2bwQ9jD/bDxMvo=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E007A380B20; Thu,  3 Mar 2022 10:46:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1646322388;
	bh=zdW/QMGEyqQx/JyBSiL4vsjTIT73zM+srhYblBbWkos=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=aPbVZTdX6i2tyuxWTXyYFOteUpdfdSziRBNkb0Zk/IUThb5GCCWrZE0zoQKfc7Y21
	 kR0EBCzZt0u9LavBF4E1wiARBYadtgmJ64We1FTNCTYCAm5+ewvAUTTfTWdRvwLFBc
	 5aBvYsO8Q2zSAJ/GNz2Ben12u+2bwQ9jD/bDxMvo=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C87B33809FD;
	Thu,  3 Mar 2022 10:46:28 -0500 (EST)
Date: Thu, 3 Mar 2022 10:46:28 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: Brian Buhrow <buhrow@nfbcal.org>
cc: speakup@linux-speakup.org
Subject: Re: RPI gravelly speech and pcaudiolib results
In-Reply-To: <202203022059.222Kx8ce000006@nfbcal.org>
Message-ID: <d9c3aeb9-a716-e9d4-fcbe-b7f1854845b7@reisers.ca>
References: <202203022059.222Kx8ce000006@nfbcal.org>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Brian: That's an interesting idea which I'll have to look into. I
thought the flush ioctl was being used but I don't know for sure. I'll
see what I can find. The old espeak never had the problem but it used
a different interface to the audio subsystem. I did a quick look
yesterday but didn't immediately find anything. Espeak-ng has been a
pita to speakup ever since it was swapped into espeakup. The thing is
that it does have a lot better alternative language capabilities with
the work that has been put into it, so I don't think going backward is
a useful solution.




On Wed, 2 Mar 2022, Brian Buhrow wrote:

> 	hello.  Just out of curiosity, is there a way to get the audio system to flush its buffer
> before it finishes speaking the current buffer?  I know when I worked on getting eflite working
> on my systems many years ago, the speech engine was calling the drain ioctl rather than the
> flush ioctl when the stop speech command was issued to it.   Changing the flite engine so it
> could distinguish between  drain and flush fixed the problem and made things very responsive
> without having to tweak buffer sizes.
>
> -Brian
>

