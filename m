Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7FFA72F2341
	for <lists+speakup@lfdr.de>; Tue, 12 Jan 2021 01:13:32 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 95CCB380F17; Mon, 11 Jan 2021 19:13:31 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9680B380F3B;
	Mon, 11 Jan 2021 19:13:29 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 0344E380C12; Mon, 11 Jan 2021 19:13:28 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id D0375380926
 for <speakup@linux-speakup.org>; Mon, 11 Jan 2021 19:13:27 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 885985E2
 for <speakup@linux-speakup.org>; Tue, 12 Jan 2021 01:12:56 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L-tLgZgG2AOd for <speakup@linux-speakup.org>;
 Tue, 12 Jan 2021 01:12:56 +0100 (CET)
Received: from begin (unknown [IPv6:2a01:cb19:956:1b00:de41:a9ff:fe47:ec49])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id E8FD7162
 for <speakup@linux-speakup.org>; Tue, 12 Jan 2021 01:12:55 +0100 (CET)
Received: from samy by begin with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1kz7It-0032w4-9r
 for speakup@linux-speakup.org; Tue, 12 Jan 2021 01:12:55 +0100
Date: Tue, 12 Jan 2021 01:12:55 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakupconf vs speakup-save/speakup-restore
Message-ID: <20210112001255.bwv7ac3c66xnst6o@function>
References: <20210111223737.697336-1-samuel.thibault@ens-lyon.org>
 <20210111223737.697336-5-samuel.thibault@ens-lyon.org>
 <3101bb04-38f3-9bc2-453d-3da37a50b7d9@slint.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3101bb04-38f3-9bc2-453d-3da37a50b7d9@slint.fr>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Spamd-Bar: /
Authentication-Results: hera.aquilenet.fr
X-Rspamd-Server: hera
X-Rspamd-Queue-Id: 885985E2
X-Spamd-Result: default: False [0.06 / 15.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; FROM_HAS_DN(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; MIME_GOOD(-0.10)[text/plain];
 PREVIOUSLY_DELIVERED(0.00)[speakup@linux-speakup.org];
 RCPT_COUNT_ONE(0.00)[1]; HAS_ORG_HEADER(0.00)[];
 RCVD_COUNT_THREE(0.00)[3]; TO_DN_ALL(0.00)[];
 RCVD_NO_TLS_LAST(0.10)[]; FROM_EQ_ENVFROM(0.00)[];
 MID_RHS_NOT_FQDN(0.50)[]; BAYES_HAM(-0.44)[78.65%]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

RGlkaWVyIFNwYWllciwgbGUgbWFyLiAxMiBqYW52LiAyMDIxIDAwOjM0OjUxICswMTAwLCBhIGVj
cml0Ogo+IExlIDExLzAxLzIwMjEgw6AgMjM6MzcsIFNhbXVlbCBUaGliYXVsdCBhIMOpY3JpdMKg
Ogo+ID4gK05vdGU6IHRoZSBzcGVha3VwY29uZiBtdXN0IGJlIGluc3RhbGxlZCBvbiB5b3VyIHN5
c3RlbSBzbyB0aGF0IHNldHRpbmdzIGFyZSBzYXZlZC4KPiA+ICtPdGhlcndpc2UsIHlvdSB3aWxs
IGhhdmUgYW4gZXJyb3I6IHlvdXIgbGFuZ3VhZ2Ugd2lsbCBiZSBsb2FkZWQgYnV0IHlvdSB3aWxs
Cj4gPiAraGF2ZSB0byBydW4gdGhlIHNjcmlwdCBhZ2FpbiBldmVyeSB0aW1lIFNwZWFrdXAgcmVz
dGFydHMuCj4gPiArU2VlIHNlY3Rpb24gMTYuMS4gZm9yIGluZm9ybWF0aW9uIGFib3V0IHNwZWFr
dXBjb25mLgo+IAo+IEFsdGVybmF0aXZlbHkgdGhlIGF0dGFjaGVkIHNjcmlwdHMgYWxsb3cgdG8g
c2F2ZS9yZXN0b3JlIHRoZSBzZXR0aW5ncyBmb3IKPiBlYWNoIGhhcmQgc3ludGggaW5kZXBlbmRl
bnRseSBhbmQgdGhlIHNldHRpbmdzIGZvciBlc3BlYWt1cCB2cyBzcGVlY2hkLWVsCj4gaW5kZXBl
bmRlbnRseSBhcyB3ZWxsLgo+IAo+IFN1Z2dlc3RlZCB1c2FnZTogdGhlIHVzZXIgcnVucyBzcGVh
a3VwLXNhdmUgd2hlbiBoYXBweSB3aXRoIHRoZSBzZXR0aW5ncywKPiBzcGVha3VwLXJlc3RvcmUg
aXMgcnVuIGF0IGJvb3QuCgpTaW1pbGFybHksIGFyZSB0aGVzZSBzdXBwb3NlZCB0byBjb21wbGV0
ZWx5IHJlcGxhY2Ugc3BlYWt1cGNvbmY/CgpBbmQgYXMgd2VsbCwgcGxlYXNlIHNlZSB3aXRoIHNw
ZWFrdXBjb25mIHVzZXJzIHdoZXRoZXIgdGhlaXIgbmVlZHMgYXJlCmZ1bGZpbGxlZCBieSB0aGVz
ZSBzcGVha3VwLXNhdmUvc3BlYWt1cC1yZXN0b3JlLCBJIGRvbid0IHRoaW5rIHdlIHdhbnQKdG8g
bWFpbnRhaW4gYm90aC4KClNhbXVlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAu
b3JnCmh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3Bl
YWt1cAo=
