Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A2F762F22E5
	for <lists+speakup@lfdr.de>; Mon, 11 Jan 2021 23:38:22 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C1B5B380FA6; Mon, 11 Jan 2021 17:38:21 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D853D381031;
	Mon, 11 Jan 2021 17:38:18 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7AB9F380EEC; Mon, 11 Jan 2021 17:38:18 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 592FD380964
 for <speakup@linux-speakup.org>; Mon, 11 Jan 2021 17:38:18 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 40E21673;
 Mon, 11 Jan 2021 23:37:47 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rDE6WH3vxgl1; Mon, 11 Jan 2021 23:37:46 +0100 (CET)
Received: from begin (unknown [IPv6:2a01:cb19:956:1b00:de41:a9ff:fe47:ec49])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 58E3C666;
 Mon, 11 Jan 2021 23:37:41 +0100 (CET)
Received: from samy by begin with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kz5og-002vQ5-KC; Mon, 11 Jan 2021 23:37:38 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/4] speakup update
Date: Mon, 11 Jan 2021 23:37:33 +0100
Message-Id: <20210111223737.697336-1-samuel.thibault@ens-lyon.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Spamd-Bar: +++++
X-Spam-Level: *****
X-Rspamd-Server: hera
Authentication-Results: hera.aquilenet.fr
X-Rspamd-Queue-Id: 40E21673
X-Spamd-Result: default: False [5.00 / 15.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; FROM_HAS_DN(0.00)[];
 RCPT_COUNT_THREE(0.00)[4]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; MIME_GOOD(-0.10)[text/plain];
 R_MISSING_CHARSET(2.50)[]; BROKEN_CONTENT_TYPE(1.50)[];
 RCVD_COUNT_THREE(0.00)[3]; MID_CONTAINS_FROM(1.00)[];
 RCVD_NO_TLS_LAST(0.10)[]; FROM_EQ_ENVFROM(0.00)[]
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
Cc: speakup@linux-speakup.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Samuel Thibault (4):
  This merely adds the missing synth parameter to all io functions.
  speakup: Reference synth from tty and tty from synth
  speakup: Simplify spk_ttyio_out error handling.
  speakup: Add documentation on changing the speakup messages language

 Documentation/admin-guide/spkguide.txt        |  48 ++++-
 drivers/accessibility/speakup/serialio.c      |  22 +--
 .../accessibility/speakup/speakup_acntpc.c    |   4 +-
 .../accessibility/speakup/speakup_apollo.c    |   4 +-
 .../accessibility/speakup/speakup_audptr.c    |   8 +-
 .../accessibility/speakup/speakup_decext.c    |   2 +-
 drivers/accessibility/speakup/speakup_decpc.c |   4 +-
 .../accessibility/speakup/speakup_dectlk.c    |   2 +-
 drivers/accessibility/speakup/speakup_dtlk.c  |   4 +-
 drivers/accessibility/speakup/speakup_keypc.c |   4 +-
 drivers/accessibility/speakup/speakup_ltlk.c  |   2 +-
 drivers/accessibility/speakup/speakup_soft.c  |   4 +-
 .../accessibility/speakup/speakup_spkout.c    |   4 +-
 drivers/accessibility/speakup/spk_priv.h      |   4 +-
 drivers/accessibility/speakup/spk_ttyio.c     | 185 ++++++++----------
 drivers/accessibility/speakup/spk_types.h     |  14 +-
 drivers/accessibility/speakup/synth.c         |   6 +-
 17 files changed, 170 insertions(+), 151 deletions(-)

-- 
2.20.1

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
