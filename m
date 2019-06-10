Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E54713BEB5
	for <lists+speakup@lfdr.de>; Mon, 10 Jun 2019 23:33:06 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A78CB1C435D; Mon, 10 Jun 2019 17:33:05 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=slint.fr header.i=@slint.fr header.b="gTE7K6b2";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D988B1C5A66;
	Mon, 10 Jun 2019 17:31:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7D12A1C436F; Mon, 10 Jun 2019 17:31:46 -0400 (EDT)
Received: from mta02.o2spink.fr (mta02.o2spink.fr [109.234.163.215])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 164031C3813
 for <speakup@linux-speakup.org>; Mon, 10 Jun 2019 17:31:44 -0400 (EDT)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (cached,
 score=0.202, required 5, autolearn=disabled, DKIM_INVALID 0.10,
 DKIM_SIGNED 0.10, SPF_HELO_NONE 0.00, SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
 Service Provider for details
X-MailPropre-MailScanner-ID: 11E38100917.A04F7
X-MailPropre-MailScanner-Information: Please contact the ISP for more
 information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
 s=default; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
 Message-ID:Cc:Subject:From:To:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/G+/HYc7l3H+XhQwbYNZNFdb0iecdDsOYKc1fVVpgIU=; b=gTE7K6b2vsLO3yVVHlkd4EYtAw
 zxwSSimxsTQqFTAQHT1olfKjB5a/Obvc6IvAbB/vMLvf6YVEfyPJzfd+Qdma/PMWIY71lMMVgChJW
 cKuQ1nNDiWdLfScdhy9KMX14w4LzMW28IPOnQh0kuNLIwciGgbHt3+hPGWjmrpm7LnSU=;
To: slint <slint@slint.fr>
From: Didier Spaier <didier@slint.fr>
Subject: Slint update with new scripts to handle speakup and console screen
 readers
Openpgp: preference=signencrypt
Message-ID: <5157c44c-edc5-52c5-2c77-e75f745b3fc4@slint.fr>
Date: Mon, 10 Jun 2019 23:31:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - fox.o2switch.net
X-AntiAbuse: Original Domain - linux-speakup.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - slint.fr
X-Get-Message-Sender-Via: fox.o2switch.net: authenticated_id: didier@slint.fr
X-Authenticated-Sender: fox.o2switch.net: didier@slint.fr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
Cc: The Vinux Support Forum <vinux-support@googlegroups.com>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hello,

quoting the ChangeLog at:
http://slackware.uk/slint/x86_64/slint-testing/ChangeLog.txt

This batch of updates provides a new version of daisy-player, emacspeak
and new scripts: speak-with, speakup-save and speakup-restore, with
associated modifications of daemon managers rc.espeakup and
rc.speechd-up and of switch-on and switch-off. The document SlintSpeaks
has been added to the Slint documentation in the Accessibility sub-menu
of the 'slint-doc' command.

Or, just follow this link:
http://slackware.uk/slint/x86_64/slint-14.2.1/doc/Accessibility/SlintSpeaks

To update you system, as usual type as root:
slapt-get  -u
slapt-get --upgrade

This will also bring an update of Chromium provided by Eric Hameleers
if you have his package installed (the sbrepos SOURCE being enabled in
/etc/slapt-get/slaptgetrc), cf.: https://alien.slackbook.org/blog/

Have fun!

Didier 

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
