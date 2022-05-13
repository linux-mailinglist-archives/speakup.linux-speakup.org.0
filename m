Return-Path: <speakup+bounces-427-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7CE1A5264B6
	for <lists+speakup@lfdr.de>; Fri, 13 May 2022 16:38:42 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F2967381641; Fri, 13 May 2022 10:38:41 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E4B2F381638
	for <lists+speakup@lfdr.de>; Fri, 13 May 2022 10:38:41 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0EE4838097E; Fri, 13 May 2022 10:38:40 -0400 (EDT)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D610C380940
	for <speakup@linux-speakup.org>; Fri, 13 May 2022 10:38:39 -0400 (EDT)
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 93FD56209AB; Fri, 13 May 2022 14:38:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 90F6C6201AE;
	Fri, 13 May 2022 10:38:08 -0400 (EDT)
Date: Fri, 13 May 2022 10:38:08 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: "John G. Heim" <jheim@wisc.edu>
cc: Linux A11y <chrys@linux-a11y.org>, jdashiel@panix.com, 
    Monica Ayhens-Madon <monica.ayhens.madon@canonical.com>, 
    Adrian Orjales <adriorjalesvidal31@gmail.com>, 
    "John G. Heim" <jheim@math.wisc.edu>, speakup@linux-speakup.org
Subject: Re: Speakup Left Out of Ubuntu kernel (again)
In-Reply-To: <22a52297-436e-2e55-2382-ca018d242347@wisc.edu>
Message-ID: <Pine.LNX.4.64.2205131036540.426085@server2.shellworld.net>
References: <180ba1d15f0.2923.7f5f0e00eb39c74e480406aa7dcc21f8@panix.com>
 <3AE1FA2A-DDF1-4038-B78A-B154DDBD08FB@linux-a11y.org>
 <Pine.LNX.4.64.2205122115430.256688@server2.shellworld.net>
 <22a52297-436e-2e55-2382-ca018d242347@wisc.edu>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="-1404930036-713724598-1652452688=:426085"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---1404930036-713724598-1652452688=:426085
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

I agree, was surprised that someone recommended an entirely different=20
program  as a substitute for speakup on a speakup list.



On Fri, 13 May 2022, John G. Heim wrote:

> This thread, in fact this list, is supposed to be about speakup. The spea=
kup=20
> modules were left out of the Ubuntu kernel for 22.04. There is nothing to=
=20
> keep you from installing fenrir after you've installed Ubuntu. But that h=
as=20
> nothing to do with speakup.
>
>
> On 5/12/22 20:17, Karen Lewellen wrote:
>>  And if one prefers the command line?
>>  Should not all aspects of Linux be equally accessible so end users have
>>  choices?
>>  command line and graphical?
>>  Kare
>>=20
>>
>>  On Fri, 13 May 2022, Linux A11y wrote:
>>=20
>> >  Howdy,
>> >=20
>> >  Not sure if this helps, but you can also use fenrir, what does not=20
>> >  require any kind of kernel involved. In fact there is no need for=20
>> >  installing at all (as it could used from git tree).
>> >=20
>> >  https://github.com/chrys87/fenrir
>> >=20
>> >  Cheers chrys
>> > >  Am 12.05.2022 um 23:11 schrieb jdashiel@panix.com:
>> > >=20
>> > >  =EF=BB=BF
>> > >  On the ubuntu-accessibility list I asked if a sound message at=20
>> > >  substantial volume could be played to let installers know speakup=
=20
>> > >  can't yet work with an existing kernel bug.=C2=A0 Now that brings m=
e to a=20
>> > >  couple other questions that may be useful.=C2=A0 For the current ca=
se if=20
>> > >  fenrir were installed, could it run as a stop gap until speakup can=
 be=20
>> > >  made to run?=C2=A0 Also, if fenrir can run, could a script run afte=
r a=20
>> > >  sound message got played to install and activate fenrir for the=20
>> > >  console?=C2=A0 Once speakup became available the workaround code to=
 handle=20
>> > >  this bug could be removed.=C2=A0 It would be helpful to installers =
if a=20
>> > >  notification about speakup and the kernel having been fixed would c=
ome=20
>> > >  up on their machines.=C2=A0 I realize this is a big ask, and in my =
case I=20
>> > >  have no linux support local to me blind or sighted that could sort=
=20
>> > >  things out with the possible exception of be my eyes and their supp=
ort=20
>> > >  while useful can at best be partial.
>> > >=20
>> > >  On May 12, 2022 2:37:44 PM Monica Ayhens-Madon=20
>> > >  <monica.ayhens.madon@canonical.com> wrote:
>> > >=20
>> > > >  One of the things the Accessibility Guild is working on is to mak=
e=20
>> > > >  our processes around accessibility stronger. When we had a devote=
d=20
>> > > >  person for this, we just took the process for granted, and when t=
hey=20
>> > > >  left, the process did too. And obviously, this has to be frustrat=
ing=20
>> > > >  and disheartening for Speakup users. So, long answer short - I ho=
pe=20
>> > > >  this is the last time we have to go through this, and I'll do wha=
t I=20
>> > > >  can to help make that happen.
>> > > >=20
>> > > >  On Thu, May 12, 2022 at 5:18 PM John G. Heim <jheim@wisc.edu> wro=
te:
>> > > > >  Well, that's great but are we going to have to go through this=
=20
>> > > > >  again for Kinetic Kudu, 22.10? The same thing happened now for=
=20
>> > > > >  Hirsute, Impish, and Jammy.
>> > > > >=20
>> > > > >=20
>> > > > >=20
>> > > > >  On 5/11/22 11:50, Monica Ayhens-Madon wrote:
>> > > > > >  Adrian,
>> > > > > >=20
>> > > > > >  According to my colleague, if the output of uname -r ends wit=
h=20
>> > > > > >  'generic' on the ubuntu server 22.04 LTS you're running, it w=
ill=20
>> > > > > >  be fixed soon.
>> > > > > >=20
>> > > > > >  (Sorry I can't test it myself - I am stuck abroad with a real=
ly=20
>> > > > > >  minimal setup and this is my first day back at work after bei=
ng=20
>> > > > > >  ill. It's almost 7 PM here so I'll be winding down soon.)
>> > > > > >=20
>> > > > > >  Thank you for offering to share your insight and feedback - i=
t's=20
>> > > > > >  very appreciated!
>> > > > > >=20
>> > > > > >  Monica
>> > > > > >=20
>> > > > > >  On Wed, May 11, 2022 at 6:05 PM Adrian Orjales=20
>> > > > > >  <adriorjalesvidal31@gmail.com> wrote:
>> > > > > > >  Sure, I'd be happy to help. Feel free to share my email=20
>> > > > > > >  address with your colleagues.
>> > > > > > >  The version was ubuntu server 22.04 lts. I will install it=
=20
>> > > > > > >  again and test it more, and also the desktop version to try=
 to=20
>> > > > > > >  give my best feedback possible.
>> > > > > > >  Thanks
>> > > > > > >=20
>> > > > > > >  El El mi=C3=A9, 11 may 2022 a las 17:15, Monica Ayhens-Mado=
n=20
>> > > > > > >  <monica.ayhens.madon@canonical.com> escribi=C3=B3:
>> > > > > > > >  Adrian, could you let me know more about which specific=
=20
>> > > > > > > >  version of server? I'm talking to one of my colleagues on=
=20
>> > > > > > > >  the kernel team and he needs more information.
>> > > > > > > >=20
>> > > > > > > >  And I'm only one of a group of people at Canonical workin=
g=20
>> > > > > > > >  on accessibility. My main job is to be a bridge between t=
hem=20
>> > > > > > > >  and the community. Can I give the Accessibility Guild you=
r=20
>> > > > > > > >  address (and anyone else's e-mail address, if you'd like =
to=20
>> > > > > > > >  talk to us about how we can improve accessibility), we wo=
uld=20
>> > > > > > > >  like to know your feedback and suggestions!
>> > > > > > > >=20
>> > > > > > > >  On Wed, May 11, 2022 at 3:59 PM Adrian Orjales=20
>> > > > > > > >  <adriorjalesvidal31@gmail.com> wrote:
>> > > > > > > > >  Hello=C2=A0 Monica
>> > > > > > > > >  Does this affect also ubuntu server? I've installed Ubu=
ntu=20
>> > > > > > > > >  server=C2=A0 and no speakup module was found when i tri=
ed to=20
>> > > > > > > > >  load it.
>> > > > > > > > >=20
>> > > > > > > > >  I'm very happy to know about you, because i think there=
=20
>> > > > > > > > >  are a lot of things in ubuntu to talk about accessibili=
ty.=20
>> > > > > > > > >  If you are open to listen, i will be happy to help with=
=20
>> > > > > > > > >  feedback.
>> > > > > > > > >  Thanks
>> > > > > > > > >=20
>> > > > > > > > >  El El mi=C3=A9, 11 may 2022 a las 15:38, Monica Ayhens-=
Madon=20
>> > > > > > > > >  <monica.ayhens.madon@canonical.com> escribi=C3=B3:
>> > > > > > > > > >  Hello!
>> > > > > > > > > >=20
>> > > > > > > > > >  I'm Monica Ayhens-Madon from the Community Team at=20
>> > > > > > > > > >  Canonical, and I'm part of our Accessibility Guild. I=
've=20
>> > > > > > > > > >  had a chat with people on our kernel team and there i=
s=20
>> > > > > > > > > >  an existing bug being fixed, and Speakup should be=20
>> > > > > > > > > >  available in updates soon. Please feel free to reach =
out=20
>> > > > > > > > > >  to me with any questions or any other accessibility=
=20
>> > > > > > > > > >  issues I can raise internally.
>> > > > > > > > > >=20
>> > > > > > > > > >  Cheers,
>> > > > > > > > > >=20
>> > > > > > > > > >  Monica
>> > > > > > > > > >=20
>> > > > > > > > > >  On Tue, May 10, 2022 at 3:19 AM John G. Heim=20
>> > > > > > > > > >  <jheim@math.wisc.edu> wrote:
>> > > > > > > > > > >  Arrgh! Speakup seems not to have been compiled into=
=20
>> > > > > > > > > > >  the Ubuntu
>> > > > > > > > > > >  Jammy/22.04 kernel. Same thing as in 21.04 and 21.1=
0.=20
>> > > > > > > > > > >  Man! Well, I guess
>> > > > > > > > > > >  I'll have to file a bug report ... again.
>> > > > > > > > > > >=20
>> > > > > > > > > > >  --=20
>> > > > > > > > > > >  ###
>> > > > > > > > > > >  John G. Heim, 608-263-4189, jheim@math.wisc.edu
>> > > > > > > > > > >=20
>> > > > > > > > >=20
>> > >=20
>> > >=20
>> >=20
>
>
---1404930036-713724598-1652452688=:426085--

