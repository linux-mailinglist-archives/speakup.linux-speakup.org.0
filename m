Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 0B74D2A279B
	for <lists+speakup@lfdr.de>; Mon,  2 Nov 2020 10:59:53 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9E28B380F65; Mon,  2 Nov 2020 04:59:52 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B684A380F38;
	Mon,  2 Nov 2020 04:59:50 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 581D3380F27; Mon,  2 Nov 2020 04:59:49 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 1783D380F1A
 for <speakup@linux-speakup.org>; Mon,  2 Nov 2020 04:59:49 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 32C31B32;
 Mon,  2 Nov 2020 10:59:48 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1LKR1ss1F6nn; Mon,  2 Nov 2020 10:59:47 +0100 (CET)
Received: from function.home (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 12F7D29E;
 Mon,  2 Nov 2020 10:59:47 +0100 (CET)
Received: from samy by function.home with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kZWcr-00COzy-Lr; Mon, 02 Nov 2020 10:59:45 +0100
Date: Mon, 2 Nov 2020 10:59:45 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH] speakup: document the usage of enum values
Message-ID: <20201102095945.ap4pdff2dn47hijh@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 speakup@linux-speakup.org
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: speakup@linux-speakup.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

The cursor tracking modes enum, the edge enum, and the read_all commands
enum should be used as such in the source code, to make it more readable
and make gcc catch missing values in switches.

Also, some values of enums are coupled with others, we at least need to
document these.

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

---
 drivers/accessibility/speakup/i18n.h |    6 +++
 drivers/accessibility/speakup/main.c |   64 ++++++++++++++++++-----------------
 2 files changed, 39 insertions(+), 31 deletions(-)

--- a/drivers/accessibility/speakup/i18n.h
+++ b/drivers/accessibility/speakup/i18n.h
@@ -23,12 +23,15 @@ enum msg_index_t {
 	MSG_OFF = MSG_STATUS_START,
 	MSG_ON,
 	MSG_NO_WINDOW,
+
+	/* These must be ordered the same as enum cursor_track */
 	MSG_CURSOR_MSGS_START,
 	MSG_CURSORING_OFF = MSG_CURSOR_MSGS_START,
 	MSG_CURSORING_ON,
 	MSG_HIGHLIGHT_TRACKING,
 	MSG_READ_WINDOW,
 	MSG_READ_ALL,
+
 	MSG_EDIT_DONE,
 	MSG_WINDOW_ALREADY_SET,
 	MSG_END_BEFORE_START,
@@ -41,11 +44,14 @@ enum msg_index_t {
 	MSG_LEAVING_HELP,
 	MSG_IS_UNASSIGNED,
 	MSG_HELP_INFO,
+
+	/* These must be ordered the same as enum edge */
 	MSG_EDGE_MSGS_START,
 	MSG_EDGE_TOP  = MSG_EDGE_MSGS_START,
 	MSG_EDGE_BOTTOM,
 	MSG_EDGE_LEFT,
 	MSG_EDGE_RIGHT,
+
 	MSG_NUMBER,
 	MSG_SPACE,
 	MSG_START, /* A little confusing, given our convention. */
--- a/drivers/accessibility/speakup/main.c
+++ b/drivers/accessibility/speakup/main.c
@@ -90,19 +90,18 @@ const u_char spk_key_defaults[] = {
 #include "speakupmap.h"
 };
 
-/* Speakup Cursor Track Variables */
-static int cursor_track = 1, prev_cursor_track = 1;
-
-/* cursor track modes, must be ordered same as cursor_msgs */
-enum {
+/* cursor track modes, must be ordered same as cursor_msgs in enum msg_index_t */
+enum cursor_track {
 	CT_Off = 0,
 	CT_On,
 	CT_Highlight,
 	CT_Window,
-	CT_Max
+	CT_Max,
+	read_all_mode = CT_Max,
 };
 
-#define read_all_mode CT_Max
+/* Speakup Cursor Track Variables */
+static enum cursor_track cursor_track = 1, prev_cursor_track = 1;
 
 static struct tty_struct *tty;
 
@@ -405,15 +404,17 @@ static void say_attributes(struct vc_dat
 	synth_printf("%s\n", spk_msg_get(MSG_COLORS_START + bg));
 }
 
-enum {
-	edge_top = 1,
+/* must be ordered same as edge_msgs in enum msg_index_t */
+enum edge {
+	edge_none = 0,
+	edge_top,
 	edge_bottom,
 	edge_left,
 	edge_right,
 	edge_quiet
 };
 
-static void announce_edge(struct vc_data *vc, int msg_id)
+static void announce_edge(struct vc_data *vc, enum edge msg_id)
 {
 	if (spk_bleeps & 1)
 		bleep(spk_y);
@@ -608,7 +609,8 @@ static void say_prev_word(struct vc_data
 {
 	u_char temp;
 	u16 ch;
-	u_short edge_said = 0, last_state = 0, state = 0;
+	enum edge edge_said = edge_none;
+	u_short last_state = 0, state = 0;
 
 	spk_parked |= 0x01;
 
@@ -653,7 +655,7 @@ static void say_prev_word(struct vc_data
 	}
 	if (spk_x == 0 && edge_said == edge_quiet)
 		edge_said = edge_left;
-	if (edge_said > 0 && edge_said < edge_quiet)
+	if (edge_said > edge_none && edge_said < edge_quiet)
 		announce_edge(vc, edge_said);
 	say_word(vc);
 }
@@ -662,7 +664,8 @@ static void say_next_word(struct vc_data
 {
 	u_char temp;
 	u16 ch;
-	u_short edge_said = 0, last_state = 2, state = 0;
+	enum edge edge_said = edge_none;
+	u_short last_state = 2, state = 0;
 
 	spk_parked |= 0x01;
 	if (spk_x == vc->vc_cols - 1 && spk_y == vc->vc_rows - 1) {
@@ -694,7 +697,7 @@ static void say_next_word(struct vc_data
 		spk_pos += 2;
 		last_state = state;
 	}
-	if (edge_said > 0)
+	if (edge_said > edge_none)
 		announce_edge(vc, edge_said);
 	say_word(vc);
 }
@@ -1366,31 +1369,30 @@ static void speakup_deallocate(struct vc
 	speakup_console[vc_num] = NULL;
 }
 
+enum read_all_command {
+	RA_NEXT_SENT = KVAL(K_DOWN)+1,
+	RA_PREV_LINE = KVAL(K_LEFT)+1,
+	RA_NEXT_LINE = KVAL(K_RIGHT)+1,
+	RA_PREV_SENT = KVAL(K_UP)+1,
+	RA_DOWN_ARROW,
+	RA_TIMER,
+	RA_FIND_NEXT_SENT,
+	RA_FIND_PREV_SENT,
+};
+
 static u_char is_cursor;
 static u_long old_cursor_pos, old_cursor_x, old_cursor_y;
 static int cursor_con;
 
 static void reset_highlight_buffers(struct vc_data *);
 
-static int read_all_key;
+static enum read_all_command read_all_key;
 
 static int in_keyboard_notifier;
 
-static void start_read_all_timer(struct vc_data *vc, int command);
-
-enum {
-	RA_NOTHING,
-	RA_NEXT_SENT,
-	RA_PREV_LINE,
-	RA_NEXT_LINE,
-	RA_PREV_SENT,
-	RA_DOWN_ARROW,
-	RA_TIMER,
-	RA_FIND_NEXT_SENT,
-	RA_FIND_PREV_SENT,
-};
+static void start_read_all_timer(struct vc_data *vc, enum read_all_command command);
 
-static void kbd_fakekey2(struct vc_data *vc, int command)
+static void kbd_fakekey2(struct vc_data *vc, enum read_all_command command)
 {
 	del_timer(&cursor_timer);
 	speakup_fake_down_arrow();
@@ -1427,7 +1429,7 @@ static void stop_read_all(struct vc_data
 	spk_do_flush();
 }
 
-static void start_read_all_timer(struct vc_data *vc, int command)
+static void start_read_all_timer(struct vc_data *vc, enum read_all_command command)
 {
 	struct var_t *cursor_timeout;
 
@@ -1438,7 +1440,7 @@ static void start_read_all_timer(struct
 		  jiffies + msecs_to_jiffies(cursor_timeout->u.n.value));
 }
 
-static void handle_cursor_read_all(struct vc_data *vc, int command)
+static void handle_cursor_read_all(struct vc_data *vc, enum read_all_command command)
 {
 	int indcount, sentcount, rv, sn;
 
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
