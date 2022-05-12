Return-Path: <speakup+bounces-424-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 92270525801
	for <lists+speakup@lfdr.de>; Fri, 13 May 2022 00:51:45 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0D14E381635; Thu, 12 May 2022 18:51:45 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F342D381625
	for <lists+speakup@lfdr.de>; Thu, 12 May 2022 18:51:44 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 78AFA380DED; Thu, 12 May 2022 18:51:42 -0400 (EDT)
Received: from smtprelay02.ispgateway.de (smtprelay02.ispgateway.de [80.67.29.24])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 35F7A380DDA
	for <speakup@linux-speakup.org>; Thu, 12 May 2022 18:51:42 -0400 (EDT)
Received: from [37.4.230.120] (helo=smtpclient.apple)
	by smtprelay02.ispgateway.de with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>)
	id 1npHeh-0006k4-50; Fri, 13 May 2022 00:51:35 +0200
Content-Type: multipart/alternative; boundary=Apple-Mail-BDDD44A4-27B3-490E-BCA6-893240682ACF
Content-Transfer-Encoding: 7bit
From: Linux A11y <chrys@linux-a11y.org>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (1.0)
Subject: Re: Speakup Left Out of Ubuntu kernel (again)
Date: Fri, 13 May 2022 00:51:32 +0200
Message-Id: <3AE1FA2A-DDF1-4038-B78A-B154DDBD08FB@linux-a11y.org>
References: <180ba1d15f0.2923.7f5f0e00eb39c74e480406aa7dcc21f8@panix.com>
Cc: Monica Ayhens-Madon <monica.ayhens.madon@canonical.com>,
 "John G. Heim" <jheim@wisc.edu>,
 Adrian Orjales <adriorjalesvidal31@gmail.com>,
 "John G. Heim" <jheim@math.wisc.edu>, speakup@linux-speakup.org
In-Reply-To: <180ba1d15f0.2923.7f5f0e00eb39c74e480406aa7dcc21f8@panix.com>
To: jdashiel@panix.com
X-Mailer: iPhone Mail (19E258)
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


--Apple-Mail-BDDD44A4-27B3-490E-BCA6-893240682ACF
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Howdy,

Not sure if this helps, but you can also use fenrir, what does not require a=
ny kind of kernel involved. In fact there is no need for installing at all (=
as it could used from git tree).

https://github.com/chrys87/fenrir

Cheers chrys
> Am 12.05.2022 um 23:11 schrieb jdashiel@panix.com:
>=20
> =EF=BB=BF
> On the ubuntu-accessibility list I asked if a sound message at substantial=
 volume could be played to let installers know speakup can't yet work with a=
n existing kernel bug.  Now that brings me to a couple other questions that m=
ay be useful.  For the current case if fenrir were installed, could it run a=
s a stop gap until speakup can be made to run?  Also, if fenrir can run, cou=
ld a script run after a sound message got played to install and activate fen=
rir for the console?  Once speakup became available the workaround code to h=
andle this bug could be removed.  It would be helpful to installers if a not=
ification about speakup and the kernel having been fixed would come up on th=
eir machines.  I realize this is a big ask, and in my case I have no linux s=
upport local to me blind or sighted that could sort things out with the poss=
ible exception of be my eyes and their support while useful can at best be p=
artial.
>=20
> On May 12, 2022 2:37:44 PM Monica Ayhens-Madon <monica.ayhens.madon@canoni=
cal.com> wrote:
>=20
>> One of the things the Accessibility Guild is working on is to make our pr=
ocesses around accessibility stronger. When we had a devoted person for this=
, we just took the process for granted, and when they left, the process did t=
oo. And obviously, this has to be frustrating and disheartening for Speakup u=
sers. So, long answer short - I hope this is the last time we have to go thr=
ough this, and I'll do what I can to help make that happen.
>>=20
>> On Thu, May 12, 2022 at 5:18 PM John G. Heim <jheim@wisc.edu> wrote:
>>> Well, that's great but are we going to have to go through this again for=
 Kinetic Kudu, 22.10? The same thing happened now for Hirsute, Impish, and J=
ammy.
>>>=20
>>>=20
>>>=20
>>> On 5/11/22 11:50, Monica Ayhens-Madon wrote:
>>>> Adrian,
>>>>=20
>>>> According to my colleague, if the output of uname -r ends with 'generic=
' on the ubuntu server 22.04 LTS you're running, it will be fixed soon.=20
>>>>=20
>>>> (Sorry I can't test it myself - I am stuck abroad with a really minimal=
 setup and this is my first day back at work after being ill. It's almost 7 P=
M here so I'll be winding down soon.)
>>>>=20
>>>> Thank you for offering to share your insight and feedback - it's very a=
ppreciated!
>>>>=20
>>>> Monica
>>>>=20
>>>> On Wed, May 11, 2022 at 6:05 PM Adrian Orjales <adriorjalesvidal31@gmai=
l.com> wrote:
>>>>> Sure, I'd be happy to help. Feel free to share my email address with y=
our colleagues.
>>>>> The version was ubuntu server 22.04 lts. I will install it again and t=
est it more, and also the desktop version to try to give my best feedback po=
ssible.
>>>>> Thanks=20
>>>>>=20
>>>>> El El mi=C3=A9, 11 may 2022 a las 17:15, Monica Ayhens-Madon <monica.a=
yhens.madon@canonical.com> escribi=C3=B3:
>>>>>> Adrian, could you let me know more about which specific version of se=
rver? I'm talking to one of my colleagues on the kernel team and he needs mo=
re information.=20
>>>>>>=20
>>>>>> And I'm only one of a group of people at Canonical working on accessi=
bility. My main job is to be a bridge between them and the community. Can I g=
ive the Accessibility Guild your address (and anyone else's e-mail address, i=
f you'd like to talk to us about how we can improve accessibility), we would=
 like to know your feedback and suggestions!
>>>>>>=20
>>>>>> On Wed, May 11, 2022 at 3:59 PM Adrian Orjales <adriorjalesvidal31@gm=
ail.com> wrote:
>>>>>>> Hello  Monica
>>>>>>> Does this affect also ubuntu server? I've installed Ubuntu server  a=
nd no speakup module was found when i tried to load it.=20
>>>>>>>=20
>>>>>>> I'm very happy to know about you, because i think there are a lot of=
 things in ubuntu to talk about accessibility. If you are open to listen, i w=
ill be happy to help with feedback.
>>>>>>> Thanks
>>>>>>>=20
>>>>>>> El El mi=C3=A9, 11 may 2022 a las 15:38, Monica Ayhens-Madon <monica=
.ayhens.madon@canonical.com> escribi=C3=B3:
>>>>>>>> Hello!
>>>>>>>>=20
>>>>>>>> I'm Monica Ayhens-Madon from the Community Team at Canonical, and I=
'm part of our Accessibility Guild. I've had a chat with people on our kerne=
l team and there is an existing bug being fixed, and Speakup should be avail=
able in updates soon. Please feel free to reach out to me with any questions=
 or any other accessibility issues I can raise internally.
>>>>>>>>=20
>>>>>>>> Cheers,
>>>>>>>>=20
>>>>>>>> Monica
>>>>>>>>=20
>>>>>>>> On Tue, May 10, 2022 at 3:19 AM John G. Heim <jheim@math.wisc.edu> w=
rote:
>>>>>>>>> Arrgh! Speakup seems not to have been compiled into the Ubuntu=20
>>>>>>>>> Jammy/22.04 kernel. Same thing as in 21.04 and 21.10. Man! Well, I=
 guess=20
>>>>>>>>> I'll have to file a bug report ... again.
>>>>>>>>>=20
>>>>>>>>> --=20
>>>>>>>>> ###
>>>>>>>>> John G. Heim, 608-263-4189, jheim@math.wisc.edu
>>>>>>>>>=20
>>>>>>>=20
>=20
>=20

--Apple-Mail-BDDD44A4-27B3-490E-BCA6-893240682ACF
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Howdy,<div><br></div><div>Not sure if this h=
elps, but you can also use fenrir, what does not require any kind of kernel i=
nvolved. In fact there is no need for installing at all (as it could used fr=
om git tree).</div><div><br><div dir=3D"ltr"><a href=3D"https://github.com/c=
hrys87/fenrir">https://github.com/chrys87/fenrir</a></div><div dir=3D"ltr"><=
br></div><div dir=3D"ltr">Cheers chrys<br><blockquote type=3D"cite">Am 12.05=
.2022 um 23:11 schrieb jdashiel@panix.com:<br><br></blockquote></div><blockq=
uote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF


<div dir=3D"auto">
<div dir=3D"auto">On the ubuntu-accessibility list I asked if a sound messag=
e at substantial volume could be played to let installers know speakup can't=
 yet work with an existing kernel bug.&nbsp; Now that brings me to a couple o=
ther questions that may be useful.&nbsp; For the current case if fenrir were=
 installed, could it run as a stop gap until speakup can be made to run?&nbs=
p; Also, if fenrir can run, could a script run after a sound message got pla=
yed to install and activate fenrir for the console?&nbsp; Once speakup becam=
e available the workaround code to handle this bug could be removed.&nbsp; I=
t would be helpful to installers if a notification about speakup and the ker=
nel having been fixed would come up on their machines.&nbsp; I realize this i=
s a big ask, and in my case I have no linux support local to me blind or sig=
hted that could sort things out with the possible exception of be my eyes an=
d their support while useful can at best be partial.</div><div dir=3D"auto">=
<br></div>
<div id=3D"aqm-original" style=3D"color: black;">
<!-- body start -->
<div class=3D"aqm-original-body">
<div style=3D"color: black;">
<p style=3D"color: black; font-size: 10pt; font-family: sans-serif; margin: 8=
pt 0;">On May 12, 2022 2:37:44 PM Monica Ayhens-Madon &lt;monica.ayhens.mado=
n@canonical.com&gt; wrote:</p>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75e=
x; border-left: 1px solid #808080; padding-left: 0.75ex;">
<div dir=3D"ltr">One of the things the Accessibility Guild is working on is t=
o make our processes around accessibility stronger. When we had a devoted pe=
rson for this, we just took the process for granted, and when they left, the=
 process did too. And obviously, this has to be frustrating and disheartenin=
g for Speakup users. So, long answer short - I hope this is the last time we=
 have to go through this, and I'll do what I can to help make that happen.</=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, May 12, 2022 at 5:18 PM John G. Heim &lt;<a href=3D"mailto:jheim@wisc.ed=
u">jheim@wisc.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">

 =20
  <div>
    <p>Well, that's great but are we going to have to go through this
      again for Kinetic Kudu, 22.10? The same thing happened now for
      Hirsute, Impish, and Jammy.<br>
    </p>
    <p><br>
    </p>
    <div>On 5/11/22 11:50, Monica Ayhens-Madon
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Adrian,</div>
        <div><br>
        </div>
        According to my colleague, if the output of uname -r ends with
        'generic' on the ubuntu server 22.04 LTS you're running, it will
        be fixed soon.&nbsp;
        <div><br>
        </div>
        <div>(Sorry I can't test it myself - I am stuck abroad with a
          really minimal setup and this is my first day back at work
          after being ill. It's almost 7 PM here so I'll be winding down
          soon.)</div>
        <div><br>
        </div>
        <div>Thank you for offering to share your insight and feedback -
          it's very appreciated!</div>
        <div><br>
        </div>
        <div>Monica</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 11, 2022 at 6:05
          PM Adrian Orjales &lt;<a href=3D"mailto:adriorjalesvidal31@gmail.c=
om" target=3D"_blank">adriorjalesvidal31@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"auto">Sure, I'd be happy to help. Feel free to share
            my email address with your colleagues.</div>
          <div dir=3D"auto">The version was ubuntu server 22.04 lts. I
            will install it again and test it more, and also the desktop
            version to try to give my best feedback possible.</div>
          <div dir=3D"auto">Thanks&nbsp;</div>
          <div><br>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">El El mi=C3=A9, 11 may 2=
022 a
                las 17:15, Monica Ayhens-Madon &lt;<a href=3D"mailto:monica.=
ayhens.madon@canonical.com" target=3D"_blank">monica.ayhens.madon@canonical.=
com</a>&gt;
                escribi=C3=B3:<br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                <div dir=3D"ltr">Adrian, could you let me know more about
                  which specific version of server? I'm talking to one
                  of my colleagues on the kernel team and he needs more
                  information.&nbsp;
                  <div><br>
                  </div>
                  <div>And I'm only one of a group of people at
                    Canonical working on accessibility. My main job is
                    to be a bridge between them and the community. Can I
                    give the Accessibility Guild your address (and
                    anyone else's e-mail address, if you'd like to talk
                    to us about how we can improve accessibility), we
                    would like to know your feedback and suggestions!</div>
                </div>
                <br>
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 11, 2022=

                    at 3:59 PM Adrian Orjales &lt;<a href=3D"mailto:adriorja=
lesvidal31@gmail.com" target=3D"_blank">adriorjalesvidal31@gmail.com</a>&gt;=

                    wrote:<br>
                  </div>
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                    <div dir=3D"auto">Hello &nbsp;Monica</div>
                    <div dir=3D"auto">Does this affect also ubuntu server?
                      I've installed Ubuntu server &nbsp;and no speakup
                      module was found when i tried to load it.&nbsp;</div>
                    <div dir=3D"auto"><br>
                    </div>
                    <div dir=3D"auto">I'm very happy to know about you,
                      because i think there are a lot of things in
                      ubuntu to talk about accessibility. If you are
                      open to listen, i will be happy to help with
                      feedback.</div>
                    <div dir=3D"auto">Thanks</div>
                    <div><br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">El El mi=C3=A9=
, 11
                          may 2022 a las 15:38, Monica Ayhens-Madon &lt;<a h=
ref=3D"mailto:monica.ayhens.madon@canonical.com" target=3D"_blank">monica.ay=
hens.madon@canonical.com</a>&gt;
                          escribi=C3=B3:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"ltr">Hello!
                            <div><br>
                            </div>
                            <div>I'm Monica Ayhens-Madon from the
                              Community Team at Canonical, and I'm part
                              of our Accessibility Guild. I've had a
                              chat with people on our kernel team and
                              there is an existing bug being fixed, and
                              Speakup should be available in updates
                              soon. Please feel free to reach out to me
                              with any questions or any other
                              accessibility issues I can raise
                              internally.</div>
                            <div><br>
                            </div>
                            <div>Cheers,</div>
                            <div><br>
                            </div>
                            <div>Monica</div>
                          </div>
                          <br>
                          <div class=3D"gmail_quote">
                            <div dir=3D"ltr" class=3D"gmail_attr">On Tue,
                              May 10, 2022 at 3:19 AM John G. Heim &lt;<a hr=
ef=3D"mailto:jheim@math.wisc.edu" target=3D"_blank">jheim@math.wisc.edu</a>&=
gt;
                              wrote:<br>
                            </div>
                            <blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>Arrgh!
                              Speakup seems not to have been compiled
                              into the Ubuntu <br>
                              Jammy/22.04 kernel. Same thing as in 21.04
                              and 21.10. Man! Well, I guess <br>
                              I'll have to file a bug report ... again.<br>
                              <br>
                              -- <br>
                              ###<br>
                              John G. Heim, 608-263-4189, <a href=3D"mailto:=
jheim@math.wisc.edu" target=3D"_blank">jheim@math.wisc.edu</a><br>
                              <br>
                            </blockquote>
                          </div>
                        </blockquote>
                      </div>
                    </div>
                    <br>
                  </blockquote>
                </div>
              </blockquote>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
  </div>

</blockquote></div>
</blockquote>
</div>
</div>
<!-- body end -->

</div><div dir=3D"auto"><br></div>
</div>

</div></blockquote></div></body></html>=

--Apple-Mail-BDDD44A4-27B3-490E-BCA6-893240682ACF--

