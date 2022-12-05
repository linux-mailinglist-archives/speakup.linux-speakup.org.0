Return-Path: <speakup+bounces-889-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C7167642B2D
	for <lists+speakup@lfdr.de>; Mon,  5 Dec 2022 16:15:58 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 06225382BDD; Mon,  5 Dec 2022 10:15:58 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E43BC382A1E
	for <lists+speakup@lfdr.de>; Mon,  5 Dec 2022 10:15:57 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CD893382A3F; Mon,  5 Dec 2022 10:15:52 -0500 (EST)
Received: from smtprelay.b.hostedemail.com (smtprelay0009.b.hostedemail.com [64.98.42.9])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BAA5B382948
	for <speakup@linux-speakup.org>; Mon,  5 Dec 2022 10:15:52 -0500 (EST)
Received: from omf03.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay02.b.hostedemail.com (Postfix) with ESMTP id 12EDB801E69A;
	Mon,  5 Dec 2022 15:15:49 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf03.b.hostedemail.com (Postfix) with ESMTPA id 6DDB780222BA;
	Mon,  5 Dec 2022 15:15:48 +0000 (UTC)
Message-ID: <02b201d908bc$51231db0$88ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Jude DaShiell" <jdashiel@panix.com>,
	<speakup@linux-speakup.org>,
	"Didier Spaier" <didier@slint.fr>
References: <013f01d9074d$551a6650$88ffa8c0@Win7VM> <Y4wZa/0WtgPE3nyH@gregn.net> <017701d90794$4d7619c0$88ffa8c0@Win7VM> <Y4wcSYOKzFn/yIeh@gregn.net> <018001d90797$3bf04b00$88ffa8c0@Win7VM> <Y4woAGJEUf430mTc@gregn.net> <018701d9079f$53126810$88ffa8c0@Win7VM> <5ab5197f-f3c3-c7f1-b497-0e702525d2cd@slint.fr> <01a801d907fd$bb39fbc0$88ffa8c0@Win7VM> <3137b9f2-ce47-ce5-955b-36d5d06b7b71@panix.com> <024b01d90849$8e685fa0$88ffa8c0@Win7VM> <d0962b6-b940-1e30-4a76-ca5362b19a6f@panix.com>
Subject: Re: change eSpeak Default Voice
Date: Mon, 5 Dec 2022 09:14:47 -0600
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
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Spam-Status: No, score=-2.60
X-Stat-Signature: ugprxj8rjx4cwj5jm68pu6hqhkraxu5x
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 6DDB780222BA
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/nC27pb6MbcKp9VxbhPf96S4oSDF2C4PI=
X-HE-Tag: 1670253348-352148
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Orca must use espeak, and not espeak-ng, because the command
espeak-ng test
gave me an error, where it worked without the -ng, but it was the same old 
voice.
Glenn
----- Original Message ----- 
From: "Jude DaShiell" <jdashiel@panix.com>
To: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>; "Didier 
Spaier" <didier@slint.fr>
Sent: Sunday, December 04, 2022 7:54 PM
Subject: Re: change eSpeak Default Voice


One way to find out.  Get it changed on either graphical environment or
console then test the other environment to see if the change done in the
first environment took in the second.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Sun, 4 Dec 2022, K0LNY_Glenn wrote:

> I have wondered if screenreaders are using the NG one or not, such as 
> Orca.
> Orca just calls it eSpeak.
> Glenn
> ----- Original Message -----
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>; 
> "Didier
> Spaier" <didier@slint.fr>
> Sent: Sunday, December 04, 2022 7:31 PM
> Subject: Re: change eSpeak Default Voice
>
>
> espeak-ng is a fork off espeak and intended to be a more modern
> replacement for espeak.
> So which one is run is important.
>
>
>
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
> On Sun, 4 Dec 2022, K0LNY_Glenn wrote:
>
> > Well espeak is espeak, no matter what flavor of Linux it's on, Linux is
> > Linux.
> > I imagined the only differences between distros would be it's location.
> > And I do appreciate it when people give a real answer, rather than just
> > directing me where to look it up.
> > Or is help only reserved for those who strive to make Linux their main
> > source of computing?
> > Glenn
> > ----- Original Message -----
> > From: "Didier Spaier" <didier@slint.fr>
> > To: <speakup@linux-speakup.org>
> > Sent: Sunday, December 04, 2022 3:23 AM
> > Subject: Re: change eSpeak Default Voice
> >
> >
> > Hello,
> >
> > answer in line.
> >
> > Le 04/12/2022 ? 06:14, K0LNY_Glenn a ?crit :
> > > Well Linux is not my main operating system, and I think it's a fair
> > > question
> > > to an email  list.
> >
> > It would have been a fair question if asked in the right list, BUT this
> > one
> > if
> > primarily about the speakup kernel driver, rather than software that 
> > make
> > use of
> > it, like speakup or speechd-up.
> >
> > Further you should have stated which distribution you are using and if 
> > you
> > were
> > using espeakup or speechd-up, which would have allowed to give you an
> > adapted
> > answer.
> >
> > You can learn how to ask questions the smart way reading this:
> > http://www.catb.org/~esr/faqs/smart-questions.html
> >
> > > That is the biggest problem with Linux users, they think they are 
> > > above
> > > helping people who aren't into that operating system as much as they
> > > are.
> >
> > Is that how grateful you are for people who spend their time, of which
> > they
> > have
> > already not enough to do all they need to, to try to help you?
> >
> > > In my opinion, the only question that shouldn't be asked about on a 
> > > list
> > > like this, is one that is repeatedly asked, as folks should save 
> > > useful
> > > information that comes in through these lists, like I do, for later
> > > looking
> > > up the information already saved.
> >
> > Again, only if the question is properly asked and in the right channel,
> > see
> > above.
> >
> > > But there is so little traffic on these Linux lists, that I can only
> > > imagine
> > > that people have given up asking for guidance.
> >
> > > And the suggestion to a list member to google something, rather than
> > > helping,  is ludicrous, because the information you get from Google
> > > searches, is provided by lists like this, where people have asked the
> > > question before, and therefore, if questions don't get answered on 
> > > these
> > > lists, then Google won't find answers for people searching on-line.
> >
> > What? Nobody suggested you google anything, just to read the 
> > documentation
> > provided with your software, in this case at least using the "man" 
> > utility
> > installed in your system.
> >
> > > I have gotten some help here, but I don't understand why people bother
> > > to
> > > reply, or even be on a list if they don't want to help others.
> >
> > This very unfair statement convince me that we were wrong wasting our 
> > time
> > trying to help you. I won't do this mistake again.
> >
> > Good luck,
> > Didier
> >
> >
> >
>
>
> 


