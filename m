Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AB90B12DF51
	for <lists+speakup@lfdr.de>; Wed,  1 Jan 2020 16:45:36 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 03AED1C4A9F; Wed,  1 Jan 2020 10:45:33 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=rednote.net header.i=@rednote.net header.b="kV7RMBEw";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C94031C4764;
	Wed,  1 Jan 2020 10:45:28 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 50D241C473B; Wed,  1 Jan 2020 10:45:15 -0500 (EST)
Received: from opera.rednote.net (opera.rednote.net
 [IPv6:2600:3c03::f03c:91ff:fe70:e783])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 10D631C4732
 for <speakup@linux-speakup.org>; Wed,  1 Jan 2020 10:45:12 -0500 (EST)
Received: from rednote.net (localhost [127.0.0.1])
 by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 001Fj99x222646
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
 for <speakup@linux-speakup.org>; Wed, 1 Jan 2020 15:45:09 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 001Fj99x222646
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rednote.net;
 s=default; t=1577893509;
 bh=+tFQIDHKAWDFXklIpX4zIa/IjNncyHqijyaypancSG0=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=kV7RMBEwvBvAmgO45eYE6yk4jYrA+eSm5rIJVDtcnhIkG6BZm4l298z81hAJHdVHF
 7TEdz5VPxlNiyx9neEqhf1ZN6HQITqGS++LjPlGWOVhCRIwojZwAtHL7vYt+8xIwAt
 OiOpDA36VIRf9knkWyHVpR/V/YncfVzrpNlc10A0=
Received: (from janina@localhost)
 by rednote.net (8.15.2/8.15.2/Submit) id 001Fj9m2222645
 for speakup@linux-speakup.org; Wed, 1 Jan 2020 10:45:09 -0500
Date: Wed, 1 Jan 2020 10:45:09 -0500
From: Janina Sajka <janina@rednote.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup locking box on latest linux 5.3.15-1
Message-ID: <20200101154509.GB1937@rednote.net>
References: <alpine.DEB.2.21.1912222137490.31217@befuddled.reisers.ca>
 <20191231114129.GA1937@rednote.net>
 <alpine.DEB.2.21.1912310943070.9526@befuddled.reisers.ca>
 <8d32a2c2-8cbf-c5c7-6f48-b4fd440a5da8@slint.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d32a2c2-8cbf-c5c7-6f48-b4fd440a5da8@slint.fr>
X-Operating-System: Linux opera.rednote.net 5.0.17-300.fc30.x86_64
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hi Didier, All:

I'm seeing this problem with software speech, too. I haven't had a
working hardware synth for some time for various reasons.

I locked up like Kirk describes earlier this week even. I'm currently on
kernel 5.4.6-arch3-1.

I guess I need another way to know when the fix makes it into the Arch
kernels! <smile>

Happy New Year!

Janina


Didier Spaier writes:
> Hi Kirk and Janina,
> =

> I won't ship a 5.3.x Kernel in Slint anyway as it is officially EOL
> upstream, however I plan to provide a 5.4 kernel soon and would like
> to have it tested wrt this issue.
> =

> I do not own a hard synth so can only test with speakup_soft myself, but
> I could ask Slint users to do so with a hard synth (ltlk at least and
> probably apollo as well).
> =

> With which driver did you try: soft or hard and then which hard synth?
> =

> Also Janina, does this issue occur also with linux 5.4.6.arch3-1?
> =

> As an aside, Kirk did you try one of the package labeled
> linux-image-5.4.0-1-<something> provided for Debian SID?
> =

> Best regards,
> =

> Didier
> =

> Le 31/12/19 =E0 15:46, Kirk Reiser a =E9crit=A0:
> > Yes Janina: On my boxes the machine is locked up solid as in not able
> > to even ssh or ping the machine.
> > =

> > I have had to revert back to a 5.2.x series kernel to by-pass the
> > problem. I tried three different 5.3.x kernels extensively before
> > reverting.
> > =

> > =A0 Kirk
> > =

> > On Tue, 31 Dec 2019, Janina Sajka wrote:
> > =

> >> Kirk:
> >>
> >> I think I'm also seeing this on my Arch system.
> >>
> >> The behavior is speech dies, and there seems no way to get it back sho=
rt
> >> of a reboot.
> >>
> >> Best,
> >>
> >> Janina
> >>
> >> Kirk Reiser writes:
> >>> Hello folks: It appears the bug that visited speakup back in late
> >>> August is back and active. In kernel version 5.3.15-1 built on
> >>> 2019-12-07. It can very easily be reproduced by hitting the next-word
> >>> or previous-word functions quickly in series. In fact it is veryd
> >>> ifficult to not trigger the bug. This is in debian sid BTW. My
> >>> machines are amd64 based so I'm not sure if it's active on Intel
> >>> processors.
> >>>
> >>> =A0 Kirk
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

-- =


Janina Sajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
