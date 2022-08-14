Return-Path: <speakup+bounces-550-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 90A35591FD3
	for <lists+speakup@lfdr.de>; Sun, 14 Aug 2022 15:03:13 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=pobox.com header.i=@pobox.com header.a=rsa-sha256 header.s=sasl header.b=BKfFKxP7;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CCB203847B2; Sun, 14 Aug 2022 09:03:12 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6CB89383772
	for <lists+speakup@lfdr.de>; Sun, 14 Aug 2022 09:03:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0008438376C; Sun, 14 Aug 2022 09:03:06 -0400 (EDT)
Received: from pb-smtp20.pobox.com (pb-smtp20.pobox.com [173.228.157.52])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 287B33819AC
	for <speakup@linux-speakup.org>; Sun, 14 Aug 2022 09:03:06 -0400 (EDT)
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id 22B7B1AAE8C;
	Sun, 14 Aug 2022 09:03:04 -0400 (EDT)
	(envelope-from mattcampbell@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=
	content-type:message-id:date:mime-version:subject:to:references
	:from:in-reply-to; s=sasl; bh=HgUdlysDnDuwsa/V7BPxGOcWKVOCC9rjLr
	kbbLst7MQ=; b=BKfFKxP7NIV6R4Axp/tEEQK3aBOQlGHGCcIY41R4y/St/GskFl
	Z6+R0KKOogJM6i3uMehcrdVLEYlV9+a17UO2X4q2uYaA5w8HE2nc71hqnZiebjO8
	YjsckLP5Q+bDZ9b5qv9xb9pTpLYOv+I2mGzNJ5XASVOdRbNvfJggZl43k=
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id 1B67D1AAE8B;
	Sun, 14 Aug 2022 09:03:04 -0400 (EDT)
	(envelope-from mattcampbell@pobox.com)
Received: from [192.168.0.161] (unknown [68.102.201.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by pb-smtp20.pobox.com (Postfix) with ESMTPSA id A30921AAE89;
	Sun, 14 Aug 2022 09:03:00 -0400 (EDT)
	(envelope-from mattcampbell@pobox.com)
Content-Type: multipart/alternative;
 boundary="------------KS07C6YkftxTDrv4yDRuXU9Z"
Message-ID: <8d72d3ff-01d5-9f5e-c2b1-fb10a024e047@pobox.com>
Date: Sun, 14 Aug 2022 08:02:57 -0500
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
Content-Language: en-US
To: speakup@linux-speakup.org, blinux-list@redhat.com, discuss@blvuug.org
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <YvhV4TWzuP2O1JAZ@novena-choice-citizen>
 <Pine.LNX.4.64.2208132205110.1261053@server2.shellworld.net>
From: Matt Campbell <mattcampbell@pobox.com>
In-Reply-To: <Pine.LNX.4.64.2208132205110.1261053@server2.shellworld.net>
X-Pobox-Relay-ID:
 6D06AB1E-1BD1-11ED-9554-C85A9F429DF0-07281746!pb-smtp20.pobox.com
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.
--------------KS07C6YkftxTDrv4yDRuXU9Z
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

I'm going to address points from several of Karen's messages:.

> he is, according to those writing the article bringing accessibility=20
> to Fedora workstation.
> i respect that for those in the know, in the choir so to speak what he=20
> is doing is clean up.
> but that is not how the general Linux community is taking this=20
> information.
Let's look at what the article actually says, particularly the intro=20
before the interview:

    The first concerted effort to support accessibility under Linux was
    undertaken by Sun Microsystems when they decided to use GNOME for
    Solaris. Sun put together a team focused on building the pieces to
    make GNOME 2 fully accessible and worked with hardware makers to
    make sure things like Braille devices worked well. I even heard
    claims that GNOME and Linux had the best accessibility of any
    operating system for a while due to this effort. As Sun started
    struggling and got acquired by Oracle this accessibility effort
    eventually trailed off with the community trying to pick up the
    slack afterwards. Especially engineers from Igalia were quite active
    for a while trying to keep the accessibility support working well.

    But over the years we definitely lost a bit of focus on this and we
    know that various parts of GNOME 3 for instance aren=E2=80=99t great =
in
    terms of accessibility. So at Red Hat we have had a lot of focus
    over the last few years trying to ensure we are mindful about
    diversity and inclusion when hiring, trying to ensure that we don=E2=80=
=99t
    accidentally pre-select against underrepresented groups based on for
    instance gender or ethnicity. But one area we realized we hadn=E2=80=99=
t
    given so much focus recently was around technologies that allowed
    people with various disabilities to make use of our software. Thus I
    am very happy to announce that Red Hat has just hired Lukas
    Tyrychtr, who is a blind software engineer, to lead our effort in
    making sure Red Hat Enterprise Linux and Fedora Workstation has
    excellent accessibility support!

That's somewhat long-winded, but it's clear to any careful reader that=20
the foundation for accessibility was already laid, and that what most=20
urgently needs to be done is to fix what has been broken in the years=20
since Sun's accessibility team was disbanded. If things get=20
misrepresented by others who have shared the article, that's surely not=20
the fault of the authors. That happens all the time when people share=20
things online; it's nothing new, and not worth belaboring.

> there are people using Linux in the console daily who deserve equal=20
> access.=20
I took this position in 2000, but for the last decade or more, access to=20
a GUI has been widely available to blind people at no extra cost. (If=20
there are blind people today who are truly stuck on old hardware with no=20
accessible GUI, that's unfortunate, but I think this is one case where=20
the best solution is charity, not expecting the rest of the world to=20
accommodate this situation forever. That's no different than for sighted=20
people stuck on very old hardware.) Blindness itself is a circumstance=20
beyond one's control that deserves reasonable accommodation. But today,=20
using the text console is a choice, a very conscious choice to swim=20
upstream, against the current. Anyone who makes that choice should be=20
prepared for difficulty. And in fact, the few people I know who choose=20
to use the console today are prepared to use a GUI of one form or=20
another when there's no other way to accomplish a task. A platform=20
company like Red Hat is under no obligation to cater to the preference=20
of the dwindling minority of a minority who choose to use the text=20
console. To be clear, I have nothing against people who find=20
console-based tools most productive; do whatever works for you. But we=20
need to be careful about what we demand from the mainstream world, and I=20
think that expecting to be able to do everything using only the console=20
is too much.
> Second, this individual's job is to make this platform=20
> accessible...which has never meant blindness exclusively.
His job, according to the article, is, "to lead our effort in making=20
sure Red Hat Enterprise Linux and Fedora Workstation has excellent=20
accessibility support." To me, the word "lead" suggests that he's not=20
doing this alone. Also, as I said above, the foundation of accessibility=20
for all disabilities was already laid, by the team at Sun, starting=20
roughly 20 years ago. They deliberately chose to start with a generic=20
accessibility API, not a specific solution for a particular disability,=20
because they understood that a well-designed accessibility API would=20
enable independent developers to provide assistive technologies for=20
multiple disabilities. And while I have my objections to a specific=20
layer of their accessibility architecture, I believe they were on the=20
mark here. Finally, I think it's safe to say that blindness is the most=20
difficult disability to accommodate for GUI application and toolkit=20
developers, as it requires them to provide a complete alternative=20
representation of their default, high-bandwidth mode of visual output.=20
Once that need has been met by implementing a sufficiently rich=20
accessibility API, independent developers can handle other disabilities=20
by implementing alternate input methods; indeed, the more comprehensive=20
the accessibility API implementation is, the more these other input=20
methods have to work with. So I think it's entirely reasonable for Red=20
Hat and Lukas to focus for now on making their GUI accessible to blind=20
people with a screen reader.
> Further this individual is no volunteer, he is being paid to have up=20
> to date information, not just about fedora, but for screen readers he=20
> did not even reference like Fenial <spelling>
> He is a single individual, That he has not seen a hardware=20
> synthesizer,=C2=A0 due to age does not mean they do not exist.
As I wrote elsewhere, what he is actually paid for is between him and=20
Red Hat. If they are paying him exclusively to focus on improving GUI=20
accessibility with Orca, I think that's entirely reasonable, as I=20
explained above. The fact that his statements on Speakup were slightly=20
incomplete, or that he didn't say anything about Fenrir, is annoying to=20
those in the know, but not worth getting outraged over. Also note that=20
Lukas's primary job is not advocacy or education, but software=20
development. Along the way, he will need to educate other developers=20
about accessibility, but he's not obligated to comprehensively educate=20
the world at large about how blind people use Linux. The details of how=20
blind people can access the text console are of little or no interest to=20
most platform and application developers, who are the people that Lukas=20
would actually need to educate as part of his job. What we really need=20
them to understand is how they can make their GUIs accessible, and the=20
easier we make that for them, the more accessibility we will get. In=20
light of that, dwelling too much on console options could even be=20
considered an unnecessary and confusing distraction.
> That attitude is dangerous, because he is educating those outside of=20
> the accessibility experiences, who will believe his ignorance is factua=
l.

If people outside the blind community, including platform and=20
application developers, believe that speech synthesis hardware is=20
vanishingly rare, or that one can't use Speakup with Fedora (but can use=20
BRLTTY or Orca), that's of no practical consequence. We just need them=20
to know how they can make their GUIs and web applications accessible,=20
and to be convinced that it's worth doing. On other disabilities, he said=
:

    Of course, utilities for other accessibility needs exist as well,
    but I don=E2=80=99t know much about these.

It's good that he's honest about what he doesn't know. I don't believe=20
that current gap in knowledge should disqualify him from the job that=20
Red Hat actually hired him to do, as opposed to the job that you seem to=20
think Red Hat should have hired someone to do. He's going to have his=20
hands full just making Fedora Workstation fully accessible to blind=20
people. I trust that he'll be willing to learn about other assistive=20
technologies when that knowledge is actually necessary.

> may I ask from where he obtained his software engineering degree?
> Studied computer science?=C2=A0 Perhaps disability studies?
Neither Lukas nor Red Hat are obligated to provide this information to=20
random bystanders. But here's what I found in my quick research. Lukas=20
posted his university thesis on GitHub=20
<https://github.com/tyrylu/thesis>, and from that I deduced that he=20
earned his bachelor's degree (and perhaps a master's as well) in Applied=20
Informatics from Masaryk University in the Czech Republic.
> there are certainly scores of=C2=A0 disabled individuals with these var=
ious=20
> levels of qualification..even who are Linux users.

Sure. But the question is not whether the job went to the person who=20
seems most qualified to an outside observer, or is known in that=20
observer's community, but whether the job went to a person who was=20
available and interested in the job, is qualified enough (as judged by=20
the people doing the hiring), and will get the work done. Red Hat have=20
been hiring developers to work on open source for decades, and I trust=20
that they are competent to choose a qualified candidate. Beyond that, as=20
I stated in my first reply, we can see for ourselves what Lukas has=20
previously done online. There's even more of that than I realized when I=20
wrote that message. For example, he successfully submitted a few patches=20
to the GTK repository, before Red Hat hired him, and he has been=20
reporting bugs in GNOME accessibility, particularly on Red Hat's bug=20
tracker, for years. And as I said on Friday, his feel-the-streets=20
project demonstrates an aptitude for taking on real-world programming=20
projects. So I believe Red Hat's decision to hire him was sound. Not=20
that they need my approval, or that of anyone on these lists.

Now, I suggest that we let the nit-picking go and just be happy that,=20
with financial backing from the leading company in this space, GUI=20
accessibility on Linux is moving forward.

Matt

--------------KS07C6YkftxTDrv4yDRuXU9Z
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>I'm going to address points from several of Karen's messages:.<br>
      <blockquote type=3D"cite">he is, according to those writing the
        article bringing accessibility to Fedora workstation.
        <br>
        i respect that for those in the know, in the choir so to speak
        what he is doing is clean up.
        <br>
        but that is not how the general Linux community is taking this
        information.
        <br>
      </blockquote>
      Let's look at what the article actually says, particularly the
      intro before the interview:</p>
    <blockquote>The first concerted effort to support accessibility
      under Linux was undertaken by Sun Microsystems when they decided
      to use GNOME for Solaris. Sun put together a team focused on
      building the pieces to make GNOME 2 fully accessible and worked
      with hardware makers to make sure things like Braille devices
      worked well. I even heard claims that GNOME and Linux had the best
      accessibility of any operating system for a while due to this
      effort. As Sun started struggling and got acquired by Oracle this
      accessibility effort eventually trailed off with the community
      trying to pick up the slack afterwards. Especially engineers from
      Igalia were quite active for a while trying to keep the
      accessibility support working well.<br>
      <br>
      But over the years we definitely lost a bit of focus on this and
      we know that various parts of GNOME 3 for instance aren=E2=80=99t g=
reat in
      terms of accessibility. So at Red Hat we have had a lot of focus
      over the last few years trying to ensure we are mindful about
      diversity and inclusion when hiring, trying to ensure that we
      don=E2=80=99t accidentally pre-select against underrepresented grou=
ps
      based on for instance gender or ethnicity. But one area we
      realized we hadn=E2=80=99t given so much focus recently was around
      technologies that allowed people with various disabilities to make
      use of our software. Thus I am very happy to announce that Red Hat
      has just hired Lukas Tyrychtr, who is a blind software engineer,
      to lead our effort in making sure Red Hat Enterprise Linux and
      Fedora Workstation has excellent accessibility support!<br>
    </blockquote>
    <p>That's somewhat long-winded, but it's clear to any careful reader
      that the foundation for accessibility was already laid, and that
      what most urgently needs to be done is to fix what has been broken
      in the years since Sun's accessibility team was disbanded. If
      things get misrepresented by others who have shared the article,
      that's surely not the fault of the authors. That happens all the
      time when people share things online; it's nothing new, and not
      worth belaboring.</p>
    <blockquote type=3D"cite">there are people using Linux in the console
      daily who deserve equal access. </blockquote>
    I took this position in 2000, but for the last decade or more,
    access to a GUI has been widely available to blind people at no
    extra cost. (If there are blind people today who are truly stuck on
    old hardware with no accessible GUI, that's unfortunate, but I think
    this is one case where the best solution is charity, not expecting
    the rest of the world to accommodate this situation forever. That's
    no different than for sighted people stuck on very old hardware.)
    Blindness itself is a circumstance beyond one's control that
    deserves reasonable accommodation. But today, using the text console
    is a choice, a very conscious choice to swim upstream, against the
    current. Anyone who makes that choice should be prepared for
    difficulty. And in fact, the few people I know who choose to use the
    console today are prepared to use a GUI of one form or another when
    there's no other way to accomplish a task. A platform company like
    Red Hat is under no obligation to cater to the preference of the
    dwindling minority of a minority who choose to use the text console.
    To be clear, I have nothing against people who find console-based
    tools most productive; do whatever works for you. But we need to be
    careful about what we demand from the mainstream world, and I think
    that expecting to be able to do everything using only the console is
    too much.<br>
    <blockquote type=3D"cite">
      Second, this individual's job is to make this platform
      accessible...which has never meant blindness exclusively.</blockquo=
te>
    His job, according to the article, is, "to lead our effort in making
    sure Red Hat Enterprise Linux and Fedora Workstation has excellent
    accessibility support." To me, the word "lead" suggests that he's
    not doing this alone. Also, as I said above, the foundation of
    accessibility for all disabilities was already laid, by the team at
    Sun, starting roughly 20 years ago. They deliberately chose to start
    with a generic accessibility API, not a specific solution for a
    particular disability, because they understood that a well-designed
    accessibility API would enable independent developers to provide
    assistive technologies for multiple disabilities. And while I have
    my objections to a specific layer of their accessibility
    architecture, I believe they were on the mark here. Finally, I think
    it's safe to say that blindness is the most difficult disability to
    accommodate for GUI application and toolkit developers, as it
    requires them to provide a complete alternative representation of
    their default, high-bandwidth mode of visual output. Once that need
    has been met by implementing a sufficiently rich accessibility API,
    independent developers can handle other disabilities by implementing
    alternate input methods; indeed, the more comprehensive the
    accessibility API implementation is, the more these other input
    methods have to work with. So I think it's entirely reasonable for
    Red Hat and Lukas to focus for now on making their GUI accessible to
    blind people with a screen reader.<br>
    <blockquote type=3D"cite"> Further this individual is no volunteer, h=
e
      is being paid to have up to date information, not just about
      fedora, but for screen readers he did not even reference like
      Fenial &lt;spelling&gt; <br>
      He is a single individual, That he has not seen a hardware
      synthesizer,=C2=A0 due to age does not mean they do not exist.</blo=
ckquote>
    As I wrote elsewhere, what he is actually paid for is between him
    and Red Hat. If they are paying him exclusively to focus on
    improving GUI accessibility with Orca, I think that's entirely
    reasonable, as I explained above. The fact that his statements on
    Speakup were slightly incomplete, or that he didn't say anything
    about Fenrir, is annoying to those in the know, but not worth
    getting outraged over. Also note that Lukas's primary job is not
    advocacy or education, but software development. Along the way, he
    will need to educate other developers about accessibility, but he's
    not obligated to comprehensively educate the world at large about
    how blind people use Linux. The details of how blind people can
    access the text console are of little or no interest to most
    platform and application developers, who are the people that Lukas
    would actually need to educate as part of his job. What we really
    need them to understand is how they can make their GUIs accessible,
    and the easier we make that for them, the more accessibility we will
    get. In light of that, dwelling too much on console options could
    even be considered an unnecessary and confusing distraction.<br>
    <blockquote type=3D"cite">That attitude is dangerous, because he is
      educating those outside of the accessibility experiences, who will
      believe his ignorance is factual.</blockquote>
    <p>If people outside the blind community, including platform and
      application developers, believe that speech synthesis hardware is
      vanishingly rare, or that one can't use Speakup with Fedora (but
      can use BRLTTY or Orca), that's of no practical consequence. We
      just need them to know how they can make their GUIs and web
      applications accessible, and to be convinced that it's worth
      doing. On other disabilities, he said:</p>
    <blockquote>
      <p>Of course, utilities for other accessibility needs exist as
        well, but I don=E2=80=99t know much about these.</p>
    </blockquote>
    <p>It's good that he's honest about what he doesn't know. I don't
      believe that current gap in knowledge should disqualify him from
      the job that Red Hat actually hired him to do, as opposed to the
      job that you seem to think Red Hat should have hired someone to
      do. He's going to have his hands full just making Fedora
      Workstation fully accessible to blind people. I trust that he'll
      be willing to learn about other assistive technologies when that
      knowledge is actually necessary.</p>
    <blockquote type=3D"cite">may I ask from where he obtained his
      software engineering degree? <br>
      Studied computer science?=C2=A0 Perhaps disability studies? <br>
    </blockquote>
    Neither Lukas nor Red Hat are obligated to provide this information
    to random bystanders. But here's what I found in my quick research.
    Lukas posted his <a moz-do-not-send=3D"true"
      href=3D"https://github.com/tyrylu/thesis">university thesis on
      GitHub</a>, and from that I deduced that he earned his bachelor's
    degree (and perhaps a master's as well) in Applied Informatics from
    Masaryk University in the Czech Republic.<br>
    <blockquote type=3D"cite">
      there are certainly scores of=C2=A0 disabled individuals with these
      various levels of qualification..even who are Linux users.</blockqu=
ote>
    <p>Sure. But the question is not whether the job went to the person
      who seems most qualified to an outside observer, or is known in
      that observer's community, but whether the job went to a person
      who was available and interested in the job, is qualified enough
      (as judged by the people doing the hiring), and will get the work
      done. Red Hat have been hiring developers to work on open source
      for decades, and I trust that they are competent to choose a
      qualified candidate. Beyond that, as I stated in my first reply,
      we can see for ourselves what Lukas has previously done online.
      There's even more of that than I realized when I wrote that
      message. For example, he successfully submitted a few patches to
      the GTK repository, before Red Hat hired him, and he has been
      reporting bugs in GNOME accessibility, particularly on Red Hat's
      bug tracker, for years. And as I said on Friday, his
      feel-the-streets project demonstrates an aptitude for taking on
      real-world programming projects. So I believe Red Hat's decision
      to hire him was sound. Not that they need my approval, or that of
      anyone on these lists.<br>
    </p>
    <p>Now, I suggest that we let the nit-picking go and just be happy
      that, with financial backing from the leading company in this
      space, GUI accessibility on Linux is moving forward.</p>
    <p>Matt<br>
    </p>
  </body>
</html>

--------------KS07C6YkftxTDrv4yDRuXU9Z--

