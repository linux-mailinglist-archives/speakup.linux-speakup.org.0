Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 635C92F94B4
	for <lists+speakup@lfdr.de>; Sun, 17 Jan 2021 19:45:29 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 40611380EEC; Sun, 17 Jan 2021 13:45:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1610909124;
	bh=EbeFI580MCBSWFJcWtTYVvu96tkm/TqCrSkmxjHkOBw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=yEGqC9v40rjP6thLxSvqXxre2yPGOUMldDkDOVgPpQ+GsG+RfDOae6Vmy4txIap/A
	 3qAZGkueRnOewKRRlteBsrBYYrG2vNKq+q61Im0EOTFQrUUhZwMTWFnRYAWOqyf8Vi
	 FCPbR0Zv+fVVzMjLlpEO1iFr6twVkejqx/YKYQQI=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D12C7380F24;
	Sun, 17 Jan 2021 13:45:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1610909121;
	bh=EbeFI580MCBSWFJcWtTYVvu96tkm/TqCrSkmxjHkOBw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=H48Cr6VIGNTFYghriXXf6DCNHAVfBXwJva+m8dvab0Lpm6bzcPCUg+wvxnvk85Wil
	 BJ0RameCZ8j6WaTkKqlUZrU/mjey2v1h2+c4qFKlJ47my5iWIRjqEAYw5ikxQDXAI0
	 5jyIOJvdjIunSjPUy7IKL7Z9cRHkPX0xtaauMmjc=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 3F8E4380C00; Sun, 17 Jan 2021 13:45:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1610909121;
 bh=yxxDid+K9tW8B0pL7piHFbax0j0BS9qjuKyspXG1RWc=;
 h=Date:From:To:Subject:From;
 b=bB1TST4w800J3gGzSlsalKtUiKpENaxT1wUdH6ftt6+fZANSBzaPp/trBsxl9aL/R
 /wwgwwmeQMKGeOhBj9eZyYe6OY6ZAyrFc4rmokVeKa6Vl9Ktuqefh7A5ddI0P/wonI
 S8xU4wtPFrEgo4CsIAI2hNtpUwmkUDekq4zo/qVI=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 2853E380BC0
 for <speakup@linux-speakup.org>; Sun, 17 Jan 2021 13:45:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1610909121;
 bh=yxxDid+K9tW8B0pL7piHFbax0j0BS9qjuKyspXG1RWc=;
 h=Date:From:To:Subject:From;
 b=bB1TST4w800J3gGzSlsalKtUiKpENaxT1wUdH6ftt6+fZANSBzaPp/trBsxl9aL/R
 /wwgwwmeQMKGeOhBj9eZyYe6OY6ZAyrFc4rmokVeKa6Vl9Ktuqefh7A5ddI0P/wonI
 S8xU4wtPFrEgo4CsIAI2hNtpUwmkUDekq4zo/qVI=
Date: Sun, 17 Jan 2021 13:45:21 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: The mailing list
Message-ID: <alpine.DEB.2.23.453.2101171338580.106951@befuddled.reisers.ca>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
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

Hi folks: I believe we are in for a few days of intermittent mailing
list reliability. Our current package mailman runs through python 2.7
but python2 has been depricated and the software has been removed
twice by my upgrading packages. I guess it's time to move the list to
some other package. It does not appear there is a smooth upgrade path
to mailman3 so I need to figure out what other system to move toward.

Hopefully I won't break it to badly but at this stage I'm not quite
sure what to do with it but it's currently breaking my entire
dist-upgrade ability.

   Kirk

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
