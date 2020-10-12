Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 0F54928BD3C
	for <lists+speakup@lfdr.de>; Mon, 12 Oct 2020 18:06:57 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5C60C380BE4; Mon, 12 Oct 2020 12:06:54 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 09BFD380BD4;
	Mon, 12 Oct 2020 12:06:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 86C73380BB6; Mon, 12 Oct 2020 12:06:53 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 4E568380BB3
 for <speakup@linux-speakup.org>; Mon, 12 Oct 2020 12:06:53 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 344A34DF;
 Mon, 12 Oct 2020 18:06:49 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id swlUKubGrYvK; Mon, 12 Oct 2020 18:06:48 +0200 (CEST)
Received: from function.home (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 3ADEE79;
 Mon, 12 Oct 2020 18:06:48 +0200 (CEST)
Received: from samy by function.home with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kS0LX-007yjf-0N; Mon, 12 Oct 2020 18:06:47 +0200
Date: Mon, 12 Oct 2020 18:06:46 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH] speakup: Fix var_id_t values and thus keymap
Message-ID: <20201012160646.qmdo4eqtj24hpch4@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 speakup@linux-speakup.org
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: speakup@linux-speakup.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

commit d97a9d7aea04 ("staging/speakup: Add inflection synth parameter")
introduced a new "inflection" speakup parameter next to "pitch", but
the values of the var_id_t enum are actually used by the keymap tables
so we must not renumber them. The effect was that notably the volume
control shortcut (speakup-1 or 2) was actually changing the inflection.

This moves the INFLECTION value at the end of the var_id_t enum to
fix back the enum values. This also adds a warning about it.

Cc: stable@vger.kernel.org
Reported-by: Kirk Reiser <kirk@reisers.ca>
Reported-by: Gregory Nowak <greg@gregn.net>
Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
Tested-by: Gregory Nowak <greg@gregn.net>
Fixes: d97a9d7aea04 ("staging/speakup: Add inflection synth parameter")
---
 drivers/accessibility/speakup/spk_types.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/accessibility/speakup/spk_types.h b/drivers/accessibility/speakup/spk_types.h
index 7398f1196e10..91fca3033a45 100644
--- a/drivers/accessibility/speakup/spk_types.h
+++ b/drivers/accessibility/speakup/spk_types.h
@@ -32,6 +32,10 @@ enum {
 	E_NEW_DEFAULT,
 };
 
+/*
+ * Note: add new members at the end, speakupmap.h depends on the values of the
+ * enum starting from SPELL_DELAY (see inc_dec_var)
+ */
 enum var_id_t {
 	VERSION = 0, SYNTH, SILENT, SYNTH_DIRECT,
 	KEYMAP, CHARS,
@@ -42,9 +46,9 @@ enum var_id_t {
 	SAY_CONTROL, SAY_WORD_CTL, NO_INTERRUPT, KEY_ECHO,
 	SPELL_DELAY, PUNC_LEVEL, READING_PUNC,
 	ATTRIB_BLEEP, BLEEPS,
-	RATE, PITCH, INFLECTION, VOL, TONE, PUNCT, VOICE, FREQUENCY, LANG,
+	RATE, PITCH, VOL, TONE, PUNCT, VOICE, FREQUENCY, LANG,
 	DIRECT, PAUSE,
-	CAPS_START, CAPS_STOP, CHARTAB,
+	CAPS_START, CAPS_STOP, CHARTAB, INFLECTION,
 	MAXVARS
 };
 
-- 
2.20.1

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
