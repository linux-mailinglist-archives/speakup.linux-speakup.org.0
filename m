Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8E8BB2F22E2
	for <lists+speakup@lfdr.de>; Mon, 11 Jan 2021 23:37:52 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9417F380FB6; Mon, 11 Jan 2021 17:37:50 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A5463380F9F;
	Mon, 11 Jan 2021 17:37:48 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 5E58D380964; Mon, 11 Jan 2021 17:37:48 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 9D5CB380926
 for <speakup@linux-speakup.org>; Mon, 11 Jan 2021 17:37:47 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id EA0026CB;
 Mon, 11 Jan 2021 23:37:43 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xyErmMPk6uo5; Mon, 11 Jan 2021 23:37:41 +0100 (CET)
Received: from begin (unknown [IPv6:2a01:cb19:956:1b00:de41:a9ff:fe47:ec49])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id EC0E2162;
 Mon, 11 Jan 2021 23:37:40 +0100 (CET)
Received: from samy by begin with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kz5og-002vQD-OE; Mon, 11 Jan 2021 23:37:38 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/4] speakup: Add documentation on changing the speakup
 messages language
Date: Mon, 11 Jan 2021 23:37:37 +0100
Message-Id: <20210111223737.697336-5-samuel.thibault@ens-lyon.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210111223737.697336-1-samuel.thibault@ens-lyon.org>
References: <20210111223737.697336-1-samuel.thibault@ens-lyon.org>
MIME-Version: 1.0
X-Spamd-Bar: +++++
X-Spam-Level: *****
X-Rspamd-Server: hera
Authentication-Results: hera.aquilenet.fr
X-Rspamd-Queue-Id: EA0026CB
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

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
---
 Documentation/admin-guide/spkguide.txt | 48 ++++++++++++++++++++++++--
 1 file changed, 46 insertions(+), 2 deletions(-)

diff --git a/Documentation/admin-guide/spkguide.txt b/Documentation/admin-guide/spkguide.txt
index 5ff6a0f..96d4c87 100644
--- a/Documentation/admin-guide/spkguide.txt
+++ b/Documentation/admin-guide/spkguide.txt
@@ -1033,7 +1033,9 @@ speakup + keypad 3, you would hear:
 The speakup key is depressed, so the name of the key state is speakup.
 This part of the message comes from the states collection.
 
-14.2.  Loading Your Own Messages
+14.2.  Changing language
+
+14.2.1. Loading Your Own Messages
 
 The files under the i18n subdirectory all follow the same format.
 They consist of lines, with one message per line.
@@ -1066,8 +1068,50 @@ echo '1 azul' > /speakup/i18n/colors
 The next time that Speakup says message 1 from the colors group, it will
 say "azul", rather than "blue."
 
+14.2.2. Choose a language
+
 In the future, translations into various languages will be made available,
-and most users will just load the files necessary for their language.
+and most users will just load the files necessary for their language. So far,
+only French language is available beyond native Canadian English language.
+
+French is only available after you are logged in.
+
+Canadian English is the default language. To toogle another language,
+download the source of Speakup and untar it in your home directory. The
+following command should let you do this:
+
+tar xvjf speakup-<version>.tar.bz2
+
+where <version> is the version number of the application.
+
+Next, change to the newly created directory, then into the tools/ directory, and
+run the script speakup_setlocale. You are asked the language that you want to
+use. Type the number associated to your language (e.g. fr for French) then press
+Enter. Needed files are copied in the i18n directory.
+
+Note: the speakupconf must be installed on your system so that settings are saved.
+Otherwise, you will have an error: your language will be loaded but you will
+have to run the script again every time Speakup restarts.
+See section 16.1. for information about speakupconf.
+
+You will have to repeat these steps for any change of locale, i.e. if you wish
+change the speakup's language or charset (iso-8859-15 ou UTF-8).
+
+If you wish store the settings, note that at your next login, you will need to
+do:
+
+speakup load
+
+Alternatively, you can add the above line to your file
+~/.bashrc or ~/.bash_profile.
+
+If your system administrator ran himself the script, all the users will be able
+to change from English to the language choosed by root and do directly
+speakupconf load (or add this to the ~/.bashrc or
+~/.bash_profile file). If there are several languages to handle, the
+administrator (or every user) will have to run the first steps until speakupconf
+save, choosing the appropriate language, in every user's home directory. Every
+user will then be able to do speakupconf load, Speakup will load his own settings.
 
 14.3.  No Support for Non-Western-European Languages
 
-- 
2.20.1

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
