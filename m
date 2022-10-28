Return-Path: <speakup+bounces-794-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4BED3610A45
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 08:22:41 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 69EE938406A; Fri, 28 Oct 2022 02:22:39 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 538ED380676
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 02:22:39 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 058E3384016; Fri, 28 Oct 2022 02:22:34 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0095.b.hostedemail.com [64.98.42.95])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E0543384007
	for <speakup@linux-speakup.org>; Fri, 28 Oct 2022 02:22:33 -0400 (EDT)
Received: from omf14.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay02.b.hostedemail.com (Postfix) with ESMTP id 33F0C801C3B0;
	Fri, 28 Oct 2022 06:22:33 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf14.b.hostedemail.com (Postfix) with ESMTPA id AB7CF8000044;
	Fri, 28 Oct 2022 06:22:32 +0000 (UTC)
Message-ID: <08bb01d8ea95$86880f00$87ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "Chime Hart" <chime@hubert-humphrey.com>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <d06e087d-7752-f42e-25ff-d2e736b5ed3b@hubert-humphrey.com> <086601d8ea59$9bd758c0$87ffa8c0@Win7VM> <ebac52ac-209b-686e-ad06-d743658cc6cb@hubert-humphrey.com> <087e01d8ea5c$c01349d0$87ffa8c0@Win7VM> <5a70be54-54a6-fd05-d02f-7fdc5a24d691@hubert-humphrey.com> <088501d8ea5e$9033f820$87ffa8c0@Win7VM> <ce900000-695c-23de-19f0-6bb50e7fcd25@hubert-humphrey.com> <089101d8ea60$a48a59c0$87ffa8c0@Win7VM> <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com> <089c01d8ea67$be809ae0$87ffa8c0@Win7VM> <Y1tQ09YHFIMW5W2P@gregn.net>
Subject: Re: Installing Voxin
Date: Fri, 28 Oct 2022 01:21:32 -0500
Organization: Home
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_08B8_01D8EA6B.9CEB82B0"
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Stat-Signature: 73s7k1w7hkmshgtbp7j3z41qwz7ambwg
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: AB7CF8000044
X-Spam-Status: No, score=-2.60
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1928/H3VbzKmfox+sjW1TPwCNRWhxE7Dl8=
X-HE-Tag: 1666938152-242239
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.

------=_NextPart_000_08B8_01D8EA6B.9CEB82B0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

Hi Gregory,
I got up to the editing of /etc/speech-dispatcher/speechd.conf and searched 
for espeak-ng and read some strange stuff.
I wonder if spd-conf messed up the speechd.conf file.
I'm attaching it for you to have a look, if you would be so kind, to see if 
it looks right.
The lines I read in nano had .conf in all the synth names, and when I looked 
at it at the start of all this, because I was going to put voxin by hand, 
but I wasn't sure where to find the right spot, I exited without saving, but 
I recall that the synth lines did not have .conf after the names.
The attachment probably won't go to the list, but it should come in your 
copy.
Thanks.
Glenn
----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Chime Hart" <chime@hubert-humphrey.com>; "Speakup is a screen review 
system for Linux." <speakup@linux-speakup.org>
Sent: Thursday, October 27, 2022 10:47 PM
Subject: Re: Installing Voxin


I don't use voxin, but:

1. If you can do this over an ssh connection, I think that would be
better. You need to:

a. apt purge espeakup

b. apt install speechd-up speech-dispatcher-voxin

2. Instead of messing with spd-conf, I just edit
/etc/speech-dispatcher/speechd.conf by hand to make changes. That way,
I know exactly what is being configured. So:

Find the line that says:

DefaultModule espeak-ng

and change it to say:

DefaultModule voxin

Save that file, and:

killall speech-dispatcher

To make sure speech-dispatcher actually restarts, I just reboot
instead of killall.

Greg


On Thu, Oct 27, 2022 at 07:53:49PM -0500, K0LNY_Glenn wrote:
> Hi Chime and All,
> Let's see,
> spd-say -O
> came back with
> output module is espeak-ng
> and spd-say -L
> failed to get voice list
>
> Thanks.
>


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your 
contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

------=_NextPart_000_08B8_01D8EA6B.9CEB82B0
Content-Type: application/octet-stream;
	name="speechd.conf"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="speechd.conf"

=0A=
# Global configuration for Speech Dispatcher=0A=
# =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=0A=
=0A=
# -----SYSTEM OPTIONS-----=0A=
=0A=
# CommunicationMethod specifies the method to be used by Speech =
Dispatcher to communicate with=0A=
# its clients. Two basic methods are "unix_socket" and "inet_socket".=0A=
#=0A=
# unix_socket -- communication over Unix sockets represented by a file =
in the=0A=
# filesystem (see SocketPath below). This method works only locally, but =
is=0A=
# prefered for standard session setup, where every user runs his own =
instance of Speech=0A=
# Dispatcher to get voice feedback on his own computer.=0A=
#=0A=
# inet_socket -- alternatively, you can start Speech Dispatcher on=0A=
# a TCP port and connect to it via hostname/port. This allows for a more=0A=
# flexible setup, where you can use Speech Dispatcher over network=0A=
# from different machines. See also the Port and LocalhostAccessOnly=0A=
# configuration variables.=0A=
#=0A=
# CommunicationMethod "unix_socket"=0A=
=0A=
# SocketPath is either "default" or a full path to the filesystem=0A=
# where the driving Unix socket file should be created in case the=0A=
# CommunicationMethod is set to "unix_socket". The default is=0A=
# $XDG_RUNTIME_DIR/speech-dispatcher/speechd.sock where $XDG_RUNTIME_DIR=0A=
# is the directory specified by the XDG Base Directory Specification.=0A=
# Do not change this unless you have a reason and know what you are =
doing.=0A=
=0A=
# SocketPath "default"=0A=
=0A=
# The Port on which Speech Dispatcher should be available to clients if =
the "inet_socket"=0A=
# communication method is used.=0A=
=0A=
# Port 6560=0A=
=0A=
# By default, if "inet_socket" communication method is used, the =
specified port is opened only=0A=
# for connections coming from localhost. If LocalhostAccessOnly is set =
to 0 it disables this=0A=
# access control. It means that the port will be accessible from all =
computers on the=0A=
# network. If you turn off this option, please make sure you set up some =
system rules on what=0A=
# computers are and are not allowed to access the Speech Dispatcher port.=0A=
=0A=
# LocalhostAccessOnly 1=0A=
=0A=
# By default, Speech Dispatcher is configured to shut itself down after =
a period of=0A=
# time if no clients are connected. The timeout value is in seconds, and =
is started when=0A=
# the last client disconnects. A value of 0 disables the timeout.=0A=
=0A=
# Timeout 5=0A=
=0A=
# -----LOGGING CONFIGURATION-----=0A=
=0A=
# The LogLevel is a number between 0 and 5 specifying the=0A=
# verbosity of information to the logfile  or screen=0A=
# 0 means nothing, 5 means everything (not recommended).=0A=
=0A=
LogLevel  3=0A=
=0A=
# The LogDir specifies where the Speech Dispatcher logs reside=0A=
# Specify "stdout" for standard console output=0A=
# or a custom log directory path. 'default' means=0A=
# the logs are written to the default destination (e.g. a preconfigured=0A=
# system directory or the home directory if .speech-dispatcher is =
present)=0A=
# DO NOT COMMENT OUT THIS OPTION, leave as "default" for standard logging=0A=
=0A=
LogDir  "default"=0A=
#LogDir  "/var/log/speech-dispatcher/"=0A=
#LogDir  "stdout"=0A=
=0A=
# The CustomLogFile allows logging all messages # regardless of=0A=
# priority, to the given destination.=0A=
#CustomLogFile "protocol" =
"/var/log/speech-dispatcher/speech-dispatcher-protocol.log"=0A=
=0A=
# ----- VOICE PARAMETERS -----=0A=
=0A=
# The DefaultRate controls how fast the synthesizer is going to speak.=0A=
# The value must be between -100 (slowest) and +100 (fastest), default=0A=
# is 0.=0A=
=0A=
# DefaultRate  0=0A=
=0A=
# The DefaultPitch controls the pitch of the synthesized voice.  The=0A=
# value must be between -100 (lowest) and +100 (highest), default is=0A=
# 0.=0A=
=0A=
# DefaultPitch  0=0A=
=0A=
# The DefaultPitchRange controls the pitch range of the synthesized =
voice.  The=0A=
# value must be between -100 (lowest) and +100 (highest), default is=0A=
# 0.=0A=
=0A=
# DefaultPitchRange  0=0A=
=0A=
# The DefaultVolume controls the default volume of the voice.  It is=0A=
# a value between -100 (softly) and +100 (loudly).  Currently, +100=0A=
# maps to the default volume of the synthesizer.=0A=
=0A=
DefaultVolume 100=0A=
=0A=
# The DefaultVoiceType controls which voice type should be used by =
default.=0A=
# Voice types are symbolic names which map to particular voices provided =
by=0A=
# the synthesizer according to the output module configuration.=0A=
# Please see the synthesizer-specific configuration=0A=
# in etc/speech-dispatcher/modules/ to see which voices are assigned to=0A=
# different symbolic names.  The following symbolic names are=0A=
# currently supported: MALE1, MALE2, MALE3, FEMALE1, FEMALE2, FEMALE3,=0A=
# CHILD_MALE, CHILD_FEMALE=0A=
=0A=
# DefaultVoiceType  "MALE1"=0A=
=0A=
# The Default language with which to speak=0A=
# Note that the spd-say client in particular always sets the language to =
its=0A=
# current locale language, so this particular client will never pick this=0A=
# configuration.=0A=
=0A=
# DefaultLanguage "en-US"=0A=
=0A=
=0A=
# ----- MESSAGE DISPATCHING CONTROL -----=0A=
=0A=
# The DefaultClientName specifies the name of a client who didn't=0A=
# introduce himself at the beginning of an SSIP session.=0A=
=0A=
# DefaultClientName  "unknown:unknown:unknown"=0A=
=0A=
# The Default Priority. Use with caution, normally this shouldn't be=0A=
# changed globally (at this place)=0A=
=0A=
# DefaultPriority  "text"=0A=
=0A=
# The DefaultPauseContext specifies by how many index marks a speech=0A=
# cursor should return when resuming after a pause. This is roughly=0A=
# equivalent to the number of sentences before the place of the=0A=
# execution of pause that will be repeated.=0A=
=0A=
# DefaultPauseContext 0=0A=
=0A=
# -----SPELLING/PUNCTUATION/CAPITAL LETTERS  CONFIGURATION-----=0A=
=0A=
# The DefaultPunctuationMode sets the way dots, comas, exclamation=0A=
# marks, question marks etc. are interpreted.  none: they are ignored=0A=
# some: some of them are sent to synthesis (see=0A=
# DefaultPunctuationSome) all: all punctuation marks are sent to=0A=
# synthesis=0A=
=0A=
# DefaultPunctuationMode "none"=0A=
=0A=
# Level of punctuation for which symbol pre-processing should be =
performed by=0A=
# the server rather than by the module.=0A=
#=0A=
# This is completely independent of what punctuation level is actually =
asked, it=0A=
# controls to which extent the server should do the punctuation work to =
insert=0A=
# the appropriate words or if the output module is responsible for doing =
it.=0A=
#=0A=
# Setting this to "no" disables pre-processing completely and leaves all=0A=
# punctuation preprocessing to the output module. Setting this to=0A=
# "none" enables only the server rules which are always enabled whatever=0A=
# the punctuation level. Setting this to "all" enables all server rules =
for=0A=
# punctuation. Setting this to "char" enables all server rules, including=0A=
# rules for spelling spaces. Of course, which rules actually take effect =
depends=0A=
# on the requested punctuation level.=0A=
=0A=
# SymbolsPreproc "none"=0A=
=0A=
# Which preprocessing files should be loaded, and in which order=0A=
#=0A=
# This is done first for the most specific localization, then lesser =
specific=0A=
# localization, etc.  I.e. for the fr_FR language for instance, fr-fr =
files are=0A=
# loaded first, then fr files, then en files.=0A=
=0A=
SymbolsPreprocFile "gender-neutral.dic"=0A=
SymbolsPreprocFile "font-variants.dic"=0A=
SymbolsPreprocFile "emojis.dic"=0A=
SymbolsPreprocFile "symbols.dic"=0A=
SymbolsPreprocFile "orca.dic"=0A=
SymbolsPreprocFile "orca-chars.dic"=0A=
=0A=
# The DefaultCapLetRecognition: if set to "spell", capital letters=0A=
# should be spelled (e.g. "capital b"), if set to "icon",=0A=
# capital letters are indicated by inserting a special sound=0A=
# before them but they should be read normally, it set to "none"=0A=
# capital letters are not recognized (by default)=0A=
=0A=
# DefaultCapLetRecognition  "none"=0A=
=0A=
# The DefaultSpelling: if set to On, all messages will be spelt=0A=
# unless set otherwise (this is usually not something you want to do.)=0A=
=0A=
# DefaultSpelling  Off=0A=
=0A=
# ----- AUDIO CONFIGURATION -----------=0A=
=0A=
# -- AUDIO OUTPUT --=0A=
=0A=
# Chooses between the possible sound output systems:=0A=
#       "pulse" - PulseAudio=0A=
#       "alsa"  - Advanced Linux Sound System=0A=
#       "oss"   - Open Sound System=0A=
#       "nas"   - Network Audio System=0A=
#       "libao" - A cross platform audio library=0A=
# Pulse audio is the default and recommended sound server. OSS and ALSA=0A=
# are only provided for compatibility with architectures that do not=0A=
# include Pulse Audio. NAS provides network transparency, but is not=0A=
# very well tested. libao is a cross platform library with plugins for=0A=
# different sound systems and provides alternative output for Pulse Audio=0A=
# and ALSA as well as for other backends.=0A=
=0A=
# AudioOutputMethod "pulse"=0A=
=0A=
# -- Pulse Audio parameters --=0A=
=0A=
# Pulse audio device name or "default" for the default pulse device=0A=
=0A=
#AudioPulseDevice "default"=0A=
=0A=
# Latency requested from pulseaudio, in ms. Smaller values make speech=0A=
# interruption snappier, but also uses more CPU time thus battery.=0A=
# 10ms latency is considered in HCI (Human-computer Interaction) as =
real-time.=0A=
=0A=
#AudioPulseMinLength 10=0A=
=0A=
# -- ALSA parameters --=0A=
=0A=
# Audio device for ALSA output=0A=
=0A=
#AudioALSADevice "default"=0A=
=0A=
# -- OSS parameters --=0A=
=0A=
# Audio device for OSS output=0A=
=0A=
#AudioOSSDevice "/dev/dsp"=0A=
=0A=
# -- NAS parameters --=0A=
=0A=
# Route to the Network Audio System server when NAS=0A=
# is chosen for the audio output. Note that NAS=0A=
# server doesn't need to run on your machine,=0A=
# you can use it also over network (for instance=0A=
# when working on remote machines).=0A=
=0A=
#AudioNASServer "tcp/localhost:5450"=0A=
=0A=
=0A=
=0A=
# -----OUTPUT MODULES CONFIGURATION-----=0A=
=0A=
# Each AddModule line loads an output module.=0A=
#  Syntax: AddModule "name" "binary" "configuration" "logfile"=0A=
#  - name is the name under which you can access this module=0A=
#  - binary is the path to the binary executable of this module,=0A=
#    either relative (to lib/speech-dispatcher-modules/) or absolute=0A=
#  - configuration is the path to the config file of this module,=0A=
#    either relative (to etc/speech-dispatcher/modules/) or absolute=0A=
=0A=
#AddModule "espeak"                   "sd_espeak"    "espeak.conf"=0A=
#AddModule "espeak-ng"                "sd_espeak-ng" "espeak-ng.conf"=0A=
#AddModule "festival"                 "sd_festival"  "festival.conf"=0A=
#AddModule "flite"                    "sd_flite"     "flite.conf"=0A=
#AddModule "ivona"                    "sd_ivona"     "ivona.conf"=0A=
#AddModule "pico"                     "sd_pico"      "pico.conf"=0A=
#AddModule "espeak-ng-mbrola-generic" "sd_generic"   =
"espeak-ng-mbrola-generic.conf"=0A=
#AddModule "espeak-mbrola-generic"    "sd_generic"   =
"espeak-mbrola-generic.conf"=0A=
#AddModule "swift-generic"            "sd_generic"   "swift-generic.conf"=0A=
#AddModule "epos-generic"             "sd_generic"   "epos-generic.conf"=0A=
#AddModule "dtk-generic"              "sd_generic"   "dtk-generic.conf"=0A=
#AddModule "ibmtts"                   "sd_ibmtts"    "ibmtts.conf"=0A=
#AddModule "cicero"                   "sd_cicero"    "cicero.conf"=0A=
#AddModule "kali"                     "sd_kali"      "kali.conf"=0A=
#AddModule "mary-generic"             "sd_generic"   "mary-generic.conf"=0A=
#AddModule "baratinoo"                "sd_baratinoo" "baratinoo.conf"=0A=
#AddModule "rhvoice"                  "sd_rhvoice"   "rhvoice.conf"=0A=
#AddModule "voxin"                    "sd_voxin"     "voxin.conf"=0A=
=0A=
# DO NOT REMOVE the following line unless you have=0A=
# a specific reason -- this is the fallback output module=0A=
# that is only used when no other modules are in use=0A=
#AddModule "dummy"         "sd_dummy"      ""=0A=
=0A=
# The output module testing doesn't actually connect to anything. It=0A=
# outputs the requested commands to standard output and reads=0A=
# responses from stdandard input. This way, Speech Dispatcher's=0A=
# communication with output modules can be tested easily.=0A=
=0A=
# AddModule "testing"=0A=
=0A=
# The DefaultModule selects which output module is the default.  You=0A=
# must use one of the names of the modules loaded with AddModule.=0A=
=0A=
DefaultModule voxin=0A=
=0A=
# The LanguageDefaultModule selects which output modules are prefered=0A=
# for specified languages.=0A=
=0A=
#LanguageDefaultModule "en"  "espeak"=0A=
#LanguageDefaultModule "cs"  "festival"=0A=
#LanguageDefaultModule "es"  "festival"=0A=
=0A=
# -----CLIENT SPECIFIC CONFIGURATION-----=0A=
=0A=
# Here you can include the files with client-specific configuration=0A=
# for different types of clients. They must contain one or more sections =
with=0A=
# this structure:=0A=
#     BeginClient "emacs:*"=0A=
#          DefaultPunctuationMode "some"=0A=
#          ...and/or some other settings=0A=
#     EndClient=0A=
# The parameter of BeginClient tells Speech Dispatcher which clients=0A=
# it should apply the settings to (it does glob-style matching, you can =
use=0A=
# * to match any number of characters and ? to match one character)=0A=
=0A=
# There are some sample client settings=0A=
=0A=
Include "clients/*.conf"=0A=
=0A=
# The DisableAutoSpawn option will disable the autospawn mechanism.=0A=
# Thus the server will not start automatically on requests from the =
clients=0A=
# DisableAutoSpawn=0A=
=0A=
=0A=
# Copyright (C) 2001-2009 Brailcom, o.p.s=0A=
# Copyright (C) 2009 Rui Batista <ruiandrebatista@gmail.com>=0A=
# Copyright (C) 2010 Andrei Kholodnyi <Andrei.Kholodnyi@gmail.com>=0A=
# Copyright (C) 2010 William Hubbs <w.d.hubbs@gmail.com>=0A=
# Copyright (C) 2010 Trevor Saunders <trev.saunders@gmail.com>=0A=
# Copyright (C) 2012 William Jon McCann <jmccann@redhat.com>=0A=
# Copyright (C) 2014 Rob Whyte <fudge@thefudge.net>=0A=
# Copyright (C) 2014-2016 Luke Yelavich <themuso@ubuntu.com>=0A=
# Copyright (C) 2014 Hussain Jasim <hussainmkj@gmail.com>=0A=
# Copyright (C) 2017 Colomban Wendling <cwendling@hypra.fr>=0A=
# Copyright (C) 2018 Rapha=C3=ABl POITEVIN <rpoitevin@hypra.fr>=0A=
# Copyright (C) 2018 Florian Steinhardt <no.known.email@example.com>=0A=
# Copyright (C) 2018-2020 Samuel Thibault <samuel.thibault@ens-lyon.org>=0A=
#=0A=
# This program is free software; you can redistribute it and/or modify =
it under=0A=
# the terms of the GNU General Public License as published by the Free =
Software=0A=
# Foundation; either version 2 of the License, or (at your option) any =
later=0A=
# version.=0A=
#=0A=
# This program is distributed in the hope that it will be useful, but =
WITHOUT ANY=0A=
# WARRANTY; without even the implied warranty of MERCHANTABILITY or =
FITNESS FOR A=0A=
# PARTICULAR PURPOSE.  See the GNU General Public License for more =
details (file=0A=
# COPYING in the root directory).=0A=
#=0A=
# You should have received a copy of the GNU General Public License=0A=
# along with this program.  If not, see <https://www.gnu.org/licenses/>.=0A=
#voxinadded espeak-ng=0A=

------=_NextPart_000_08B8_01D8EA6B.9CEB82B0--


