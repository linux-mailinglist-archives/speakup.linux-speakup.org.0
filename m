Return-Path: <speakup+bounces-1608-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNAyElC9EGqjdAYAu9opvQ
	(envelope-from <speakup+bounces-1608-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Fri, 22 May 2026 22:32:16 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5AF3A5BA14B
	for <lists+speakup@lfdr.de>; Fri, 22 May 2026 22:32:14 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=bHw1LXnw;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CC0CC3826E9; Fri, 22 May 2026 16:32:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AA2BE3825FD
	for <lists+speakup@lfdr.de>; Fri, 22 May 2026 16:32:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A5ABE382605; Fri, 22 May 2026 16:32:07 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1A5C33825F9
	for <speakup@linux-speakup.org>; Fri, 22 May 2026 16:32:07 -0400 (EDT)
Received: from [192.168.4.27] (24.115.246.146.res-cmts.sm3.ptd.net [24.115.246.146])
	by mailbackend.panix.com (Postfix) with ESMTPSA id 4gMcQ94w6kz4jcn;
	Fri, 22 May 2026 16:32:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1779481921; bh=rH+jBFtnycXSRewOaIJ0icZeZdDutMrO6X/UTenKPEU=;
	h=Date:Subject:In-Reply-To:From:To;
	b=bHw1LXnwF56i/2usIISv9alY3Mz+EmTRIwkfyzJm0h0x77olOeyiqB2xL6tW/BICD
	 zfyYqJm0QwWts/qRoM+7QNsHDiWThof4DekLApzY+sp9N3iBt4eTjwLdMnp0uWUuGu
	 pAdCzUeubdyOh32vwHLspMr5579E6jNH13iIRG/o=
SavedFromEmail: jdashiel@panix.com
Date: Fri, 22 May 2026 16:32:00 -0400
Subject: RE: Fedora and Espeakup
In-Reply-To: <fb65c199-a58d-4510-80de-eeea023a468e@math.wisc.edu>
Importance: normal
From: jdashiel <jdashiel@panix.com>
To: "John G. Heim" <jheim@math.wisc.edu>, "Speakup is a screen review system
 for Linux." <speakup@linux-speakup.org>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="--_com.samsung.android.email_41365741559380"
Message-Id: <20260522203213.AA2BE3825FD@befuddled.reisers.ca>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [0.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[panix.com,none];
	R_DKIM_ALLOW(-0.20)[panix.com:s=panix];
	MAILLIST(-0.18)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1608-lists,speakup=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_ALL(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[panix.com:+];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jdashiel@panix.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.899];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wisc.edu:email,panix.com:dkim,befuddled.reisers.ca:rdns,befuddled.reisers.ca:mid,befuddled.reisers.ca:helo,linux-speakup.org:email]
X-Rspamd-Queue-Id: 5AF3A5BA14B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

----_com.samsung.android.email_41365741559380
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

U2VudCBmcm9tIG15IEdhbGF4eVlvdSBhcmUgY2lycmVjNSwgZGZlZG9yYXlvdSBheHJlIGNvcnJl
Y3QgZmVkb3JhIGFuZCBnZW50b28gcm9sbCB0aHJlaXIgb3duIGplcm5lbHMgd2hpY2ggZXhjbHVk
ZSBlc3BlYWt1cC4gSSB1c2VkIGZlZG9yYSBmb3IgYSB3aGlsZSBsYXN0IHllYXIgYW5kIHNwZWNp
ZmljbHkgc2VhcmNoZWQgZm9yIGVzcGVha3VwIGFuZCBlc3BlYWt1cCBpcyBub3QgaW4gYW55IGZl
ZG9yYSBkaXN0cmlidXRpb24uwqAgV2l0aCBnZW50b28geW91IGNhbiBwYXRjaCB0aGUga2VybmVs
IGFuZCBhZGQgZXNwZWFrdXAgdG8gaXQuwqAgbGlrZWx5IGFuIGVhc2llciBwb3NzaWJpbGl0eSBm
b3IgZ2VudG9vIGlzIHRkc3Igc2luY2UgdGhhdCBkb2Vzbid0IG1lc3Mgd2l0aCB0aGUga2VybmVs
LsKgCi0tLS0tLS0tIE9yaWdpbmFsIG1lc3NhZ2UgLS0tLS0tLS1Gcm9tOiAiSm9obiBHLiBIZWlt
IiA8amhlaW1AbWF0aC53aXNjLmVkdT4gRGF0ZTogNS8yMi8yNiAgMTY6MTYgIChHTVQtMDU6MDAp
IFRvOiAiU3BlYWt1cCBpcyBhIHNjcmVlbiByZXZpZXcgc3lzdGVtIGZvciBMaW51eC4iIDxzcGVh
a3VwQGxpbnV4LXNwZWFrdXAub3JnPiBTdWJqZWN0OiBGZWRvcmEgYW5kIEVzcGVha3VwIEkgd2Fz
IGFib3V0IHRvIHdyaXRlwqAgdGhlIHBhcnQgb2YgdGhlIFNwZWFrdXDCoCBkb2NzIGFib3V0IGlu
c3RhbGxpbmcgYW5kIGNvbmZpZ3VyaW5nIEVzcGVha3VwIHdoZW4gSSByYW4gaW50byB0cm91Ymxl
IG9uIEZlZG9yYS4gSXQgbG9va3MgYXMgaWYgdGhlcmUgaXMgbm8gRXNwZWFrdXAgcGFja2FnZSBm
b3IgRmVkb3JhLiBDYW4gYW55b25lIGNvbmZpcm0/VGhpcyB3b3VsZCBtZWFuIGEgRmVkb3JhIHVz
ZXIgY2Fubm90IHVzZSBzb2Z0d2FyZSBzcGVlY2ggLS0gd2hpY2ggc2VlbXMgaW1wb3NzaWJsZSB0
byBtZS4gSWbCoCB5b3XCoCBhcmUgYSBGZWRvcmEgb3IgUmVkIEhhdCBzeXMgYWRtaW4swqAgeW91
IGNhbm5vdCB1c2Ugc29mdHdhcmUgc3BlZWNoPyBUaGF0IHdvdWxkwqAgYmUgYmFkLiBJIGd1ZXNz
IHlvdcKgIGNvdWxkwqAgZ2V0IHlvdXIgam9iIGRvbmUgdmlhwqAgYcKgIGNvbWJpbmF0aW9uIG9m
IHNzaCwgYSBoYXJkd2FyZSBzeW50aCwgYW5kIHVzaW5nIE9yY2EgaW7CoCB0aGUgR1VJLg==

----_com.samsung.android.email_41365741559380
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGh0bWw+PGhlYWQ+PG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0
L2h0bWw7IGNoYXJzZXQ9VVRGLTgiPjwvaGVhZD48Ym9keSBkaXI9ImF1dG8iPjxkaXYgZGlyPSJh
dXRvIj48YnI+PC9kaXY+PGRpdiBkaXI9ImF1dG8iPjxicj48L2Rpdj48ZGl2IGRpcj0iYXV0byI+
PGJyPjwvZGl2PjxkaXYgZGlyPSJhdXRvIj48YnI+PC9kaXY+PGRpdiBpZD0iY29tcG9zZXJfc2ln
bmF0dXJlIiBkaXI9ImF1dG8iPjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxNHB4O2NvbG9yOiM5MDkw
OTAiIGRpcj0iYXV0byI+U2VudCBmcm9tIG15IEdhbGF4eTwvZGl2PjwvZGl2PjxkaXYgZGlyPSJh
dXRvIj5Zb3UgYXJlIGNpcnJlYzUsIGRmZWRvcmF5b3UgYXhyZSBjb3JyZWN0IGZlZG9yYSBhbmQg
Z2VudG9vIHJvbGwgdGhyZWlyIG93biBqZXJuZWxzIHdoaWNoIGV4Y2x1ZGUgZXNwZWFrdXAuIEkg
dXNlZCBmZWRvcmEgZm9yIGEgd2hpbGUgbGFzdCB5ZWFyIGFuZCBzcGVjaWZpY2x5IHNlYXJjaGVk
IGZvciBlc3BlYWt1cCBhbmQgZXNwZWFrdXAgaXMgbm90IGluIGFueSBmZWRvcmEgZGlzdHJpYnV0
aW9uLiZuYnNwOyBXaXRoIGdlbnRvbyB5b3UgY2FuIHBhdGNoIHRoZSBrZXJuZWwgYW5kIGFkZCBl
c3BlYWt1cCB0byBpdC4mbmJzcDsgbGlrZWx5IGFuIGVhc2llciBwb3NzaWJpbGl0eSBmb3IgZ2Vu
dG9vIGlzIHRkc3Igc2luY2UgdGhhdCBkb2Vzbid0IG1lc3Mgd2l0aCB0aGUga2VybmVsLjwvZGl2
PjxkaXYgZGlyPSJhdXRvIj48YnI+PC9kaXY+PGRpdiBkaXI9ImF1dG8iPiZuYnNwOzwvZGl2Pjxk
aXY+PGJyPjwvZGl2PjxkaXYgYWxpZ249ImxlZnQiIGRpcj0iYXV0byIgc3R5bGU9ImZvbnQtc2l6
ZToxMDAlO2NvbG9yOiMwMDAwMDAiPjxkaXY+LS0tLS0tLS0gT3JpZ2luYWwgbWVzc2FnZSAtLS0t
LS0tLTwvZGl2PjxkaXY+RnJvbTogIkpvaG4gRy4gSGVpbSIgJmx0O2poZWltQG1hdGgud2lzYy5l
ZHUmZ3Q7IDwvZGl2PjxkaXY+RGF0ZTogNS8yMi8yNiAgMTY6MTYgIChHTVQtMDU6MDApIDwvZGl2
PjxkaXY+VG86ICJTcGVha3VwIGlzIGEgc2NyZWVuIHJldmlldyBzeXN0ZW0gZm9yIExpbnV4LiIg
Jmx0O3NwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcmZ3Q7IDwvZGl2PjxkaXY+U3ViamVjdDogRmVk
b3JhIGFuZCBFc3BlYWt1cCA8L2Rpdj48ZGl2Pjxicj48L2Rpdj48L2Rpdj5JIHdhcyBhYm91dCB0
byB3cml0ZSZuYnNwOyB0aGUgcGFydCBvZiB0aGUgU3BlYWt1cCZuYnNwOyBkb2NzIGFib3V0IGlu
c3RhbGxpbmcgYW5kIDxicj5jb25maWd1cmluZyBFc3BlYWt1cCB3aGVuIEkgcmFuIGludG8gdHJv
dWJsZSBvbiBGZWRvcmEuIEl0IGxvb2tzIGFzIGlmIDxicj50aGVyZSBpcyBubyBFc3BlYWt1cCBw
YWNrYWdlIGZvciBGZWRvcmEuIENhbiBhbnlvbmUgY29uZmlybT88YnI+PGJyPlRoaXMgd291bGQg
bWVhbiBhIEZlZG9yYSB1c2VyIGNhbm5vdCB1c2Ugc29mdHdhcmUgc3BlZWNoIC0tIHdoaWNoIHNl
ZW1zIDxicj5pbXBvc3NpYmxlIHRvIG1lLiBJZiZuYnNwOyB5b3UmbmJzcDsgYXJlIGEgRmVkb3Jh
IG9yIFJlZCBIYXQgc3lzIGFkbWluLCZuYnNwOyB5b3UgPGJyPmNhbm5vdCB1c2Ugc29mdHdhcmUg
c3BlZWNoPyBUaGF0IHdvdWxkJm5ic3A7IGJlIGJhZC4gSSBndWVzcyB5b3UmbmJzcDsgY291bGQm
bmJzcDsgZ2V0IDxicj55b3VyIGpvYiBkb25lIHZpYSZuYnNwOyBhJm5ic3A7IGNvbWJpbmF0aW9u
IG9mIHNzaCwgYSBoYXJkd2FyZSBzeW50aCwgYW5kIHVzaW5nIDxicj5PcmNhIGluJm5ic3A7IHRo
ZSBHVUkuPGJyPjxicj48YnI+PGJyPjwvYm9keT48L2h0bWw+

----_com.samsung.android.email_41365741559380--


