Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 4BB75196465
	for <lists+speakup@lfdr.de>; Sat, 28 Mar 2020 09:25:12 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 2A5B3428046E; Sat, 28 Mar 2020 04:25:10 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="uDuiU0Q8";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 6B59F4280498
	for <lists+speakup@lfdr.de>; Sat, 28 Mar 2020 04:21:22 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 555151C73BD; Sat, 28 Mar 2020 04:21:22 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=uDuiU0Q8;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8ECD41C73CA;
	Sat, 28 Mar 2020 04:20:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id ACFBF1C57B4; Sat, 28 Mar 2020 04:20:54 -0400 (EDT)
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 21CEA1C0129
 for <speakup@linux-speakup.org>; Sat, 28 Mar 2020 04:20:48 -0400 (EDT)
Received: by mail-lf1-f68.google.com with SMTP id u15so699617lfi.3
 for <speakup@linux-speakup.org>; Sat, 28 Mar 2020 01:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to;
 bh=puaF0Q4M6MODnqouA+Q+cjhifQ3DArdhqXwulxGA+xI=;
 b=uDuiU0Q8Ty5hNs6ilXRTsypxKiOB7IQ6TCimj0k6oXsXym5IjZQ4GLI/FLorbQ6R/q
 nLRNX7uPh9McDVRANH6BWeRr/eo186KQiemukM374X8CfSW0De/qWCJu4F/EoC2yh67J
 xT+Zuaer03Fx5PDKAhTWtwMYFuP3/bzAxzhKN8GP+LEUij8+OVmn8fXbSo+5+Wn3gTg4
 0GhEDBKWbwI8ZIlUp7/nqUZbbsAsSGagGQrdOxXWPOigqXyA/CK1vS6aRR9Gz9p5TCCB
 7MNoqRiyELaiO1OG7mLl8ZPWTauTcoMvVOB4fBYPvU5n3wstivAEQiSvO6oqz6veRdlN
 QwNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to;
 bh=puaF0Q4M6MODnqouA+Q+cjhifQ3DArdhqXwulxGA+xI=;
 b=rFwfJuJEcaaRYWhfRUcimV7XVyPRPSJuMQJ/53QltJ1dSW1B7MInX7Brs/q5if6zTf
 QTeEpK+8SK416+oJoEdI5zV4IXhUsrxiCyQCU8E1+u3b4A+pHH1WvGB90TB3seKPpgk8
 p3vpgtSxDt93LxMEB04pyB0DJcg71XzPHRZBsRCdMOLQf5MpeUdbLN6rf+3kzsivfpe+
 kaBcU3VXvolJ2TadvhJBAD84EqxFoyCVQJvIYAheJTJ8eYSWEWe4U0oQAauL0wuz+xrP
 tNi9ipaOgnpyGFo6qhtikZrypZbYarz8BgxbGheUAHB1yua037tOzWGCFBJJdfdbk/ab
 glWQ==
X-Gm-Message-State: AGi0PuawedQiBQC84bStnLLF04na3FWmg33Ne51PAKXLD2BkQEusycZH
 Mcf/T6kbzELTjgxdqCRwtyI=
X-Google-Smtp-Source: APiQypK5wqeY50e4tFuSD34BAhDgs/eHmK5cpqIkEJeJCUPitZjipPvlkMf3R4pUcS4P05PlRjEPzw==
X-Received: by 2002:a19:6e0f:: with SMTP id j15mr2095684lfc.76.1585383582201; 
 Sat, 28 Mar 2020 01:19:42 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
 by smtp.gmail.com with ESMTPSA id 15sm3998395lfr.17.2020.03.28.01.19.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 28 Mar 2020 01:19:41 -0700 (PDT)
Subject: Re: speakup on latest kernels
To: Kelly Prescott <kprescott@coolip.net>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <77f47396-554f-3d0a-fd9d-fc760ecb2dfe@the-brannons.com>
 <20200130053303.GA4319@gregn.net>
 <9ca2e37d-f293-9b7b-80a2-177cbccfb08e@gmail.com>
 <alpine.NEB.2.21.2001301518500.16863@panix1.panix.com>
 <20200303131128.7d4uitw7feevimoj@function>
 <alpine.LNX.2.22.411.2003271958160.10657@io.coolip.net>
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Autocrypt: addr=aarnaarn2@gmail.com; keydata=
 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
 444rpcPy
Message-ID: <ea1321b1-fa81-2685-dcd0-ad974ceeb16e@gmail.com>
Date: Sat, 28 Mar 2020 11:19:31 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.22.411.2003271958160.10657@io.coolip.net>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
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
Cc: Janina Sajka <janina@rednote.net>, Gregory Nowak <greg@gregn.net>
Content-Type: multipart/mixed; boundary="===============0946700546603410841=="
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0946700546603410841==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="6oEcojaQWU5gxidtRClgZFjxHAYgwgDbD"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--6oEcojaQWU5gxidtRClgZFjxHAYgwgDbD
Content-Type: multipart/mixed; boundary="4uPe4QwHU6OVAdbTkuMpp6S7vFjST6zxN"

--4uPe4QwHU6OVAdbTkuMpp6S7vFjST6zxN
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

yep. it is included in 5.5.13.arch1-1
also i released a new TalkingArch with this kernel.


Sincerely, Alexander

28.03.2020 3:12, Kelly Prescott =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> This patch appears to now be included in arch Linux after upgrading
> the kernel to 5.5.13-arch1
> Could someone also confirm this for me?
> I got my information from
> https://git.archlinux.org/archlinux.git/log/?h=3Dv5.5.12-arch1&ofs=3D50=
&showmsg=3D1
>
>
>
> On Tue, 3 Mar 2020, Samuel Thibault wrote:
>
>> Hello,
>>
>> For people who have had crashes with latest kernels and can rebuild
>> their own kernel, could you try to apply the attached patch? It seems =
to
>> be fixing things and for sure would trigger crashes when doing get_wor=
d
>> while speakup is on a space. The issue has been there for at least 10
>> years, it's a bit crazy that only now we have crashes with it :)
>>
>> Samuel
>>
--=20
Sincerely, Alexander.



--4uPe4QwHU6OVAdbTkuMpp6S7vFjST6zxN--

--6oEcojaQWU5gxidtRClgZFjxHAYgwgDbD--

--===============0946700546603410841==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

--===============0946700546603410841==--
