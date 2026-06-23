Return-Path: <speakup+bounces-1613-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yxLPIfSXOmozBAgAu9opvQ
	(envelope-from <speakup+bounces-1613-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 16:28:04 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3C3556B7DF8
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 16:28:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=panix.com header.s=panix header.b=pyXnBoat;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1613-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1613-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=none) header.from=panix.com
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 47CB338266A; Tue, 23 Jun 2026 10:28:00 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2A706381902
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 10:28:00 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 140793820A0; Tue, 23 Jun 2026 10:27:54 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A0F3E381902
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 10:27:53 -0400 (EDT)
Received: from [192.168.4.27] (24.115.246.146.res-cmts.sm3.ptd.net [24.115.246.146])
	by mailbackend.panix.com (Postfix) with ESMTPSA id 4gl6qB0r68z12H2;
	Tue, 23 Jun 2026 10:27:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1782224870; bh=L9CzgaJqE18xEOOnbrj7b4fVpd+c+CC84BQrQikxgu0=;
	h=Date:Subject:In-Reply-To:From:To;
	b=pyXnBoattMWEwfhRrnoRi2t28gltMIhdToqxjxlTBWVGYjD6naoCbgMw8UmrnyMTL
	 89EIJNAZEQF8Gumgtx2A6LOsme7d6Om0RFyz4yioS01D4lxR+L5OtutLt49fRga6U8
	 vg4usvFTvJdvO3lCO91K5VVuYi4gQTp9yXLs2o2g=
SavedFromEmail: jdashiel@panix.com
Date: Tue, 23 Jun 2026 10:27:49 -0400
Subject: Re: Speechd-up -- nice!
In-Reply-To: <031401dd02c6$798d33a0$8b01f80a@nucwin10>
Importance: normal
From: jdashiel <jdashiel@panix.com>
To: K0LNY ?? <glenn@ervin.email>, "Speakup is a screen review system for
 Linux." <speakup@linux-speakup.org>, "John G. Heim" <jheim@math.wisc.edu>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="--_com.samsung.android.email_199631066419580"
Message-Id: <20260623142800.2A706381902@befuddled.reisers.ca>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[panix.com,none];
	R_DKIM_ALLOW(-0.20)[panix.com:s=panix];
	MAILLIST(-0.18)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1613-lists,speakup=lfdr.de];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:glenn@ervin.email,m:jheim@math.wisc.edu,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[jdashiel@panix.com,speakup@linux-speakup.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jdashiel@panix.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[panix.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wisc.edu:email,panix.com:dkim,panix.com:from_mime,befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns,befuddled.reisers.ca:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3C3556B7DF8

----_com.samsung.android.email_199631066419580
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

U3BlZWNoIHN5bnRoZXNpemVycyBzaG93ZWQgdXAgaW4gMTk2MyBpbiBmaWdodGVyIGpldHMgYW5k
IHBpbG90cyBkaWQgbm90IHdhbnQgaHVtYW4gc291bmRpbmcgc3BlZWNoIGluIG9yZGVyIHRvIGRp
c3Rpbmd1aXNoIGl0IGZyb20gcmFkaW8gYW5kIGludGVyY29tIHRyYWZmaWMuU2VudCBmcm9tIG15
IEdhbGF4eQotLS0tLS0tLSBPcmlnaW5hbCBtZXNzYWdlIC0tLS0tLS0tRnJvbTogSzBMTlkgPz8g
PGdsZW5uQGVydmluLmVtYWlsPiBEYXRlOiA2LzIzLzI2ICAwMDoxMiAgKEdNVC0wNTowMCkgVG86
ICJTcGVha3VwIGlzIGEgc2NyZWVuIHJldmlldyBzeXN0ZW0gZm9yIExpbnV4LiIgPHNwZWFrdXBA
bGludXgtc3BlYWt1cC5vcmc+LCAiSm9obiBHLiBIZWltIiA8amhlaW1AbWF0aC53aXNjLmVkdT4g
U3ViamVjdDogUmU6IFNwZWVjaGQtdXAgLS0gbmljZSEgSSBkcmVhZCB0aGUgZGF5IHRoYXQgaHVt
YW4gc291bmRpbmcgdm9pY2VzIGFyZSBhbGwgd2UgaGF2ZS5JIGhhdGUgU3BlYWt1cCwgYWx0aG91
Z2ggaXQgaXMgcXVpdGUgaW50ZWxsaWdpYmxlLCBidXQgSSBuZXZlciB3YW50IGFueXRoaW5nIGJ1
dCBFbG9xdWVuY2Uvdm94aW4uSHVtYW4gc291bmRpbmcgdm9pY2VzIG1pZ2h0IGJlIG9rYXkgZm9y
IHJlYWRpbmcgYSBib29rLCBidXQgbm90IGZvciBjb21wdXRlciB1c2UgaW4gbXkgb3Bpbmlvbi4t
LS0tLSBPcmlnaW5hbCBNZXNzYWdlIC0tLS0tIEZyb206ICJKb2huIEcuIEhlaW0iIDxqaGVpbUBt
YXRoLndpc2MuZWR1PlRvOiAiU3BlYWt1cCBpcyBhIHNjcmVlbiByZXZpZXcgc3lzdGVtIGZvciBM
aW51eC4iIDxzcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnPlNlbnQ6IE1vbmRheSwgSnVuZSAyMiwg
MjAyNiAxMDo0NSBQTVN1YmplY3Q6IFNwZWVjaGQtdXAgLS0gbmljZSFOb3QgbXVjaCBtZW50aW9u
IG9mIHNwZWVjaGQtdXAgb24gdGhpcyBsaXN0IG92ZXIgdGhlIHllYXJzLiBUdXJucyBvdXRpdCdz
IHByZXR0eSBuaWNlLiBXaGlsZSB3b3JraW5nIG9uIHJld3JpdGluZyB0aGUgZG9jcyBmb3IgU3Bl
YWt1cCwgSWdhdmUgc3BlZWNoZC11cCBhIHRyeSBhbmQgaXQgd29ya3MgZ3JlYXQuIEknbSB1c2lu
ZyB0aGF0IFZveGluIGRlZmF1bHR2b2ljZSwgRWxvcXVlbmNlLCBhdCB0aGUgY29tbWFuZCBsaW5l
LiBZb3UgY2FuJ3QgZG8gdGhhdCB3aXRoIGVzcGVha3VwLlNwZWVjaGQtdXAgbWlnaHQgYmUgdGhl
IHdheSB0byBnbyBpbiB0aGUgZnV0dXJlIGJlY2F1c2Ugdm9pY2VzIHRoYXQgYXJlbm90IHJlc291
cmNlIGhvZ3MgYW5kIGFyZSBtb3JlIGh1bWFuIHNvdW5kaW5nIGFyZSBjb21pbmcuIFdlbGwsIHRo
ZXlhbHJlYWR5IGV4aXN0IGV4Y2VwdCBJIGRvbid0IGtub3cgaG93IHRvIGdldCB0aGVtIHRvIHdv
cmsgd2l0aCBTcGVlY2hEaXNwYXRjaGVyLiBBRkFJSywgbm9ib2R5IGRvZXMuIExpa2UsIEkgaGF2
ZSBhIGxpY2Vuc2UgZm9yIFNhbWFudGhhIGJ1dGRhcm5lZCBpZiBJIGNhbiBnZXQgaXQgdG8gd29y
ayB3aXRoIFNwZWVjaCBEaXNwYXRjaGVyLkFueXdheSwgb25jZSB0aGF0IGtpbmQgb2YgdGhpbmcg
Z2V0cyB3b3JrZWQgb3V0LCB5b3UnbGwgYmUgYWJsZSB0byBoYXZlaHVtYW4gc291bmRpbmcgdm9p
Y2VzIGF0IHRoZSBMaW51eCBjb21tYW5kIGxpbmUu

----_com.samsung.android.email_199631066419580
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGh0bWw+PGhlYWQ+PG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0
L2h0bWw7IGNoYXJzZXQ9VVRGLTgiPjwvaGVhZD48Ym9keSBkaXI9ImF1dG8iPjxkaXYgZGlyPSJh
dXRvIj5TcGVlY2ggc3ludGhlc2l6ZXJzIHNob3dlZCB1cCBpbiAxOTYzIGluIGZpZ2h0ZXIgamV0
cyBhbmQgcGlsb3RzIGRpZCBub3Qgd2FudCBodW1hbiBzb3VuZGluZyBzcGVlY2ggaW4gb3JkZXIg
dG8gZGlzdGluZ3Vpc2ggaXQgZnJvbSByYWRpbyBhbmQgaW50ZXJjb20gdHJhZmZpYy48L2Rpdj48
ZGl2IGRpcj0iYXV0byI+PGJyPjwvZGl2PjxkaXYgZGlyPSJhdXRvIj48YnI+PC9kaXY+PGRpdiBk
aXI9ImF1dG8iPjxicj48L2Rpdj48ZGl2IGRpcj0iYXV0byI+PGJyPjwvZGl2PjxkaXYgZGlyPSJh
dXRvIj48YnI+PC9kaXY+PGRpdiBpZD0iY29tcG9zZXJfc2lnbmF0dXJlIiBkaXI9ImF1dG8iPjxk
aXYgc3R5bGU9ImZvbnQtc2l6ZToxNHB4O2NvbG9yOiM5MDkwOTAiIGRpcj0iYXV0byI+U2VudCBm
cm9tIG15IEdhbGF4eTwvZGl2PjwvZGl2PjxkaXYgZGlyPSJhdXRvIj48YnI+PC9kaXY+PGRpdj48
YnI+PC9kaXY+PGRpdiBhbGlnbj0ibGVmdCIgZGlyPSJhdXRvIiBzdHlsZT0iZm9udC1zaXplOjEw
MCU7Y29sb3I6IzAwMDAwMCI+PGRpdj4tLS0tLS0tLSBPcmlnaW5hbCBtZXNzYWdlIC0tLS0tLS0t
PC9kaXY+PGRpdj5Gcm9tOiBLMExOWSA/PyAmbHQ7Z2xlbm5AZXJ2aW4uZW1haWwmZ3Q7IDwvZGl2
PjxkaXY+RGF0ZTogNi8yMy8yNiAgMDA6MTIgIChHTVQtMDU6MDApIDwvZGl2PjxkaXY+VG86ICJT
cGVha3VwIGlzIGEgc2NyZWVuIHJldmlldyBzeXN0ZW0gZm9yIExpbnV4LiIgJmx0O3NwZWFrdXBA
bGludXgtc3BlYWt1cC5vcmcmZ3Q7LCAiSm9obiBHLiBIZWltIiAmbHQ7amhlaW1AbWF0aC53aXNj
LmVkdSZndDsgPC9kaXY+PGRpdj5TdWJqZWN0OiBSZTogU3BlZWNoZC11cCAtLSBuaWNlISA8L2Rp
dj48ZGl2Pjxicj48L2Rpdj48L2Rpdj5JIGRyZWFkIHRoZSBkYXkgdGhhdCBodW1hbiBzb3VuZGlu
ZyB2b2ljZXMgYXJlIGFsbCB3ZSBoYXZlLjxicj5JIGhhdGUgU3BlYWt1cCwgYWx0aG91Z2ggaXQg
aXMgcXVpdGUgaW50ZWxsaWdpYmxlLCBidXQgSSBuZXZlciB3YW50IGFueXRoaW5nIDxicj5idXQg
RWxvcXVlbmNlL3ZveGluLjxicj5IdW1hbiBzb3VuZGluZyB2b2ljZXMgbWlnaHQgYmUgb2theSBm
b3IgcmVhZGluZyBhIGJvb2ssIGJ1dCBub3QgZm9yIGNvbXB1dGVyIDxicj51c2UgaW4gbXkgb3Bp
bmlvbi48YnI+LS0tLS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0tLSA8YnI+RnJvbTogIkpvaG4gRy4g
SGVpbSIgJmx0O2poZWltQG1hdGgud2lzYy5lZHUmZ3Q7PGJyPlRvOiAiU3BlYWt1cCBpcyBhIHNj
cmVlbiByZXZpZXcgc3lzdGVtIGZvciBMaW51eC4iIDxicj4mbHQ7c3BlYWt1cEBsaW51eC1zcGVh
a3VwLm9yZyZndDs8YnI+U2VudDogTW9uZGF5LCBKdW5lIDIyLCAyMDI2IDEwOjQ1IFBNPGJyPlN1
YmplY3Q6IFNwZWVjaGQtdXAgLS0gbmljZSE8YnI+PGJyPjxicj5Ob3QgbXVjaCBtZW50aW9uIG9m
IHNwZWVjaGQtdXAgb24gdGhpcyBsaXN0IG92ZXIgdGhlIHllYXJzLiBUdXJucyBvdXQ8YnI+aXQn
cyBwcmV0dHkgbmljZS4gV2hpbGUgd29ya2luZyBvbiByZXdyaXRpbmcgdGhlIGRvY3MgZm9yIFNw
ZWFrdXAsIEk8YnI+Z2F2ZSBzcGVlY2hkLXVwIGEgdHJ5IGFuZCBpdCB3b3JrcyBncmVhdC4gSSdt
IHVzaW5nIHRoYXQgVm94aW4gZGVmYXVsdDxicj52b2ljZSwgRWxvcXVlbmNlLCBhdCB0aGUgY29t
bWFuZCBsaW5lLiBZb3UgY2FuJ3QgZG8gdGhhdCB3aXRoIGVzcGVha3VwLjxicj48YnI+U3BlZWNo
ZC11cCBtaWdodCBiZSB0aGUgd2F5IHRvIGdvIGluIHRoZSBmdXR1cmUgYmVjYXVzZSB2b2ljZXMg
dGhhdCBhcmU8YnI+bm90IHJlc291cmNlIGhvZ3MgYW5kIGFyZSBtb3JlIGh1bWFuIHNvdW5kaW5n
IGFyZSBjb21pbmcuIFdlbGwsIHRoZXk8YnI+YWxyZWFkeSBleGlzdCBleGNlcHQgSSBkb24ndCBr
bm93IGhvdyB0byBnZXQgdGhlbSB0byB3b3JrIHdpdGggU3BlZWNoPGJyPkRpc3BhdGNoZXIuIEFG
QUlLLCBub2JvZHkgZG9lcy4gTGlrZSwgSSBoYXZlIGEgbGljZW5zZSBmb3IgU2FtYW50aGEgYnV0
PGJyPmRhcm5lZCBpZiBJIGNhbiBnZXQgaXQgdG8gd29yayB3aXRoIFNwZWVjaCBEaXNwYXRjaGVy
Ljxicj48YnI+QW55d2F5LCBvbmNlIHRoYXQga2luZCBvZiB0aGluZyBnZXRzIHdvcmtlZCBvdXQs
IHlvdSdsbCBiZSBhYmxlIHRvIGhhdmU8YnI+aHVtYW4gc291bmRpbmcgdm9pY2VzIGF0IHRoZSBM
aW51eCBjb21tYW5kIGxpbmUuPGJyPjxicj48YnI+PGJyPjxicj48YnI+PGJyPjwvYm9keT48L2h0
bWw+

----_com.samsung.android.email_199631066419580--


