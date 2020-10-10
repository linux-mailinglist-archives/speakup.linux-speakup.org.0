Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id E8FC628A13A
	for <lists+speakup@lfdr.de>; Sat, 10 Oct 2020 21:36:43 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8887E380B9D; Sat, 10 Oct 2020 15:36:43 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 66363380B3F;
	Sat, 10 Oct 2020 15:36:41 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id DB6D4380B2F; Sat, 10 Oct 2020 15:36:40 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B27F0380B2C
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 15:36:40 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 8916B573
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 21:36:39 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j5s9I3hkRSO0 for <speakup@linux-speakup.org>;
 Sat, 10 Oct 2020 21:36:38 +0200 (CEST)
Received: from function (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr
 [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 25792AD3
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 21:36:38 +0200 (CEST)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1kRKfV-002PmT-1Q
 for speakup@linux-speakup.org; Sat, 10 Oct 2020 21:36:37 +0200
Date: Sat, 10 Oct 2020 21:36:36 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: So, where'd the volume controls get to?
Message-ID: <20201010193636.35lws35s7dyliyto@function>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="4q47jptzcbtyx7nx"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
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


--4q47jptzcbtyx7nx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

Kirk Reiser, le sam. 10 oct. 2020 14:56:38 -0400, a ecrit:
> So, if you didn't move the controls who did? Curious minds and all
> that.

It seems that it's the introduction of the inflection variable that
changed the values of the var_id_t enum, and these happen to be used by
the default speakupmap.h, thus shifting all meanings...

Would you be able to try the attached patch?

Samuel

--4q47jptzcbtyx7nx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

commit d9ef20b2061908f968d21579efd5b28d668f528a
Author: Samuel Thibault <samuel.thibault@ens-lyon.org>
Date:   Sat Oct 10 21:30:45 2020 +0200

    speakup: Fix keymap
    
    d97a9d7aea04 ("staging/speakup: Add inflection synth parameter") introduced
    a new "inflection" speakup parameter next to "pitch", but the values of the
    var_id_t enum are actually used by the keymap tables so we must not renumber
    them. The effect was that notably the volume control shortcut (speakup-1 or
    2) was then changing the inflection.
    
    This moves the INFLECTION value at the end of the var_id_t enum to fix back
    the enum values. This also adds a warning about it.
    
    Fixes: d97a9d7aea04 ("staging/speakup: Add inflection synth parameter")
    Reported-by: Kirk Reiser <kirk@reisers.ca>
    Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

diff --git a/drivers/accessibility/speakup/spk_types.h b/drivers/accessibility/speakup/spk_types.h
index 7398f1196e10..37163118485a 100644
--- a/drivers/accessibility/speakup/spk_types.h
+++ b/drivers/accessibility/speakup/spk_types.h
@@ -32,6 +32,8 @@ enum {
 	E_NEW_DEFAULT,
 };
 
+/* XXX: add new members after, speakupmap.h depends on the values of the enum
+ * starting from SPELL_DELAY (see inc_dec_var) */
 enum var_id_t {
 	VERSION = 0, SYNTH, SILENT, SYNTH_DIRECT,
 	KEYMAP, CHARS,
@@ -42,9 +44,9 @@ enum var_id_t {
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
 

--4q47jptzcbtyx7nx
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

--4q47jptzcbtyx7nx--
