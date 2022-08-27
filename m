Return-Path: <speakup+bounces-708-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 78F485A3896
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 18:01:00 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C82FA38576A; Sat, 27 Aug 2022 12:00:54 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AECC738574C
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 12:00:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AE225385750; Sat, 27 Aug 2022 12:00:49 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0110.b.hostedemail.com [64.98.42.110])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8C75A380C06
	for <speakup@linux-speakup.org>; Sat, 27 Aug 2022 12:00:49 -0400 (EDT)
Received: from omf07.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay05.b.hostedemail.com (Postfix) with ESMTP id DC22B100330E0;
	Sat, 27 Aug 2022 16:00:47 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf07.b.hostedemail.com (Postfix) with ESMTPA id 2487810A35679;
	Sat, 27 Aug 2022 16:00:47 +0000 (UTC)
Message-ID: <014401d8ba2e$2c769320$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Linux A11y" <chrys@linux-a11y.org>
Cc: <speakup@linux-speakup.org>,
	"Didier Spaier" <didier@slint.fr>
References: <013201d8ba2a$d97bed80$80ffa8c0@Win7VM> <ACFC197F-8B51-467A-AEE5-31BB7BEA90A0@linux-a11y.org>
Subject: Re: hopefully some help with AntiX
Date: Sat, 27 Aug 2022 11:00:47 -0500
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
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0141_01D8BA04.42DD3B20"
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Spam-Status: No, score=-2.60
X-Stat-Signature: cqemw1huq4ga194t9ach9e1dhfc6wz96
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 2487810A35679
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1+0p2HXbcCg+URNh5UDk9JmPcPL6R/eTV8=
X-HE-Tag: 1661616047-29107
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.

------=_NextPart_000_0141_01D8BA04.42DD3B20
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If Fenrir requires git, that is a problem, because git is not on AntiX, =
and I tried to apt install it, and it cannot find it.
I am wondering if the errors are related to git.
I'm using OCR on the screen, so it isn't easy to obtain the messages, =
and impossible to save them.

Glenn
----- Original Message -----=20
From: Linux A11y=20
To: K0LNY_Glenn=20
Cc: speakup@linux-speakup.org ; Didier Spaier=20
Sent: Saturday, August 27, 2022 10:50 AM
Subject: Re: hopefully some help with AntiX


Howdy,


    Well I ran check-dependencies.py and it gave a couple mysterious =
errors,=20
What errors you get? Fenrir starts for testing also just from git folder =
without any need to install. But it requires the needed dependencys and =
the correct pulse setup.
See readme section pulseaudio.
https://github.com/chrys87/fenrir#configure-pulseaudio


Also this is the speakup list and people tend to flame if someone is =
=E2=80=9Eadvertising=E2=80=9C different software. To prevent this you =
can register to fenrirs mailing list to get useful help. We will get it =
run for sure.


Cheers chrys


  Am 27.08.2022 um 17:37 schrieb K0LNY_Glenn <glenn@ervin.email>:


  =EF=BB=BFHi Didier,
  I did try to join that forum about a week ago, and never got a =
confirmation=20
  for the forum.
  I also contacted someone associated with it and asked why =
accessibility=20
  wasn't built in.
  Thanks.


  ----- Original Message -----=20
  From: "Didier Spaier" <didier@slint.fr>
  To: <speakup@linux-speakup.org>
  Sent: Saturday, August 27, 2022 12:22 PM
  Subject: Re: hopefully some help with AntiX


  Hi,

  Installing a package intended for another distribution can work... But
  oftentimes does not.

  If not yet done, I suggest that you post your issue in this forum:
  https://www.antixforum.com/
  Caveat: I do not know if it is accessible with a screen reader.

  Cheers,
  Dider



  Le 27/08/2022 =C3=A0 15:06, K0LNY_Glenn a =C3=A9crit :

    Well I found espeak-ng for Debian Buster here:

    https://packages.debian.org/buster/espeak-ng

    The file I downloaded was:

    espeak-ng_1.49.2+dfsg-8+deb10u1.debian.tar.xz

    Looking in the archive, there are some .install files, but I didn't =
find=20

    any

    .sh files, so I don't know which file to use to get espeak installed =
on=20

    this

    system.

    Or if there is a .deb for RhVoice, that would work too, but did I =
download

    the wrong espeak-ng file for installing it?

    Thanks.



    Glenn



    ----- Original Message -----=20

    From: "K0LNY_Glenn" <glenn@ervin.email>

    To: "Jude DaShiell" <jdashiel@panix.com>; "Gregory Nowak"=20

    <greg@gregn.net>;

    <speakup@linux-speakup.org>

    Sent: Saturday, August 27, 2022 9:46 AM

    Subject: Re: hopefully some help with AntiX





    Well I ran check-dependencies.py and it gave a couple mysterious =
errors,=20

    but

    it didn't help.

    I ran install.sh again.

    I ran sudo fenrir and again it only gave me the startup tone.

    It acts like there is no TTS for it to use.

    Glenn

    ----- Original Message -----=20

    From: "Jude DaShiell" <jdashiel@panix.com>

    To: "K0LNY_Glenn" <glenn@ervin.email>; "Gregory Nowak" =
<greg@gregn.net>;

    <speakup@linux-speakup.org>

    Sent: Friday, August 26, 2022 9:55 PM

    Subject: Re: hopefully some help with AntiX





    Also sysctl enable fenrir.service or is it =
fenrirscreenreader.service then

    sysctl start fenrir.service or sysctl start =
fenrirscreenreader.service.

    If a service is missing systemd will let you know about it.





    Jude <jdashiel at panix dot com>

    "There are four boxes to be used in defense of liberty:

    soap, ballot, jury, and ammo. Please use in that order."

    -Ed Howdershelt (Author, 1940)



    .



    On Fri, 26 Aug 2022, K0LNY_Glenn wrote:



      Well I ran install.sh on the system, and pressed enter where it =
said to

      proceed, and it said was finished, and it said to type

      sudo fenrir

      to test it, and all I can get is the two-tone sound when fenrir =
starts,

      but

      no TTS.

      Should have that installed espeak or espeak-ng?

      Thanks.



      ----- Original Message -----

      From: "Jude DaShiell" <jdashiel@panix.com>

      To: "K0LNY_Glenn" <glenn@ervin.email>; "Gregory Nowak" =
<greg@gregn.net>;

      <speakup@linux-speakup.org>

      Sent: Friday, August 26, 2022 8:27 PM

      Subject: Re: hopefully some help with AntiX





      For now and not forever, why not do apt purge ufw?





      Jude <jdashiel at panix dot com>

      "There are four boxes to be used in defense of liberty:

      soap, ballot, jury, and ammo. Please use in that order."

      -Ed Howdershelt (Author, 1940)



      .



      On Fri, 26 Aug 2022, K0LNY_Glenn wrote:



        Then all 1000 ports show up in nmap as closed.

        So it seems if I allow a port in ufw, it shows up as closed, but =
not

        filtered.

        So filtered means ufw is running, and if 22 gets allowed, it is =
not

        filtered, but still closed.

        Glenn





        ----- Original Message -----

        From: "Jude DaShiell" <jdashiel@panix.com>

        To: "K0LNY_Glenn" <glenn@ervin.email>; "Gregory Nowak" =
<greg@gregn.net>;

        <speakup@linux-speakup.org>

        Sent: Friday, August 26, 2022 7:12 PM

        Subject: Re: hopefully some help with AntiX





        What happens if ufw --disable is run then the offending computer =
gets

        rebooted?



        Jude <jdashiel at panix dot com>

        "There are four boxes to be used in defense of liberty:

        soap, ballot, jury, and ammo. Please use in that order."

        -Ed Howdershelt (Author, 1940)



        .



        On Fri, 26 Aug 2022, K0LNY_Glenn wrote:



          I've considered that, and if I can get any port to open, I =
will gladly

          use

          telnet.

          Hell, if I could open all 1000 ports now, I would!

          Glenn

          ----- Original Message -----

          From: "Gregory Nowak" <greg@gregn.net>

          To: <speakup@linux-speakup.org>

          Sent: Friday, August 26, 2022 7:01 PM

          Subject: Re: hopefully some help with AntiX





          On Fri, Aug 26, 2022 at 02:06:13PM -0500, K0LNY_Glenn wrote:

            On the antiX I did

            sudo netcat -l 22

            and then on the pine 64, I did sudo nc 10.248.1.143 22

            and it does not seem to connect.

            I wonder if it is because I am using 22 to get from my =
windows to

            the

            Pine64, in order to go linux to linux.



          Port 22 is a privileged port. You should consider using 1024 =
or

          higher. If the listening port is open on the firewall, the =
commands

          you gave above should connect. If you type something on the =
client

          side, you should see it typed on the antiX machine, and the =
other way

          round. This will however not give you a login terminal. To do =
that,

          you need something that handles logins to listen on your =
netcat. This

          isn't something I've done, so can't give you more directions =
here. If

          you don't care about the connection being secure, which you =
don't seem

          to, you might as well try:



          apt install telnetd



          and open tcp 23 on your firewall.





          On Fri, Aug 26, 2022 at 04:12:28PM -0500, K0LNY_Glenn wrote:

            Well I thought I'd try iptables again.

            I finally got it to run without any errors, that long =
iptables

            command

            I

            got

            earlier.

            But nmap still sees no ports open on that host.

            Prior to running iptables, I tried to apt install it, and =
the

            message

            was

            that I'm already running the latest.

            So I needed to restart iptables with

            sudo service iptables restart

            and it can find no service iptables.

            I retyped it several times to be sure there was no typos.



          This is to be expected, iptables is not a system service.



            So I tried

            sudo systemctl restart iptables

            and the system cannot find systemctl



          Is antiX running sysvinit, openrc, or something else? This is

          something the antiX documentation should tell you. What does =
it use

          for PID1 or init?



            question:

            If I reboot, if the long iptables command worked, will it =
stick if I

            reboot?



          No.





          On Fri, Aug 26, 2022 at 05:57:37PM -0500, K0LNY_Glenn wrote:

            Well it seems ufw is there, but it must not be running

            automatically,

            but

            it

            does not fix the port problem.

            I did

            sudo ufw allow ssh

            it said tcp port allowed

            or something like that

            so I checked on the other computer with nmap

            100 ports closed

            So I did sudo ufw restart

            and the other computer said 999 ports filtered tcp port 22 =
closed.

            I've done iptables too, but that does not stay after a =
reboot.

            if I do sudo ufw status

            it shows tcp port 22 allow

            but it does not stay from a reboot.



          You need to save the firewall configuration once you changed =
it for it

          to persist across reboots. I haven't used ufw, so you will =
need to

          read up on how to do that.



          If port tcp 22 shows up as not filtered but closed, then the =
port is

          open, but there is no ssh service running.



          Greg




























------=_NextPart_000_0141_01D8BA04.42DD3B20
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=EF=BB=BF<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META content=3D"text/html; charset=3Dutf-8" http-equiv=3Dcontent-type>
<META name=3DGENERATOR content=3D"MSHTML 11.00.9600.19597">
<STYLE></STYLE>
</HEAD>
<BODY bgColor=3D#ffffff>
<DIV><FONT size=3D2 face=3DArial>If Fenrir requires git, that is a =
problem, because=20
git is not on AntiX, and I tried to apt install it, and it cannot find=20
it.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I am wondering if the errors are =
related to=20
git.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I'm using OCR on the screen, so it =
isn't easy to=20
obtain the messages, and impossible to save them.</FONT></DIV>
<DIV>&nbsp;</DIV>
<DIV><FONT size=3D2 face=3DArial>Glenn</FONT></DIV>
<DIV style=3D"FONT: 10pt arial">----- Original Message -----=20
<DIV style=3D"BACKGROUND: #e4e4e4; font-color: black"><B>From:</B> <A=20
title=3Dchrys@linux-a11y.org href=3D"mailto:chrys@linux-a11y.org">Linux =
A11y</A>=20
</DIV>
<DIV><B>To:</B> <A title=3Dglenn@ervin.email=20
href=3D"mailto:glenn@ervin.email">K0LNY_Glenn</A> </DIV>
<DIV><B>Cc:</B> <A title=3Dspeakup@linux-speakup.org=20
href=3D"mailto:speakup@linux-speakup.org">speakup@linux-speakup.org</A> =
; <A=20
title=3Ddidier@slint.fr href=3D"mailto:didier@slint.fr">Didier =
Spaier</A> </DIV>
<DIV><B>Sent:</B> Saturday, August 27, 2022 10:50 AM</DIV>
<DIV><B>Subject:</B> Re: hopefully some help with AntiX</DIV></DIV>
<DIV><BR></DIV>Howdy,
<DIV><BR></DIV>
<DIV>
<BLOCKQUOTE type=3D"cite">
  <DIV dir=3Dltr>
  <BLOCKQUOTE type=3D"cite">Well I ran check-dependencies.py and it gave =
a=20
    couple mysterious errors,&nbsp;</BLOCKQUOTE></DIV></BLOCKQUOTE>What =
errors you=20
get? Fenrir starts for testing also just from git folder without any =
need to=20
install. But it requires the needed dependencys and the correct pulse=20
setup.</DIV>
<DIV>See readme section pulseaudio.</DIV>
<DIV><A=20
href=3D"https://github.com/chrys87/fenrir#configure-pulseaudio">https://g=
ithub.com/chrys87/fenrir#configure-pulseaudio</A></DIV>
<DIV><BR></DIV>
<DIV>Also this is the speakup list and people tend to flame if someone =
is=20
=E2=80=9Eadvertising=E2=80=9C different software. To prevent this you =
can register to fenrirs=20
mailing list to get useful help. We will get it run for sure.</DIV>
<DIV><BR></DIV>
<DIV>Cheers chrys</DIV>
<DIV>
<DIV dir=3Dltr><BR>
<BLOCKQUOTE type=3D"cite">Am 27.08.2022 um 17:37 schrieb K0LNY_Glenn=20
  &lt;glenn@ervin.email&gt;:<BR><BR></BLOCKQUOTE></DIV>
<BLOCKQUOTE type=3D"cite">
  <DIV dir=3Dltr>=EF=BB=BF<SPAN>Hi Didier,</SPAN><BR><SPAN>I did try to =
join that forum=20
  about a week ago, and never got a confirmation </SPAN><BR><SPAN>for =
the=20
  forum.</SPAN><BR><SPAN>I also contacted someone associated with it and =
asked=20
  why accessibility </SPAN><BR><SPAN>wasn't built=20
  =
in.</SPAN><BR><SPAN>Thanks.</SPAN><BR><SPAN></SPAN><BR><SPAN></SPAN><BR><=
SPAN>-----=20
  Original Message ----- </SPAN><BR><SPAN>From: "Didier Spaier"=20
  &lt;didier@slint.fr&gt;</SPAN><BR><SPAN>To:=20
  &lt;speakup@linux-speakup.org&gt;</SPAN><BR><SPAN>Sent: Saturday, =
August 27,=20
  2022 12:22 PM</SPAN><BR><SPAN>Subject: Re: hopefully some help with=20
  =
AntiX</SPAN><BR><SPAN></SPAN><BR><SPAN></SPAN><BR><SPAN>Hi,</SPAN><BR><SP=
AN></SPAN><BR><SPAN>Installing=20
  a package intended for another distribution can work...=20
  But</SPAN><BR><SPAN>oftentimes does =
not.</SPAN><BR><SPAN></SPAN><BR><SPAN>If=20
  not yet done, I suggest that you post your issue in this=20
  =
forum:</SPAN><BR><SPAN>https://www.antixforum.com/</SPAN><BR><SPAN>Caveat=
: I=20
  do not know if it is accessible with a screen=20
  =
reader.</SPAN><BR><SPAN></SPAN><BR><SPAN>Cheers,</SPAN><BR><SPAN>Dider</S=
PAN><BR><SPAN></SPAN><BR><SPAN></SPAN><BR><SPAN></SPAN><BR><SPAN>Le=20
  27/08/2022 =C3=A0 15:06, K0LNY_Glenn a =C3=A9crit :</SPAN><BR>
  <BLOCKQUOTE type=3D"cite"><SPAN>Well I found espeak-ng for Debian =
Buster=20
    here:</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN>https://packages.debian.org/buster/espeak-ng</SPAN><B=
R></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>The file I downloaded=20
  was:</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN>espeak-ng_1.49.2+dfsg-8+deb10u1.debian.tar.xz</SPAN><=
BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>Looking in the archive, there are some =

    .install files, but I didn't find </SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>any</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>.sh files, so I don't know which file =
to use=20
    to get espeak installed on </SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>this</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>system.</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>Or if there is a .deb for RhVoice, =
that would=20
    work too, but did I download</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>the wrong espeak-ng file for =
installing=20
    it?</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>Thanks.</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>Glenn</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>----- Original Message -----=20
  </SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>From: "K0LNY_Glenn"=20
    &lt;glenn@ervin.email&gt;</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>To: "Jude DaShiell"=20
    &lt;jdashiel@panix.com&gt;; "Gregory Nowak" </SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE =
type=3D"cite"><SPAN>&lt;greg@gregn.net&gt;;</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE=20
  =
type=3D"cite"><SPAN>&lt;speakup@linux-speakup.org&gt;</SPAN><BR></BLOCKQU=
OTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>Sent: Saturday, August 27, 2022 9:46=20
    AM</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>Subject: Re: hopefully some help with=20
    AntiX</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>Well I ran check-dependencies.py and =
it gave a=20
    couple mysterious errors, </SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>but</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>it didn't =
help.</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>I ran install.sh =
again.</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>I ran sudo fenrir and again it only =
gave me=20
    the startup tone.</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>It acts like there is no TTS for it to =

    use.</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>Glenn</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>----- Original Message -----=20
  </SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>From: "Jude DaShiell"=20
    &lt;jdashiel@panix.com&gt;</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>To: "K0LNY_Glenn" =
&lt;glenn@ervin.email&gt;;=20
    "Gregory Nowak" &lt;greg@gregn.net&gt;;</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE=20
  =
type=3D"cite"><SPAN>&lt;speakup@linux-speakup.org&gt;</SPAN><BR></BLOCKQU=
OTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>Sent: Friday, August 26, 2022 9:55=20
    PM</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>Subject: Re: hopefully some help with=20
    AntiX</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>Also sysctl enable fenrir.service or =
is it=20
    fenrirscreenreader.service then</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>sysctl start fenrir.service or sysctl =
start=20
    fenrirscreenreader.service.</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>If a service is missing systemd will =
let you=20
    know about it.</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>Jude &lt;jdashiel at panix dot=20
    com&gt;</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>"There are four boxes to be used in =
defense of=20
    liberty:</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>soap, ballot, jury, and ammo. Please =
use in=20
    that order."</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>-Ed Howdershelt (Author,=20
  1940)</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>.</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN>On Fri, 26 Aug 2022, K0LNY_Glenn=20
    wrote:</SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite"><SPAN>Well I ran install.sh on the system, =
and=20
      pressed enter where it said =
to</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite"><SPAN>proceed, and it said was finished, =
and it=20
      said to type</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite"><SPAN>sudo =
fenrir</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite"><SPAN>to test it, and all I can get is the =

      two-tone sound when fenrir =
starts,</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE =
type=3D"cite"><SPAN>but</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite"><SPAN>no =
TTS.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite"><SPAN>Should have that installed espeak or =

      espeak-ng?</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE =
type=3D"cite"><SPAN>Thanks.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite"><SPAN>----- Original Message=20
    -----</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite"><SPAN>From: "Jude DaShiell"=20
      &lt;jdashiel@panix.com&gt;</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite"><SPAN>To: "K0LNY_Glenn" =
&lt;glenn@ervin.email&gt;;=20
      "Gregory Nowak" =
&lt;greg@gregn.net&gt;;</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN>&lt;speakup@linux-speakup.org&gt;</SPAN><BR></BLOCKQU=
OTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite"><SPAN>Sent: Friday, August 26, 2022 8:27=20
      PM</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite"><SPAN>Subject: Re: hopefully some help =
with=20
      AntiX</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite"><SPAN>For now and not forever, why not do =
apt=20
      purge ufw?</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite"><SPAN>Jude &lt;jdashiel at panix dot=20
      com&gt;</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite"><SPAN>"There are four boxes to be used in =
defense=20
      of liberty:</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite"><SPAN>soap, ballot, jury, and ammo. Please =
use in=20
      that order."</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite"><SPAN>-Ed Howdershelt (Author,=20
    1940)</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE =
type=3D"cite"><SPAN>.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite"><SPAN>On Fri, 26 Aug 2022, K0LNY_Glenn=20
      wrote:</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite"><SPAN>Then all 1000 ports show up in =
nmap as=20
        closed.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite"><SPAN>So it seems if I allow a port in =
ufw, it=20
        shows up as closed, but =
not</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE=20
  =
type=3D"cite"><SPAN>filtered.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCK=
QUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite"><SPAN>So filtered means ufw is running, =
and if=20
        22 gets allowed, it is =
not</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite"><SPAN>filtered, but still=20
      closed.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE=20
  =
type=3D"cite"><SPAN>Glenn</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOT=
E>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE=20
  type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE=20
  type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite"><SPAN>----- Original Message=20
      -----</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite"><SPAN>From: "Jude DaShiell"=20
        =
&lt;jdashiel@panix.com&gt;</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUO=
TE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite"><SPAN>To: "K0LNY_Glenn"=20
        &lt;glenn@ervin.email&gt;; "Gregory Nowak"=20
        =
&lt;greg@gregn.net&gt;;</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>=

  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE=20
        =
type=3D"cite"><SPAN>&lt;speakup@linux-speakup.org&gt;</SPAN><BR></BLOCKQU=
OTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite"><SPAN>Sent: Friday, August 26, 2022 7:12 =

        PM</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite"><SPAN>Subject: Re: hopefully some help =
with=20
        AntiX</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE=20
  type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE=20
  type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite"><SPAN>What happens if ufw --disable is =
run then=20
        the offending computer =
gets</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE=20
  =
type=3D"cite"><SPAN>rebooted?</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCK=
QUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE=20
  type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite"><SPAN>Jude &lt;jdashiel at panix dot=20
        com&gt;</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite"><SPAN>"There are four boxes to be used =
in=20
        defense of =
liberty:</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite"><SPAN>soap, ballot, jury, and ammo. =
Please use=20
        in that =
order."</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite"><SPAN>-Ed Howdershelt (Author,=20
      1940)</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE=20
  type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE=20
  =
type=3D"cite"><SPAN>.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE=20
  type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite"><SPAN>On Fri, 26 Aug 2022, K0LNY_Glenn=20
        wrote:</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE=20
  type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>I've considered that, and if I =
can get=20
          any port to open, I will=20
    =
gladly</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN>use</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>=
</BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN>telnet.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQU=
OTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>Hell, if I could open all 1000 =
ports=20
          now, I =
would!</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN>Glenn</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOT=
E></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>----- Original Message=20
        =
-----</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>From: "Gregory Nowak"=20
          =
&lt;greg@gregn.net&gt;</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE><=
/BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>To:=20
          =
&lt;speakup@linux-speakup.org&gt;</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>Sent: Friday, August 26, 2022 =
7:01=20
          =
PM</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>Subject: Re: hopefully some help =
with=20
          =
AntiX</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>On Fri, Aug 26, 2022 at =
02:06:13PM=20
          -0500, K0LNY_Glenn=20
  wrote:</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>On the antiX I=20
          =
did</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCK=
QUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>sudo netcat -l=20
        =
22</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQ=
UOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>and then on the pine 64, I did =
sudo nc=20
            10.248.1.143=20
    =
22</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQ=
UOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>and it does not seem to=20
            =
connect.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></=
BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>I wonder if it is because I am =
using=20
            22 to get from my windows=20
      =
to</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQ=
UOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE=20
      =
type=3D"cite"><SPAN>the</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>=
</BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>Pine64, in order to go linux =
to=20
            =
linux.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BL=
OCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>Port 22 is a privileged port. =
You should=20
          consider using 1024=20
  or</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>higher. If the listening port is =
open on=20
          the firewall, the=20
  =
commands</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>you gave above should connect. =
If you=20
          type something on the=20
    =
client</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>side, you should see it typed on =
the=20
          antiX machine, and the other=20
    way</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>round. This will however not =
give you a=20
          login terminal. To do=20
  that,</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>you need something that handles =
logins=20
          to listen on your netcat.=20
    This</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>isn't something I've done, so =
can't give=20
          you more directions here.=20
    If</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>you don't care about the =
connection=20
          being secure, which you don't=20
    seem</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>to, you might as well=20
        =
try:</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>apt install=20
      =
telnetd</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>and open tcp 23 on your=20
          =
firewall.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>On Fri, Aug 26, 2022 at =
04:12:28PM=20
          -0500, K0LNY_Glenn=20
  wrote:</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>Well I thought I'd try =
iptables=20
            =
again.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BL=
OCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>I finally got it to run =
without any=20
            errors, that long=20
      =
iptables</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></=
BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE=20
        =
type=3D"cite"><SPAN>command</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQU=
OTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE=20
      =
type=3D"cite"><SPAN>I</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></=
BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE=20
      =
type=3D"cite"><SPAN>got</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>=
</BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE=20
        =
type=3D"cite"><SPAN>earlier.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQ=
UOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>But nmap still sees no ports =
open on=20
            that=20
  =
host.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLO=
CKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>Prior to running iptables, I =
tried to=20
            apt install it, and=20
    =
the</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCK=
QUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE=20
        =
type=3D"cite"><SPAN>message</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQU=
OTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE=20
      =
type=3D"cite"><SPAN>was</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>=
</BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>that I'm already running the=20
            =
latest.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>So I needed to restart =
iptables=20
            =
with</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOC=
KQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>sudo service iptables=20
            =
restart</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>and it can find no service=20
            =
iptables.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE><=
/BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>I retyped it several times to =
be sure=20
            there was no=20
    =
typos.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BL=
OCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>This is to be expected, iptables =
is not=20
          a system=20
  =
service.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>So I=20
        =
tried</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLO=
CKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>sudo systemctl restart=20
            =
iptables</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></=
BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>and the system cannot find=20
            =
systemctl</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE><=
/BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>Is antiX running sysvinit, =
openrc, or=20
          something else? This=20
  is</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>something the antiX =
documentation should=20
          tell you. What does it=20
  use</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>for PID1 or=20
      =
init?</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE=20
        =
type=3D"cite"><SPAN>question:</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCK=
QUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>If I reboot, if the long =
iptables=20
            command worked, will it stick if=20
      =
I</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQU=
OTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE=20
        =
type=3D"cite"><SPAN>reboot?</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQU=
OTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN>No.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>=
</BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>On Fri, Aug 26, 2022 at =
05:57:37PM=20
          -0500, K0LNY_Glenn=20
  wrote:</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>Well it seems ufw is there, =
but it=20
            must not be=20
    =
running</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE=20
        =
type=3D"cite"><SPAN>automatically,</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></=
BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE=20
      =
type=3D"cite"><SPAN>but</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>=
</BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE=20
      =
type=3D"cite"><SPAN>it</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE><=
/BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>does not fix the port=20
            =
problem.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></=
BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>I=20
      =
did</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCK=
QUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>sudo ufw allow=20
          =
ssh</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCK=
QUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>it said tcp port=20
          =
allowed</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>or something like=20
          =
that</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOC=
KQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>so I checked on the other =
computer=20
            with=20
  =
nmap</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOC=
KQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>100 ports=20
        =
closed</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BL=
OCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>So I did sudo ufw=20
          =
restart</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>and the other computer said =
999 ports=20
            filtered tcp port 22=20
      =
closed.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>I've done iptables too, but =
that does=20
            not stay after a=20
    =
reboot.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>if I do sudo ufw=20
          =
status</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BL=
OCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>it shows tcp port 22=20
          =
allow</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLO=
CKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite">
          <BLOCKQUOTE type=3D"cite"><SPAN>but it does not stay from a=20
            =
reboot.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>You need to save the firewall=20
          configuration once you changed it for=20
      it</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>to persist across reboots. I =
haven't=20
          used ufw, so you will need=20
    to</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>read up on how to do=20
        =
that.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>If port tcp 22 shows up as not =
filtered=20
          but closed, then the port=20
    is</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE type=3D"cite"><SPAN>open, but there is no ssh =
service=20
          =
running.</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN>Greg</SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE=
></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE type=3D"cite">
        <BLOCKQUOTE=20
    =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE></B=
LOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE=20
  type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE=20
  type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE type=3D"cite">
      <BLOCKQUOTE=20
  type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite">
    <BLOCKQUOTE =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE>
  <BLOCKQUOTE=20
  =
type=3D"cite"><SPAN></SPAN><BR></BLOCKQUOTE><SPAN></SPAN><BR><SPAN></SPAN=
><BR></DIV></BLOCKQUOTE></DIV></BODY></HTML>

------=_NextPart_000_0141_01D8BA04.42DD3B20--


