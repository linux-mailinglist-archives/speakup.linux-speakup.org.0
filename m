Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 942222A4D2E
	for <lists+speakup@lfdr.de>; Tue,  3 Nov 2020 18:38:07 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3238C380F58; Tue,  3 Nov 2020 12:38:07 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 130D5380F3A;
	Tue,  3 Nov 2020 12:38:05 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 2BFE9380F11; Tue,  3 Nov 2020 12:38:04 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id E723D380EEC
 for <speakup@linux-speakup.org>; Tue,  3 Nov 2020 12:38:03 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 4A14320A
 for <speakup@linux-speakup.org>; Tue,  3 Nov 2020 18:38:01 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4BU-GCDo_YYy for <speakup@linux-speakup.org>;
 Tue,  3 Nov 2020 18:38:00 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr
 (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 5BF33BB3
 for <speakup@linux-speakup.org>; Tue,  3 Nov 2020 18:38:00 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1ka0Fr-00Gc4B-C1
 for speakup@linux-speakup.org; Tue, 03 Nov 2020 18:37:59 +0100
Date: Tue, 3 Nov 2020 18:37:59 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Cut-and-Paste is Working Again
Message-ID: <20201103173759.ikx4uxpsf72v47oq@function>
References: <0bf28e-3c70-7e4a-e543-daadd91e28d6@hubert-humphrey.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vorqlslzxhg3czsb"
Content-Disposition: inline
In-Reply-To: <0bf28e-3c70-7e4a-e543-daadd91e28d6@hubert-humphrey.com>
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


--vorqlslzxhg3czsb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Chime Hart, le mar. 03 nov. 2020 09:35:25 -0800, a ecrit:
> Still, where the volume settings are in the pannel, it says
> "inflection"

You can use the attached patch to fix that (to be included for Linux
5.10 and backported to 5.8 and 5.9)

Samuel

--vorqlslzxhg3czsb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch


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



--vorqlslzxhg3czsb
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

--vorqlslzxhg3czsb--
