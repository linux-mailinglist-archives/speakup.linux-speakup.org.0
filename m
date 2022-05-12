Return-Path: <speakup+bounces-423-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C6AA55256DE
	for <lists+speakup@lfdr.de>; Thu, 12 May 2022 23:12:00 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=BjAJ30D2;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4C169380E01; Thu, 12 May 2022 17:12:00 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7FB48380E16
	for <lists+speakup@lfdr.de>; Thu, 12 May 2022 17:11:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A6DCF380DDD; Thu, 12 May 2022 17:11:53 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2877C3809CD
	for <speakup@linux-speakup.org>; Thu, 12 May 2022 17:11:53 -0400 (EDT)
Received: from [192.168.1.155] (pool-98-115-237-103.phlapa.fios.verizon.net [98.115.237.103])
	by mailbackend.panix.com (Postfix) with ESMTPSA id 4Kzkx40PDQz18bk;
	Thu, 12 May 2022 17:11:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1652389912; bh=GOc9V+f4e7XESge8BlDJnmxnKjSB+z8L39Pqt7RiKxA=;
	h=From:To:CC:Date:In-Reply-To:References:Subject;
	b=BjAJ30D2wTL3cKn2i1Hw6BlQBsamiEV6znpOEi6W66/+WXjdIu51pYG3yzdCC5QYs
	 ILcN8mUTUywYDW5nZT6htmILXgzxGWQek5UOWihKtxdzwZAbpd4/vEmTTwLF6OPDHQ
	 Svo3a9Ny9MQ3K2m9XfVzAjjV+sdNW/UEB5eh0ZIs=
From: <jdashiel@panix.com>
To: "Monica Ayhens-Madon" <monica.ayhens.madon@canonical.com>, "John G. Heim" <jheim@wisc.edu>
CC: Adrian Orjales <adriorjalesvidal31@gmail.com>, "John G. Heim" <jheim@math.wisc.edu>, <speakup@linux-speakup.org>
Date: Thu, 12 May 2022 17:11:50 -0400
Message-ID: <180ba1d15f0.2923.7f5f0e00eb39c74e480406aa7dcc21f8@panix.com>
In-Reply-To: <CA+8tiZX35GEt9vQvjDx3fCWxtim58StyHSBax-SXu-4Bqv9uFw@mail.gmail.com>
References: <81afd3ae-b377-800f-dc94-0dfe301011fe@math.wisc.edu>
 <CA+8tiZWEfEd_mFh_Eaj0v52m=VxdE2esLwC9zDzD3aE=DJ-z9Q@mail.gmail.com>
 <CAE600uaFd06wnf8EGwBbhBg+y_-dEtKV9SqyvOx1GzRq0T97xw@mail.gmail.com>
 <CA+8tiZWWScjAXUZSdYRzTO5bRoxrZNXHAvZ5ovE1nW5EkqKTnA@mail.gmail.com>
 <CAE600uYKa+PaK5gch5BxobWXyy4gkLz6GufzHQ+NvyDZ4yFTUQ@mail.gmail.com>
 <CA+8tiZX5FNCPzRY6rE=otHjvv3ufX-3ybW87_TOJpG0Eui3-mQ@mail.gmail.com>
 <300f04b5-4b35-7d53-e39d-7ecda7f856fb@wisc.edu>
 <CA+8tiZX35GEt9vQvjDx3fCWxtim58StyHSBax-SXu-4Bqv9uFw@mail.gmail.com>
User-Agent: AquaMail/1.35.0 (build: 103500130)
Subject: Re: Speakup Left Out of Ubuntu kernel (again)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="180ba1d17f6561129236932391"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.
--180ba1d17f6561129236932391
Content-Type: text/plain; format=flowed; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On the ubuntu-accessibility list I asked if a sound message at substantial 
volume could be played to let installers know speakup can't yet work with 
an existing kernel bug.  Now that brings me to a couple other questions 
that may be useful.  For the current case if fenrir were installed, could 
it run as a stop gap until speakup can be made to run?  Also, if fenrir can 
run, could a script run after a sound message got played to install and 
activate fenrir for the console?  Once speakup became available the 
workaround code to handle this bug could be removed.  It would be helpful 
to installers if a notification about speakup and the kernel having been 
fixed would come up on their machines.  I realize this is a big ask, and in 
my case I have no linux support local to me blind or sighted that could 
sort things out with the possible exception of be my eyes and their support 
while useful can at best be partial.

On May 12, 2022 2:37:44 PM Monica Ayhens-Madon 
<monica.ayhens.madon@canonical.com> wrote:
> One of the things the Accessibility Guild is working on is to make our 
> processes around accessibility stronger. When we had a devoted person for 
> this, we just took the process for granted, and when they left, the process 
> did too. And obviously, this has to be frustrating and disheartening for 
> Speakup users. So, long answer short - I hope this is the last time we have 
> to go through this, and I'll do what I can to help make that happen.
>
> On Thu, May 12, 2022 at 5:18 PM John G. Heim <jheim@wisc.edu> wrote:
> Well, that's great but are we going to have to go through this again for 
> Kinetic Kudu, 22.10? The same thing happened now for Hirsute, Impish, and 
> Jammy.
>
> On 5/11/22 11:50, Monica Ayhens-Madon wrote:
>> Adrian,
>>
>> According to my colleague, if the output of uname -r ends with 'generic' on 
>> the ubuntu server 22.04 LTS you're running, it will be fixed soon.
>>
>> (Sorry I can't test it myself - I am stuck abroad with a really minimal 
>> setup and this is my first day back at work after being ill. It's almost 7 
>> PM here so I'll be winding down soon.)
>>
>> Thank you for offering to share your insight and feedback - it's very 
>> appreciated!
>>
>> Monica
>>
>> On Wed, May 11, 2022 at 6:05 PM Adrian Orjales 
>> <adriorjalesvidal31@gmail.com> wrote:
>> Sure, I'd be happy to help. Feel free to share my email address with your 
>> colleagues.
>> The version was ubuntu server 22.04 lts. I will install it again and test 
>> it more, and also the desktop version to try to give my best feedback possible.
>> Thanks
>>
>> El El mié, 11 may 2022 a las 17:15, Monica Ayhens-Madon 
>> <monica.ayhens.madon@canonical.com> escribió:
>> Adrian, could you let me know more about which specific version of server? 
>> I'm talking to one of my colleagues on the kernel team and he needs more 
>> information.
>>
>> And I'm only one of a group of people at Canonical working on 
>> accessibility. My main job is to be a bridge between them and the 
>> community. Can I give the Accessibility Guild your address (and anyone 
>> else's e-mail address, if you'd like to talk to us about how we can improve 
>> accessibility), we would like to know your feedback and suggestions!
>>
>> On Wed, May 11, 2022 at 3:59 PM Adrian Orjales 
>> <adriorjalesvidal31@gmail.com> wrote:
>> Hello  Monica
>> Does this affect also ubuntu server? I've installed Ubuntu server  and no 
>> speakup module was found when i tried to load it.
>>
>> I'm very happy to know about you, because i think there are a lot of things 
>> in ubuntu to talk about accessibility. If you are open to listen, i will be 
>> happy to help with feedback.
>> Thanks
>>
>> El El mié, 11 may 2022 a las 15:38, Monica Ayhens-Madon 
>> <monica.ayhens.madon@canonical.com> escribió:
>> Hello!
>>
>> I'm Monica Ayhens-Madon from the Community Team at Canonical, and I'm part 
>> of our Accessibility Guild. I've had a chat with people on our kernel team 
>> and there is an existing bug being fixed, and Speakup should be available 
>> in updates soon. Please feel free to reach out to me with any questions or 
>> any other accessibility issues I can raise internally.
>>
>> Cheers,
>>
>> Monica
>>
>> On Tue, May 10, 2022 at 3:19 AM John G. Heim <jheim@math.wisc.edu> wrote:
>> Arrgh! Speakup seems not to have been compiled into the Ubuntu
>> Jammy/22.04 kernel. Same thing as in 21.04 and 21.10. Man! Well, I guess
>> I'll have to file a bug report ... again.
>>
>> --
>> ###
>> John G. Heim, 608-263-4189, jheim@math.wisc.edu


--180ba1d17f6561129236932391
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.=
w3.org/TR/html4/loose.dtd">
<html>
<body>
<div dir=3D"auto">
<div dir=3D"auto">On the ubuntu-accessibility list I asked if a sound messa=
ge at substantial volume could be played to let installers know speakup can=
't yet work with an existing kernel bug.&nbsp; Now that brings me to a coup=
le other questions that may be useful.&nbsp; For the current case if fenrir=
 were installed, could it run as a stop gap until speakup can be made to ru=
n?&nbsp; Also, if fenrir can run, could a script run after a sound message =
got played to install and activate fenrir for the console?&nbsp; Once speak=
up became available the workaround code to handle this bug could be removed=
.&nbsp; It would be helpful to installers if a notification about speakup a=
nd the kernel having been fixed would come up on their machines.&nbsp; I re=
alize this is a big ask, and in my case I have no linux support local to me=
 blind or sighted that could sort things out with the possible exception of=
 be my eyes and their support while useful can at best be partial.</div><di=
v dir=3D'auto'><br></div>
<div id=3D"aqm-original" style=3D"color: black;">
<!-- body start -->
<div class=3D"aqm-original-body">
<div style=3D"color: black;">
<p style=3D"color: black; font-size: 10pt; font-family: sans-serif; margin:=
 8pt 0;">On May 12, 2022 2:37:44 PM Monica Ayhens-Madon &lt;monica.ayhens.m=
adon@canonical.com&gt; wrote:</p>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #808080; padding-left: 0.75ex;">
<div dir=3D"ltr">One of the things the Accessibility Guild is working on is=
 to make our processes around accessibility stronger. When we had a devoted=
 person for this, we just took the process for granted, and when they left,=
 the process did too. And obviously, this has to be frustrating and dishear=
tening for Speakup users. So, long answer short - I hope this is the last t=
ime we have to go through this, and I'll do what I can to help make that ha=
ppen.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Thu, May 12, 2022 at 5:18 PM John G. Heim &lt;<a href=3D"mailto:jhe=
im@wisc.edu">jheim@wisc.edu</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">

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
          PM Adrian Orjales &lt;<a href=3D"mailto:adriorjalesvidal31@gmail.=
com" target=3D"_blank">adriorjalesvidal31@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"auto">Sure, I'd be happy to help. Feel free to share
            my email address with your colleagues.</div>
          <div dir=3D"auto">The version was ubuntu server 22.04 lts. I
            will install it again and test it more, and also the desktop
            version to try to give my best feedback possible.</div>
          <div dir=3D"auto">Thanks&nbsp;</div>
          <div><br>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">El El mi=C3=A9, 11 may =
2022 a
                las 17:15, Monica Ayhens-Madon &lt;<a href=3D"mailto:monica=
.ayhens.madon@canonical.com" target=3D"_blank">monica.ayhens.madon@canonica=
l.com</a>&gt;
                escribi=C3=B3:<br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
                  <div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 11, 202=
2
                    at 3:59 PM Adrian Orjales &lt;<a href=3D"mailto:adriorj=
alesvidal31@gmail.com" target=3D"_blank">adriorjalesvidal31@gmail.com</a>&g=
t;
                    wrote:<br>
                  </div>
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
                        <div dir=3D"ltr" class=3D"gmail_attr">El El mi=C3=
=A9, 11
                          may 2022 a las 15:38, Monica Ayhens-Madon &lt;<a =
href=3D"mailto:monica.ayhens.madon@canonical.com" target=3D"_blank">monica.=
ayhens.madon@canonical.com</a>&gt;
                          escribi=C3=B3:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
                              May 10, 2022 at 3:19 AM John G. Heim &lt;<a h=
ref=3D"mailto:jheim@math.wisc.edu" target=3D"_blank">jheim@math.wisc.edu</a=
>&gt;
                              wrote:<br>
                            </div>
                            <blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Arrgh!
                              Speakup seems not to have been compiled
                              into the Ubuntu <br>
                              Jammy/22.04 kernel. Same thing as in 21.04
                              and 21.10. Man! Well, I guess <br>
                              I'll have to file a bug report ... again.<br>
                              <br>
                              -- <br>
                              ###<br>
                              John G. Heim, 608-263-4189, <a href=3D"mailto=
:jheim@math.wisc.edu" target=3D"_blank">jheim@math.wisc.edu</a><br>
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
</div></body>
</html>

--180ba1d17f6561129236932391--


