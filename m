Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 239AF2DD212
	for <lists+speakup@lfdr.de>; Thu, 17 Dec 2020 14:24:47 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7CB26380F87; Thu, 17 Dec 2020 08:24:46 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=icloud.com header.i=@icloud.com header.a=rsa-sha256 header.s=1a1hai header.b=r+dPRLY6;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 31D7F380F40;
	Thu, 17 Dec 2020 08:24:46 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 9113E380B32; Thu, 17 Dec 2020 08:24:45 -0500 (EST)
Received: from st43p00im-ztbu10063701.me.com (st43p00im-ztbu10063701.me.com
 [17.58.63.178])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 79F0C380B0C
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 08:24:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1608211483;
 bh=3QsqcRALTGAA42fbwUYnuJUH5e1nmNYpFtzroaUl7cs=;
 h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To;
 b=r+dPRLY6zIawwDwfmU/oIsIOzU0V2z/3oTC+Jn/tM0b1nUkut0Vr2k0M8+RQMoOVE
 S6XykU18WoTT/5n6YZK25kTH4yK91WOB6ztpp0AKGpTOJ5ntVjdgw6RF+sQSGpIwrc
 fPBy7AiFMnGbDORCSnkwChe8FnF7EfSphog2Jp0rjFwg9W8THl5vr80+V1BevkyU/J
 27LahOaFd1ZM8/LK2rIVOV687dyc079e2IBxjHRP0j9j5RglIZ3JRDfzQA+ptN8Izi
 njoFDlbxiJH3jTLASC5Nxk7F1+fR99Deu1Jdno1gUlPbKrjI57JyWaRiA+sF3plWGE
 L57wplNwgSjiA==
Received: from [192.168.1.77] (cpe-69-23-57-146.natcky.res.rr.com
 [69.23.57.146])
 by st43p00im-ztbu10063701.me.com (Postfix) with ESMTPSA id CD0329A0834
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 13:24:43 +0000 (UTC)
From: Reece O'Bryan <reece.obryan@icloud.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 17 Dec 2020 08:24:42 -0500
Subject: Re: Efficiently using terminal with screenreader
Message-Id: <53240DEC-4237-4D6C-9820-30DE24C3904E@icloud.com>
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
 <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
 <20201216130002.GA5313@rednote.net>
 <Pine.LNX.4.64.2012161636510.3602815@server2.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2012161636510.3602815@server2.shellworld.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
X-Mailer: iPhone Mail (16C101)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-17_08:2020-12-15,
 2020-12-17 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2012170095
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

V293LiBUaGlzIHByb2R1Y3Qgc291bmRzIGFtYXppbmcuIFdvdWxkIHlvdSBjYXJlIHRvIHNoYXJl
IHRoZSBtYW51ZmFjdHVyZSBvZiB5b3VyIGhhcmR3YXJlIHN5bnRoZXNpemVyIG9yIGhhdmUgYSBj
b21wYW55IHRvIHJlY29tbWVuZD8gWW91IHNhdmUgdGhpcyB3b3JrcyB3aXRoIGEgZGV2aWNlIGV2
ZW4gaWYgaXQgZG9lcyBub3QgaGF2ZSBzcGVha2Vycywgc28gdGhpcyBtZWFucyBpdCBlaXRoZXIg
aGFzIGEgc3BlYWtlciBpbiBiZWRkZWQgb3IgeW91IGNvbm5lY3QgaGVhZHBob25lcywgZXRjLiBJ
cyBpdCBwb3NzaWJsZSB0byB1c2Ugb25lIG9mIHRoZXNlLCBhIGhhcmR3YXJlIHNwZWVjaCBzeW50
aGVzaXplciwgdG8gcmVhZCBhbnl0aGluZyB0aGF0IG91dHB1dHMgdGV4dDsgc28gd2l0aCB0aGlz
IG1lYW4gdGhhdCBpbiB0aGVvcnkgeW91IGNvdWxkIGV2ZW4gdXNlIG9uZSBvZiB0aGVzZSB3aXRo
IGFuIG9wZXJhdGluZyBzeXN0ZW0gYW5kIG5vIHNvZnR3YXJlIHNjcmVlbiByZWFkZXIgb3IgZXZl
biBhIG1hY2hpbmUgdGhhdCBkb2VzbuKAmXQgaGF2ZSBhbnl0aGluZyBmb3IgYWNjZXNzaWJpbGl0
eSwgc3VjaCBhcyBhIFRWIG9yIEFUTSBtYWNoaW5lPyBJ4oCZbSBndWVzc2luZyBpdCBqdXN0IGdy
YWJzIHRoZSBwbGFpbnRleHQgdGhhdCBpcyB2aXN1YWxseSBvdXRwdXQsIEkgd291bGQgdGhpbmsg
dGhhdCB3b3VsZCBhbGxvdyB5b3UgdG8gdXNlIGEgZGV2aWNlIGxpa2UgdGhhdCB3aXRoIGFsbW9z
dCBhbnl0aGluZyB0aGF0IGhhcyBhIFVTQiBwb3J0IGFuZCBvdXRwdXRzIHRleHQsIGFtIEkgY29y
cmVjdCBvbiB0aGF0IGFzc3VtcHRpb24/CgoKVGhhbmsgeW91LAoKLVJlZWNlIAoKPiBPbiBEZWMg
MTYsIDIwMjAsIGF0IDQ6MzcgUE0sIEthcmVuIExld2VsbGVuIDxrbGV3ZWxsZW5Ac2hlbGx3b3Js
ZC5uZXQ+IHdyb3RlOgo+IAo+IG91dCBvZiBjdXJpb3NpdHksIGRvZXMgZmVucmlyIHdvcmsgd2l0
aCBhbnkgZGVjdGFsayBoYXJkd2FyZT8KPiBLYXJlCj4gCj4gCj4gCj4+IE9uIFdlZCwgMTYgRGVj
IDIwMjAsIEphbmluYSBTYWprYSB3cm90ZToKPj4gCj4+IEkgYWdyZWUgd2l0aCB0aGlzIGFkdmlj
ZS4gSG93ZXZlciwgZ2V0dGluZyBib3RoIGVudmlyb25tZW50cyBmdW5jdGlvbgo+PiB3aXRoIHNw
ZWVjaCBjb3VsZCBwcm92ZSB0byBiZSBhIGNoYWxsZW5nZSBvbiB5b3VyIGhhcmR3YXJlLgo+PiAK
Pj4gU3BlZWNoIERpc3BhdGNoZXIgZG9lc24ndCBwbGF5IHdpdGggU3BlYWt1cC4gVGhlcmUgYXJl
IG90aGVyCj4+IGNvbXBsaWNhdGlvbnMgdGhhdCBtYXksIG9yIG1heSBub3QgcHJvdmUgcHJvYmxl
bWF0aWNhbC4KPj4gCj4+IFlvdXIgYmVzdCBiZXQgbWlnaHQgYmUgRmVucmlyLgo+PiAKPj4gTXkg
Y3VycmVudCBzb2x1dGlvbiBpcyBhcyBmb2xsb3dzOgo+PiAKPj4gU3BlYWt1cCB1c2luZyBlc3Bl
YWsgd2l0aCB0aGUgZXNwZWFrdXAgY29ubmVjdG9yLiBOb3RlIHRoaXMgaXMgdGhlIG9sZAo+PiBl
c3BlYWssIG5vdCBlc3BlYWstbmcuCj4+IAo+PiBPcmNhIHdpdGggU3BlZWNoLURpc3BhdGNoZXIg
dXNpbmcgUkggVm9pY2UuCj4+IAo+PiBGWUk6IEknbSBvbiBhIGZ1bGx5IHVwZGF0ZWQgQXJjaC4K
Pj4gCj4+IEJlc3QsCj4+IAo+PiBKYW5pbmEKPj4gCj4+IFphY2hhcnkgS2xpbmUgd3JpdGVzOgo+
Pj4gSGksCj4+PiAKPj4+IFRvIGJlIHBlcmZlY3RseSBob25lc3QsIEkgcmVjb21tZW5kIHVzaW5n
IFNwZWFrdXAgZm9yIGdvb2QgdGVybWluYWwgc3VwcG9ydC4gT3JjYSBpcyByYXRoZXIgc3ViLXBh
ciBpbiB0aGlzIHJlZ2FyZCwgYW5kIFNwZWFrdXAgd2FzIGRlc2lnbmVkIHRvIGZ1bGx5IHN1cHBv
cnQgY29tbWFuZC1saW5lIG91dHB1dCBmcm9tIHRoZSBzdGFydC4KPj4+IEJlc3QsCj4+PiBaYWNr
Lgo+Pj4gCj4+Pj4gT24gRGVjIDE0LCAyMDIwLCBhdCAxMDo1MiBBTSwgUmVlY2UgTydCcnlhbiA8
cmVlY2Uub2JyeWFuQGljbG91ZC5jb20+IHdyb3RlOgo+Pj4+IAo+Pj4+IEhlbGxvLAo+Pj4+IAo+
Pj4+IEnigJltIGhhdmluZyB0cm91YmxlIGVmZmljaWVudGx5IGFjY2Vzc2luZyBvdXRwdXRzIGZy
b20gdGVybWluYWwgaW4gT3JjYS4gSSBuZWVkIGEgZnVsbHkgZnVuY3Rpb25pbmcgc2NyZWVuIHJl
YWRlciwgaXMgdGhlcmUgYW4gZWFzeSB3YXkgdG8gbmF2aWdhdGUgbGluZSBieSBsaW5lIG9mIG91
dHB1dCBmcm9tIHRlcm1pbmFsIGluIGVzcGVha3VwIG9yIG9yY2E/Cj4+Pj4gCj4+Pj4gVGhhbmsg
eW91LAo+Pj4+IAo+Pj4+IC1SZWVjZQo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+Pj4gU3BlYWt1cCBtYWlsaW5nIGxpc3QKPj4+PiBTcGVha3Vw
QGxpbnV4LXNwZWFrdXAub3JnCj4+Pj4gaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4v
bWFpbG1hbi9saXN0aW5mby9zcGVha3VwCj4+PiAKPj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBTcGVha3VwIG1haWxpbmcgbGlzdAo+Pj4gU3Bl
YWt1cEBsaW51eC1zcGVha3VwLm9yZwo+Pj4gaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1i
aW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCj4+IAo+PiAtLSAKPj4gCj4+IEphbmluYSBTYWpr
YQo+PiBodHRwczovL2xpbmtlZGluLmNvbS9pbi9qc2Fqa2EKPj4gCj4+IExpbnV4IEZvdW5kYXRp
b24gRmVsbG93Cj4+IEV4ZWN1dGl2ZSBDaGFpciwgQWNjZXNzaWJpbGl0eSBXb3JrZ3JvdXA6ICAg
IGh0dHA6Ly9hMTF5Lm9yZwo+PiAKPj4gVGhlIFdvcmxkIFdpZGUgV2ViIENvbnNvcnRpdW0gKFcz
QyksIFdlYiBBY2Nlc3NpYmlsaXR5IEluaXRpYXRpdmUgKFdBSSkKPj4gQ28tQ2hhaXIsIEFjY2Vz
c2libGUgUGxhdGZvcm0gQXJjaGl0ZWN0dXJlcyAgICBodHRwOi8vd3d3LnczLm9yZy93YWkvYXBh
Cj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
PiBTcGVha3VwIG1haWxpbmcgbGlzdAo+PiBTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCj4+IGh0
dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo+
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNw
ZWFrdXAgbWFpbGluZyBsaXN0Cj4gU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwo+IGh0dHA6Ly9s
aW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVha3VwIG1haWxpbmcg
bGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9j
Z2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
