Return-Path: <speakup+bounces-1231-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CD311A19B02
	for <lists+speakup@lfdr.de>; Wed, 22 Jan 2025 23:40:26 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3B9D03818EC; Wed, 22 Jan 2025 17:40:24 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 24F353818EC
	for <lists+speakup@lfdr.de>; Wed, 22 Jan 2025 17:40:24 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6DF3D3818FD; Wed, 22 Jan 2025 17:40:20 -0500 (EST)
Received: from smtprelay06.ispgateway.de (smtprelay06.ispgateway.de [80.67.31.101])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1FAE33818A1
	for <speakup@linux-speakup.org>; Wed, 22 Jan 2025 17:40:20 -0500 (EST)
Received: from [77.22.216.110] (helo=[10.19.10.1])
	by smtprelay06.ispgateway.de with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.98)
	(envelope-from <chrys@linux-a11y.org>)
	id 1tajOQ-000000004xk-153O
	for speakup@linux-speakup.org;
	Wed, 22 Jan 2025 23:40:14 +0100
Content-Type: multipart/alternative;
 boundary="------------4GQuDWwgt0uuyAELXgBQtDI3"
Message-ID: <9ee14d99-9197-4560-a97a-73dd8d4fc89a@linux-a11y.org>
Date: Wed, 22 Jan 2025 23:40:13 +0100
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Good old Speakup
To: speakup@linux-speakup.org
References: <E1tafn8-000EhT-0P@wb5agz>
Content-Language: de-DE
From: chrys <chrys@linux-a11y.org>
In-Reply-To: <E1tafn8-000EhT-0P@wb5agz>
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.
--------------4GQuDWwgt0uuyAELXgBQtDI3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Martin,
just some random small comments. (also if they do not belong here IMO)
> I was rudely reminded of espeakup
> which was a sleeping giant and awoke.  Both espeakup and fenrir
> would simultaneously speak screen output in the command consoles,
> each one at a different pitch and rate.
well running multible screenreaders at once will never be a good idea. 
they will read the input twice but also fight for exclusive access to 
your keyboard (as both want to consume shortcuts not ment for the 
terminal but the screenreader. only one application can have exclusive 
access to an device.

> 	Also, for some odd reason, Control-J (newline) and
> Control-K cause the screenreader to say "," as in the comma
> punctuation even there are no commas on the screen as near as i
> can tell.

I guess what you see is fenrirs way to handle "pause" on some TTS 
systems. to "emulate" an pause when communicating with an TTS fenrir 
sends an , (comma) what is interpreted by the most TTS as a small break. 
if this does not fit for you can just disable it:
respectPunctuationPause=True
newLinePause=True

just set them to false.

>   It's easy to go through different punctuation levels
> and change speech rates on the fly plus, if one sets the
> punctuation to most, you do hear what one  needs to hear and that
> is important when programming and doing administrative tasks.
fenrir is also able to change this on the fly, maybe the shortcuts are 
unbound as i implemented it using the quick menu. but you can just 
rebind them

   *     inc_sound_volume
   *     inc_speech_pitch
   *     inc_speech_rate
   *     inc_speech_volume


for in crease the given attribute and

   *     dec_sound_volume
   *     dec_speech_pitch
   *     dec_speech_rate
   *     dec_speech_volume

or just using the quick menu.

by the way... same for punctuation level: toggle_punctuation_level


maybe a bit technical, but you can find all available commands here:

https://github.com/chrys87/fenrir/tree/master/src/fenrirscreenreader/commands/commands

maybe not all of them are bound by default. as i never used an 
screenreader by my own, the default settings are mostly done by others.


cheers chrys

Am 22.01.25 um 19:49 schrieb Martin McCormick:
> Those of us who use screen readers have things we particularly
> like about them and stuff we dislike and a lot of that is
> totally subjective which makes the job of programming them even
> harder than simply coding.  I have used speakup or espeakup
> depending on the time period we are talking about since 2009 or
> thereabouts when I first got vinux to work and no longer had to
> use a MSDOS PC running kermit and feeding a hardware speech
> synthesizer so I know of what I speak.
>
> 	I have a good and fast PC running debian bookworm with
> orca and the speech is good under orca but I always have wanted
> to have a pure command-line instance of old-school speakup for
> use in command-line stuff such as programming in c++, perl and
> shell scripts, PIC assembler and system administrative tasks.
>
> 	There are at least 2 command line consoles that open text
> terminal windows on Control-Alt-F3 and Control-Alt-F4.  They
> don't talk so I installed fenrir and now, they talk but it's not
> what I was hoping for.
>
> 	By pure accident/stupidity on my part, I once installed
> espeakup on here before finding out that that is not a good idea
> because espeakup is not a user-space application and uses kernel
> modules that might conflict with orca.
>
> 	I forgot about the installation and have used orca a lot
> with no trouble but when i installed fenrir and got pipewire
> reconfigured to work with it, I was rudely reminded of espeakup
> which was a sleeping giant and awoke.  Both espeakup and fenrir
> would simultaneously speak screen output in the command consoles,
> each one at a different pitch and rate.  It was kind of amusing
> for about 15 seconds and then frustrating because the babble of
> the 2 voices, both e-speak but at different settings, tended to
> obscure what each was saying.
>
> 	I worked on that issue on and off for a couple of days
> before another happy accident which clued me in on what happened.
>
> 	I pressed the PrintScreen button and one of the voices
> said, "You killed speakup."  Pressing it again brought it back
> like normal.
>
> 	So now I knew it was espeakup and fenrir having the
> babble battle.
>
> 	I de-installed espeakup and fenrir now talks but it's not
> the same thing.  If you set punctuations to some, one must do
> that in the configuration file, then restart the service.  When
> you do that, the = sign is not one of the punctuation marks that
> is spoken, so much for programming.
>
> 	Also, for some odd reason, Control-J (newline) and
> Control-K cause the screenreader to say "," as in the comma
> punctuation even there are no commas on the screen as near as i
> can tell.
>
> 	That, alone drives me batty since it is confusing to say
> the least.
>
> 	I am not trying to talk trash about fenrir because it's a
> good idea and there are things I like about the interface but oh,
> how I would like to just experience speakup in those command
> consoles.  It's easy to go through different punctuation levels
> and change speech rates on the fly plus, if one sets the
> punctuation to most, you do hear what one  needs to hear and that
> is important when programming and doing administrative tasks.
>
> 	Any constructive ideas are appreciated.
>
> 	Since espeakup did try to run, I have thought about
> putting it back as it never bothered orca while it was installed
> and then removing fenrir since both were trying to work at the
> same time.
>
> Martin
>

--------------4GQuDWwgt0uuyAELXgBQtDI3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">Hi Martin,</div>
    <div class="moz-cite-prefix">just some random small comments. (also
      if they do not belong here IMO)<br>
    </div>
    <div class="moz-cite-prefix">
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">I was rudely reminded of espeakup
which was a sleeping giant and awoke.  Both espeakup and fenrir
would simultaneously speak screen output in the command consoles,
each one at a different pitch and rate. </pre>
      </blockquote>
      well running multible screenreaders at once will never be a good
      idea. they will read the input twice but also fight for exclusive
      access to your keyboard (as both want to consume shortcuts not
      ment for the terminal but the screenreader. only one application
      can have exclusive access to an device.<br>
      <br>
    </div>
    <div class="moz-cite-prefix">
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">	Also, for some odd reason, Control-J (newline) and
Control-K cause the screenreader to say "," as in the comma
punctuation even there are no commas on the screen as near as i
can tell.</pre>
      </blockquote>
      <br>
    </div>
    <div class="moz-cite-prefix">I guess what you see is fenrirs way to
      handle "pause" on some TTS systems. to "emulate" an pause when
      communicating with an TTS fenrir sends an , (comma) what is
      interpreted by the most TTS as a small break. if this does not fit
      for you can just disable it:<br>
    </div>
    <div class="moz-cite-prefix">respectPunctuationPause=True<br>
      newLinePause=True</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">just set them to false.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre"> It's easy to go through different punctuation levels
and change speech rates on the fly plus, if one sets the
punctuation to most, you do hear what one  needs to hear and that
is important when programming and doing administrative tasks.</pre>
      </blockquote>
      fenrir is also able to change this on the fly, maybe the shortcuts
      are unbound as i implemented it using the quick menu. but you can
      just rebind them</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">
      <ul>
        <li>    inc_sound_volume</li>
        <li>    inc_speech_pitch</li>
        <li>    inc_speech_rate</li>
        <li>    inc_speech_volume</li>
      </ul>
      <br>
      for in crease the given attribute and<br>
      <br>
      <ul>
        <li>    dec_sound_volume</li>
        <li>    dec_speech_pitch</li>
        <li>    dec_speech_rate</li>
        <li>    dec_speech_volume</li>
      </ul>
    </div>
    <div class="moz-cite-prefix">or just using the quick menu.</div>
    <p>by the way... same for punctuation level:
      toggle_punctuation_level<br>
    </p>
    <p><br>
    </p>
    <p>maybe a bit technical, but you can find all available commands
      here:</p>
    <p><a class="moz-txt-link-freetext" href="https://github.com/chrys87/fenrir/tree/master/src/fenrirscreenreader/commands/commands">https://github.com/chrys87/fenrir/tree/master/src/fenrirscreenreader/commands/commands</a></p>
    <p>maybe not all of them are bound by default. as i never used an
      screenreader by my own, the default settings are mostly done by
      others.<br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">cheers chrys<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Am 22.01.25 um 19:49 schrieb Martin
      McCormick:<br>
    </div>
    <blockquote type="cite" cite="mid:E1tafn8-000EhT-0P@wb5agz">
      <pre wrap="" class="moz-quote-pre">Those of us who use screen readers have things we particularly
like about them and stuff we dislike and a lot of that is
totally subjective which makes the job of programming them even
harder than simply coding.  I have used speakup or espeakup
depending on the time period we are talking about since 2009 or
thereabouts when I first got vinux to work and no longer had to
use a MSDOS PC running kermit and feeding a hardware speech
synthesizer so I know of what I speak.

	I have a good and fast PC running debian bookworm with
orca and the speech is good under orca but I always have wanted
to have a pure command-line instance of old-school speakup for
use in command-line stuff such as programming in c++, perl and
shell scripts, PIC assembler and system administrative tasks.

	There are at least 2 command line consoles that open text
terminal windows on Control-Alt-F3 and Control-Alt-F4.  They
don't talk so I installed fenrir and now, they talk but it's not
what I was hoping for.

	By pure accident/stupidity on my part, I once installed
espeakup on here before finding out that that is not a good idea
because espeakup is not a user-space application and uses kernel
modules that might conflict with orca.

	I forgot about the installation and have used orca a lot
with no trouble but when i installed fenrir and got pipewire
reconfigured to work with it, I was rudely reminded of espeakup
which was a sleeping giant and awoke.  Both espeakup and fenrir
would simultaneously speak screen output in the command consoles,
each one at a different pitch and rate.  It was kind of amusing
for about 15 seconds and then frustrating because the babble of
the 2 voices, both e-speak but at different settings, tended to
obscure what each was saying.

	I worked on that issue on and off for a couple of days
before another happy accident which clued me in on what happened.

	I pressed the PrintScreen button and one of the voices
said, "You killed speakup."  Pressing it again brought it back
like normal.

	So now I knew it was espeakup and fenrir having the
babble battle.

	I de-installed espeakup and fenrir now talks but it's not
the same thing.  If you set punctuations to some, one must do
that in the configuration file, then restart the service.  When
you do that, the = sign is not one of the punctuation marks that
is spoken, so much for programming.

	Also, for some odd reason, Control-J (newline) and
Control-K cause the screenreader to say "," as in the comma
punctuation even there are no commas on the screen as near as i
can tell.

	That, alone drives me batty since it is confusing to say
the least.

	I am not trying to talk trash about fenrir because it's a
good idea and there are things I like about the interface but oh,
how I would like to just experience speakup in those command
consoles.  It's easy to go through different punctuation levels
and change speech rates on the fly plus, if one sets the
punctuation to most, you do hear what one  needs to hear and that
is important when programming and doing administrative tasks.

	Any constructive ideas are appreciated.

	Since espeakup did try to run, I have thought about
putting it back as it never bothered orca while it was installed
and then removing fenrir since both were trying to work at the
same time.

Martin

</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------4GQuDWwgt0uuyAELXgBQtDI3--

