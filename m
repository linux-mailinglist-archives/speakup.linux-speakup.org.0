Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 22691B6463
	for <lists+speakup@lfdr.de>; Wed, 18 Sep 2019 15:30:02 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 65A721C43BD; Wed, 18 Sep 2019 09:30:01 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=slint.fr header.i=@slint.fr header.b="FAtcBz+M";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A892F1C4488;
	Wed, 18 Sep 2019 09:28:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C91C71C43BD; Wed, 18 Sep 2019 09:28:11 -0400 (EDT)
Received: from captain.jabatus.com (captain.jabatus.com [109.234.166.18])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 18D9B1C3247
 for <speakup@linux-speakup.org>; Wed, 18 Sep 2019 09:28:10 -0400 (EDT)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
 score=0.002, required 5, autolearn=disabled, SPF_HELO_NONE 0.00,
 SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
 Service Provider for details
X-MailPropre-MailScanner-ID: 4C44D100F6E.AF9C2
X-MailPropre-MailScanner-Information: Please contact the ISP for more
 information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
 s=default; h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:To:
 References:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m6T6YT+vyknHESr8sVliJbtNm/h5H+dR3iPNl9hMYNY=; b=FAtcBz+M7zDyOfiQEYq4JYlZfx
 qDQzIc746+14bUsmtx0cQrbcYHH/vSdI2UKG9YK8Q6B9UaF3fYfKAZIhDuIMGe3yu73OHDeiONhL9
 uybf2GtsY68wLw7g8o6sCQCBH2j3png7mwnBe38NO6R/08Wkj+mX+NWiw1pAslA4cuoc=;
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
References: <bb82127a-7ceb-865c-491e-72fd8f8dbb9e@slint.fr>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: Didier Spaier <didier@slint.fr>
X-Forwarded-Message-Id: <bb82127a-7ceb-865c-491e-72fd8f8dbb9e@slint.fr>
Message-ID: <0503c26b-4818-66e8-bc3f-8878c5b18222@slint.fr>
Date: Wed, 18 Sep 2019 15:28:05 +0200
MIME-Version: 1.0
In-Reply-To: <bb82127a-7ceb-865c-491e-72fd8f8dbb9e@slint.fr>
Content-Type: multipart/mixed; boundary="------------B0F6947FE72D7FBEA2ACF05F"
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
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

This is a multi-part message in MIME format.
--------------B0F6947FE72D7FBEA2ACF05F
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

> I put in the tabs after "Description:" and did the best I could to fix
> the alignment, and to find and get rid of the white space. If the
> alignment is still off, or if there is still white space I missed,
> could someone else please correct that? Thanks.
> 
> Greg

Trailing white spaces removed in attachment.
Alignment LGTM.

Best,

Didier



--------------B0F6947FE72D7FBEA2ACF05F
Content-Type: text/plain; charset=UTF-8;
 name="sysfs-driver-speakup.new"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="sysfs-driver-speakup.new"

What:		/sys/accessibility/speakup/attrib_bleep
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Beeps the PC speaker when there is an attribute change such as
		foreground or background color when using speakup review
		commands. One = on, zero = off.
What:		/sys/accessibility/speakup/bell_pos
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This works much like a typewriter bell. If for example 72 is
		echoed to bell_pos, it will beep the PC speaker when typing on
		a line past character 72.
What:		/sys/accessibility/speakup/bleeps
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This controls whether one hears beeps through the PC speaker
		when using speakup's review commands.
		TODO: what values does it accept?
What:		/sys/accessibility/speakup/bleep_time
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This controls the duration of the PC speaker beeps speakup
		produces.
		TODO: What are the units? Jiffies?
What:		/sys/accessibility/speakup/cursor_time
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This controls cursor delay when using arrow keys. When a
		connection is very slow, with the default setting, when moving
		with  the arrows, or backspacing etc. speakup says the incorrect
		characters. Set this to a higher value to adjust for the delay
		and better synchronisation between cursor position and speech.
What:		/sys/accessibility/speakup/delimiters
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Delimit a word from speakup.
		TODO: add more info
What:		/sys/accessibility/speakup/ex_num
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	TODO:
What:		/sys/accessibility/speakup/key_echo
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Controls if speakup speaks keys when they are typed. One = on,
		zero = off or don't echo keys.
What:		/sys/accessibility/speakup/keymap
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Speakup keymap remaps keys to Speakup functions.
		It uses a binary
		format. A special program called genmap is needed to compile a
		textual  keymap into the binary format which is then loaded into
		/sys/accessibility/speakup/keymap.
What:		/sys/accessibility/speakup/no_interrupt
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Controls if typing interrupts output from speakup. With
		no_interrupt set to zero, typing on the keyboard will interrupt
		speakup if for example
		the say screen command is used before the
		entire screen  is read.
		With no_interrupt set to one, if the say
		screen command is used, and one then types on the keyboard,
		speakup will continue to say the whole screen regardless until
		it finishes.
What:		/sys/accessibility/speakup/punc_all
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This is a list of all the punctuation speakup should speak when
		punc_level is set to four.
What:		/sys/accessibility/speakup/punc_level
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Controls the level of punctuation spoken as the screen is
		displayed, not reviewed. Levels range from zero no punctuation,
		to four, all punctuation. One corresponds to punc_some, two
		corresponds to punc_most, and three as well as four both
		correspond to punc_all. Some hardware synthesizers may have
		different levels each corresponding to  three and four for
		punc_level. Also note that if punc_level is set to zero, and
		key_echo is set to one, typed punctuation is still spoken as it
		is typed.
What:		/sys/accessibility/speakup/punc_most
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This is a list of all the punctuation speakup should speak when
		punc_level is set to two.
What:		/sys/accessibility/speakup/punc_some
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This is a list of all the punctuation speakup should speak when
		punc_level is set to one.
What:		/sys/accessibility/speakup/reading_punc
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Almost the same as punc_level, the differences being that
		reading_punc controls the level of punctuation when reviewing
		the screen with speakup's screen review commands. The other
		difference is that reading_punc set to three speaks punc_all,
		and reading_punc set to four speaks all punctuation, including
		spaces.
What:		/sys/accessibility/speakup/repeats
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	A list of characters speakup repeats. Normally, when there are
		more than three characters in a row, speakup
		just reads three of
		those characters. For example, "......" would be read as dot,
		dot, dot. If a . is added to the list of characters in repeats,
		"......" would be read as dot, dot, dot, times six.
What:		/sys/accessibility/speakup/say_control
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	If set to one, speakup speaks shift, alt and control when those
		keys are pressed. If say_control is set to zero, shift, ctrl,
		and alt are not spoken when they are pressed.
What:		/sys/accessibility/speakup/say_word_ctl
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	TODO:
What:		/sys/accessibility/speakup/silent
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	TODO:
What:		/sys/accessibility/speakup/spell_delay
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This controls how fast a word is spelled
		when speakup's say word
		review command is pressed twice quickly to speak the current
		word being reviewed. Zero just speaks the letters one after
		another, while values one through four
		seem to introduce more of
		a pause between the spelling of each letter by speakup.
What:		/sys/accessibility/speakup/synth
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Gets or sets the synthesizer driver currently in use. Reading
		synth returns the synthesizer driver currently in use. Writing
		synth switches to the given synthesizer driver, provided it is
		either built into the kernel, or already loaded as a module.
What:		/sys/accessibility/speakup/synth_direct
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Sends whatever is written to synth_direct
		directly to the speech synthesizer in use, bypassing speakup.
		This could be used to make the synthesizer speak
		a string, or to
		send control sequences to the synthesizer to change how the
		synthesizer behaves.
What:		/sys/accessibility/speakup/version
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Reading version returns the version of speakup, and the version
		of the synthesizer driver currently in use.
What:		/sys/accessibility/speakup/i18n/announcements
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This file contains various general announcements, most of which
		cannot be categorized.  You will find messages such as "You
		killed Speakup", "I'm alive", "leaving help", "parked",
		"unparked", and others. You will also find the names of the
		screen edges and cursor tracking modes here.
What:		/sys/accessibility/speakup/i18n/chartab
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	TODO
What:		/sys/accessibility/speakup/i18n/ctl_keys
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Here, you will find names of control keys.  These are used with
		Speakup's say_control feature.
What:		/sys/accessibility/speakup/i18n/function_names
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Here, you will find a list of names for Speakup functions.
		These are used by the help system.  For example, suppose that
		you have activated help mode, and you pressed
		keypad 3.  Speakup
		says: "keypad 3 is character, say next."
		The message "character, say next" names a Speakup function, and
		it comes from this function_names file.
What:		/sys/accessibility/speakup/i18n/states
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This file contains names for key states.
		Again, these are part of the help system.  For instance, if you
		had pressed speakup + keypad 3, you would hear:
		"speakup keypad 3 is go to bottom edge."
		The speakup key is depressed, so the name of the key state is
		speakup.
		This part of the message comes from the states collection.
What:		/sys/accessibility/speakup/i18n/characters
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Through this sys entry, Speakup gives you the ability to change
		how Speakup pronounces a given character. You could, for
		example, change how some punctuation characters are spoken. You
		can even change how Speakup will pronounce certain letters. For
		further details see '12.  Changing the Pronunciation of
		Characters' in Speakup User's Guide (file spkguide.txt in
		source).
What:		/sys/accessibility/speakup/i18n/colors
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	When you use the "say attributes" function, Speakup says the
		name of the foreground and background colors.  These names come
		from the i18n/colors file.
What:		/sys/accessibility/speakup/i18n/formatted
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This group of messages contains embedded formatting codes, to
		specify the type and width of displayed data.  If you change
		these, you must preserve all of the formatting codes, and they
		must appear in the order used by the default messages.
What:		/sys/accessibility/speakup/i18n/key_names
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Again, key_names is used by Speakup's help system.  In the
		previous example, Speakup said that you pressed "keypad 3."
		This name came from the key_names file.
What:		/sys/accessibility/speakup/<synth-name>/
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	In `/sys/accessibility/speakup` is a directory corresponding to
		the synthesizer driver currently in use (E.G) `soft` for the
		soft driver. This directory contains files which control the
		speech synthesizer itself,
		as opposed to controlling the speakup
		screen reader. The parameters in this directory have the same
		names and functions across all
		supported synthesizers. The range
		of values for freq, pitch, rate, and vol is the same for all
		supported synthesizers, with the given range being internally
		mapped by the driver to  more or less fit the range of values
		supported for a given parameter by the individual synthesizer.
		Below is a description of values and  parameters for soft
		synthesizer, which is currently the most commonly used.
What:		/sys/accessibility/speakup/soft/caps_start
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This is the string that is sent to the synthesizer to cause it
		to start speaking uppercase letters. For the soft synthesizer
		and most others, this causes the pitch of the voice to rise
		above the currently set pitch.
What:		/sys/accessibility/speakup/soft/caps_stop
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This is the string sent to the synthesizer to cause it to stop
		speaking uppercase letters. In the case of the soft synthesizer
		and most others, this returns the pitch of the voice
		down to the
		currently set pitch.
What:		/sys/accessibility/speakup/soft/delay_time
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	TODO:
What:		/sys/accessibility/speakup/soft/direct
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Controls if punctuation is spoken by speakup, or by the
		synthesizer.
		For example, speakup speaks ">" as "greater", while
		the espeak synthesizer used by the soft driver speaks "greater
		than". Zero lets speakup speak the punctuation. One lets the
		synthesizer itself speak punctuation.
What:		/sys/accessibility/speakup/soft/freq
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Gets or sets the frequency of the speech synthesizer. Range is
		0-9.
What:		/sys/accessibility/speakup/soft/full_time
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	TODO:
What:		/sys/accessibility/speakup/soft/jiffy_delta
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This controls how many jiffys the kernel gives to the
		synthesizer. Setting this too high can make a system unstable,
		or even crash it.
What:		/sys/accessibility/speakup/soft/pitch
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Gets or sets the pitch of the synthesizer. The range is 0-9.
What:		/sys/accessibility/speakup/soft/punct
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Gets or sets the amount of punctuation spoken by the
		synthesizer. The range for the soft driver seems to be 0-2.
		TODO: How is this related to speakup's punc_level, or
		reading_punc.
What:		/sys/accessibility/speakup/soft/rate
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Gets or sets the rate of the synthesizer. Range is from zero
		slowest, to nine fastest.
What:		/sys/accessibility/speakup/soft/tone
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Gets or sets the tone of the speech synthesizer. The range for
		the soft driver seems to be 0-2. This seems to make no
		difference if using espeak and the espeakup connector.
		TODO: does espeakup support different tonalities?
What:		/sys/accessibility/speakup/soft/trigger_time
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	TODO:
What:		/sys/accessibility/speakup/soft/voice
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Gets or sets the voice used by the synthesizer if the
		synthesizer can speak in more than one voice. The range for the
		soft driver is 0-7. Note that while espeak supports multiple
		voices, this parameter will not set the voice when the espeakup
		connector is used  between speakup and espeak.
What:		/sys/accessibility/speakup/soft/vol
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Gets or sets the volume of the speech synthesizer. Range is 0-9,
		with zero being the softest, and nine being the loudest.


--------------B0F6947FE72D7FBEA2ACF05F
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

--------------B0F6947FE72D7FBEA2ACF05F--
