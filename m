Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 630D82D9F94
	for <lists+speakup@lfdr.de>; Mon, 14 Dec 2020 19:52:18 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EA448380F87; Mon, 14 Dec 2020 13:52:17 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=icloud.com header.i=@icloud.com header.a=rsa-sha256 header.s=1a1hai header.b=0muL75PU;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1A584380F40;
	Mon, 14 Dec 2020 13:52:17 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 6B038380BF1; Mon, 14 Dec 2020 13:52:15 -0500 (EST)
Received: from st43p00im-ztfb10061701.me.com (st43p00im-ztfb10061701.me.com
 [17.58.63.172])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 42BEC380967
 for <speakup@linux-speakup.org>; Mon, 14 Dec 2020 13:52:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1607971934;
 bh=4u41FU551bxCtKu4yOhzhsbB1042LsagfOcjsGtU8Go=;
 h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To;
 b=0muL75PUQ5EnZbPW9FeFEyjIZtRPSCZIbCpfRLFMLO4Po/F/jAeCLpxeYTBgc7Cp1
 9jVe1AeBbdKllxs6TcbUgQKJSz8NIk5VOr+cfV5oRVTaNWmucKkfqsFY7pt5K2CtO5
 jeJLcmlnKQAPOIepCe1XMCq8NK8mDdE4uTRZn+qTP/TnjgOo59Crmc9roUI0O76B4O
 E2v41POqX+k8DPx7HS0t+m24ftKFPgzVcHvb4yThnh0nQCk5Q/WjbHQ/bPunwTqQUO
 jTc/TEMwV7dMbjxb2xr1M3TwxfQFDBiyabk1H004W/dXhRK5nm3nbDNet5C0uOmBp4
 sCHshV+dtgXfQ==
Received: from [10.133.94.133] (mobile-166-173-248-104.mycingular.net
 [166.173.248.104])
 by st43p00im-ztfb10061701.me.com (Postfix) with ESMTPSA id A2FC9AC0638
 for <speakup@linux-speakup.org>; Mon, 14 Dec 2020 18:52:13 +0000 (UTC)
From: Reece O'Bryan <reece.obryan@icloud.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 14 Dec 2020 13:52:08 -0500
Subject: Efficiently using terminal with screenreader
Message-Id: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
To: speakup@linux-speakup.org
X-Mailer: iPhone Mail (16C101)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-14_10:2020-12-11,
 2020-12-14 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=685 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2012140124
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

SGVsbG8sCgpJ4oCZbSBoYXZpbmcgdHJvdWJsZSBlZmZpY2llbnRseSBhY2Nlc3Npbmcgb3V0cHV0
cyBmcm9tIHRlcm1pbmFsIGluIE9yY2EuIEkgbmVlZCBhIGZ1bGx5IGZ1bmN0aW9uaW5nIHNjcmVl
biByZWFkZXIsIGlzIHRoZXJlIGFuIGVhc3kgd2F5IHRvIG5hdmlnYXRlIGxpbmUgYnkgbGluZSBv
ZiBvdXRwdXQgZnJvbSB0ZXJtaW5hbCBpbiBlc3BlYWt1cCBvciBvcmNhPwoKVGhhbmsgeW91LAoK
LVJlZWNlIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51
eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
