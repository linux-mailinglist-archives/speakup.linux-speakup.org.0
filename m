Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 008132DD200
	for <lists+speakup@lfdr.de>; Thu, 17 Dec 2020 14:17:28 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2150B380F87; Thu, 17 Dec 2020 08:17:26 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=icloud.com header.i=@icloud.com header.a=rsa-sha256 header.s=1a1hai header.b=m9UjCaBY;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9418C380F35;
	Thu, 17 Dec 2020 08:17:25 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id D1FA7380B2F; Thu, 17 Dec 2020 08:17:24 -0500 (EST)
Received: from st43p00im-ztbu10063601.me.com (st43p00im-ztbu10063601.me.com
 [17.58.63.174])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 99E27380967
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 08:17:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1608211042;
 bh=TTkISPZrAZdiad6IXeYBu2hdIQwgOd4iRLQU8eQGOZU=;
 h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To;
 b=m9UjCaBYvxWqQXxGHHsijxfR8SGXZYVtBcSi+Zo+0rPso48CAy1E2c/SWIVr0SzLq
 sddIXY5+emiFa7YRoFcg34i1tT2oSExT3pb5i8Mi9sMwYXPZpFrZbvlcsQMbARJSus
 SyrZxeL0qWREdTu5zhr9WLKMOpTkrdAVjtXeDDFmocQ4DNpmZbttsED3csvlgCgASS
 45zv83SmbkdlJ6leNawzJHArsnev/JIyob7/kSzyc9nSR4jcJKot8FiCUXA9h1aXyR
 FpezuPFbSkXWkflCj9F9q+K0U/L/91I1xgb7L6SBR7DpHE31hsIn8Dw6cMTrDbnQjA
 Y5ijxwm9ZQBNA==
Received: from [192.168.1.77] (cpe-69-23-57-146.natcky.res.rr.com
 [69.23.57.146])
 by st43p00im-ztbu10063601.me.com (Postfix) with ESMTPSA id CB1D8700504
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 13:17:22 +0000 (UTC)
From: Reece O'Bryan <reece.obryan@icloud.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 17 Dec 2020 08:17:19 -0500
Subject: Re: Efficiently using terminal with screenreader
Message-Id: <6A331932-262C-4E81-A09C-EEE198825771@icloud.com>
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
 mlxlogscore=963 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2012170093
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

PiBJcyB0aGVyZSBhIHJlYXNvbiB5b3Ugd2VudCB3aXRoIGVzcGVhayBhbmQgbm90IGVzcGVhay1u
Zz8KPiAKPiBjYW4geW91IGVsYWJvcmF0ZSwgSeKAmW0gbm90IHN1cmUgd2hhdCB5b3UgbWVhbiB3
aGVuIHlvdSBzYXkgT3JjYSB3aXRoIFNwZWVjaC1EaXNwYXRjaGVyPwoKPiAgCgpUaGFuayB5b3Us
CgotUmVlY2UgCgpPbiBEZWMgMTYsIDIwMjAsIGF0IDQ6MzcgUE0sIEthcmVuIExld2VsbGVuIDxr
bGV3ZWxsZW5Ac2hlbGx3b3JsZC5uZXQ+IHdyb3RlOgoKPj4gZXNwZWFrLCBub3QgZXNwZWFrLW5n
Lgo+PiAKPj4gT3JjYSB3aXRoIFNwZWVjaC1EaXNwYXRjaGVyCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFrdXBA
bGludXgtc3BlYWt1cC5vcmcKaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1h
bi9saXN0aW5mby9zcGVha3VwCg==
