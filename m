Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 9DAAF183EBC
	for <lists+speakup@lfdr.de>; Fri, 13 Mar 2020 02:41:44 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 03DFC42804E5; Thu, 12 Mar 2020 21:41:43 -0400 (EDT)
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 6145542804D2
	for <lists+speakup@lfdr.de>; Thu, 12 Mar 2020 21:41:40 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2118D1C7252; Thu, 12 Mar 2020 21:41:40 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E6A541C72FC;
	Thu, 12 Mar 2020 21:30:41 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 43DFE1C2B56; Tue,  3 Mar 2020 08:12:00 -0500 (EST)
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 47EC21C0D8E
 for <speakup@linux-speakup.org>; Tue,  3 Mar 2020 08:11:55 -0500 (EST)
X-IronPort-AV: E=Sophos;i="5.70,511,1574118000"; d="scan'208";a="341098735"
Received: from nat-inria-bordeaux-52-gw-01-bso.bordeaux.inria.fr (HELO
 function) ([194.199.1.52])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/AES256-GCM-SHA384;
 03 Mar 2020 14:11:29 +0100
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1j97Ka-000dY2-UE; Tue, 03 Mar 2020 14:11:28 +0100
Date: Tue, 3 Mar 2020 14:11:28 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>, 
 Janina Sajka <janina@rednote.net>,
 Alexandr Epaneshnikov <aarnaarn2@gmail.com>,
 Gregory Nowak <greg@gregn.net>, deedra waters <deedra@the-brannons.com>
Subject: Re: speakup on latest kernels
Message-ID: <20200303131128.7d4uitw7feevimoj@function>
References: <77f47396-554f-3d0a-fd9d-fc760ecb2dfe@the-brannons.com>
 <20200130053303.GA4319@gregn.net>
 <9ca2e37d-f293-9b7b-80a2-177cbccfb08e@gmail.com>
 <alpine.NEB.2.21.2001301518500.16863@panix1.panix.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="fdcvsbuxsplbckah"
Content-Disposition: inline
In-Reply-To: <alpine.NEB.2.21.2001301518500.16863@panix1.panix.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
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
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4


--fdcvsbuxsplbckah
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

For people who have had crashes with latest kernels and can rebuild
their own kernel, could you try to apply the attached patch? It seems to
be fixing things and for sure would trigger crashes when doing get_word
while speakup is on a space. The issue has been there for at least 10
years, it's a bit crazy that only now we have crashes with it :)

Samuel

--fdcvsbuxsplbckah
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

commit 72c8cfdd58ad6a39002f4ae93752ee28d567b69f
Author: Samuel Thibault <samuel.thibault@ens-lyon.org>
Date:   Tue Mar 3 01:24:24 2020 +0100

    speakup: fix get_word non-space look-ahead
    
    get_char was erroneously given the address of the pointer to the text
    instead of the address of the text, thus leading to random crashes when
    the user requests speaking a word while the current position is on a space
    character and say_word_ctl is not enabled.
    
    Cc: stable@vger.kernel.org
    Reported-on: https://github.com/bytefire/speakup/issues/1
    Reported-by: Kirk Reiser <kirk@reisers.ca>
    Reported-by: Janina Sajka <janina@rednote.net>
    Reported-by: Alexandr Epaneshnikov <aarnaarn2@gmail.com>
    Reported-by: Gregory Nowak <greg@gregn.net>
    Reported-by: deedra waters <deedra@the-brannons.com>
    Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
    TODO: Tested-by: Alexandr Epaneshnikov <aarnaarn2@gmail.com>

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 488f2539aa9a..81ecfd1a200d 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -561,7 +561,7 @@ static u_long get_word(struct vc_data *vc)
 		return 0;
 	} else if (tmpx < vc->vc_cols - 2 &&
 		   (ch == SPACE || ch == 0 || (ch < 0x100 && IS_WDLM(ch))) &&
-		   get_char(vc, (u_short *)&tmp_pos + 1, &temp) > SPACE) {
+		   get_char(vc, (u_short *)tmp_pos + 1, &temp) > SPACE) {
 		tmp_pos += 2;
 		tmpx++;
 	} else {

--fdcvsbuxsplbckah
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

--fdcvsbuxsplbckah--
