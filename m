Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 600AC8B931
	for <lists+speakup@lfdr.de>; Tue, 13 Aug 2019 14:52:56 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C39EA1C43E1; Tue, 13 Aug 2019 08:52:55 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="rCwO8kuS";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AFFB01C440D;
	Tue, 13 Aug 2019 08:50:59 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id AB3011C3563; Tue, 13 Aug 2019 03:51:46 -0400 (EDT)
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 3BCC41C3563
 for <speakup@linux-speakup.org>; Tue, 13 Aug 2019 03:51:32 -0400 (EDT)
Received: by mail-ot1-f65.google.com with SMTP id f17so33708834otq.4
 for <speakup@linux-speakup.org>; Tue, 13 Aug 2019 00:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xaH52WCPqa5xiiO7DVsCOo4TyBMb4t6ptzdu9kdwQtk=;
 b=rCwO8kuSJYDg+ZgTQLZtCLelYBcb3GsZvHYhqNUpYgEBaf3WvFDYzdwgkVDbxr2k5d
 EodN0Qaj3vi++6UQB6VKlTwmzAMyPSu0XAY4PSGyGr7+3ptIbRTVvwAmyZ609l/YrCbK
 yl302lOW65gUTSMnDUDIUC1drrIjo3IA+d13tamsOWyQ1CgATKa4wDq7TS8GuUDsqgNt
 31TIQSe8BFISROv3eyl6G3tmAE9mYg7FqNi+IbcDhFNYi8Q6mRr6MFIBNF0G9htOKDLn
 Sg4TqvH/XAgWqG8h1jT3Tv8a39QDQU1z9XQShjaiCHqE9RI8CXTiYyg8i4r2YQtCaQtp
 fcrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xaH52WCPqa5xiiO7DVsCOo4TyBMb4t6ptzdu9kdwQtk=;
 b=kV9jrbFVUQXKqkhu3I+D9tSYDPFfbSXOOITZO9kPR6wN9U3/y+ceKB9Zk/j7UZhTTl
 KwJh0nySev/MqNkhFO2OkHB2kgVC/jbHb/nJMaVaYkxo+6yKG/+pfOyZm8zNVCTdDnLi
 y8MGgnVWQAk5MlsDICnYEgncP9A3yJPaDFDvz3nQETOKEAcjlT1kAuSsK+X35FSi7+QT
 vGqz9pwER6wYs6DxkVo62UGUsiS3m0lkXXrrtpSzwyqqJtAaFkn+HS9fuLaDuBWUp//P
 bBRocffLh9BeKMiuX+Ccl5BZBBEw6LEm0V8o5uHYeprWX1UVUeRcOGORbMQGtKqgi2QV
 jrDg==
X-Gm-Message-State: APjAAAW3AnIu5ZjBwZg6qWkSj1tbzTTA8PLUR6QvEIwf2uiadXw04tsw
 WDhBEmJTXVWIYC7sqbIFuIYgA/tq4EGIdyGqTTo=
X-Google-Smtp-Source: APXvYqywsUSZ7fJIJSZ5v3eTa+6UOWq+mU6ImrWtIYWqhFLD8Kfv1oD77sNAVZpcSqUaM69+yFUxaqjsZVhKxv2roOg=
X-Received: by 2002:a05:6830:1f07:: with SMTP id
 u7mr11044056otg.328.1565682628424; 
 Tue, 13 Aug 2019 00:50:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190721180431.7ce1f716@narunkot>
 <20190724070600.6gbugq7y6xztosd2@function>
In-Reply-To: <20190724070600.6gbugq7y6xztosd2@function>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Tue, 13 Aug 2019 08:50:16 +0100
Message-ID: <CAOtcWM2K-ch9yJaL5C+-ZGPn4hu=ntGDT926_pPsr9Hz74zijA@mail.gmail.com>
Subject: Re: Linux Open Source Presentation
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Content-Type: multipart/mixed; boundary="000000000000e72c9c058ffae4ce"
X-Mailman-Approved-At: Tue, 13 Aug 2019 08:50:57 -0400
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
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
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

--000000000000e72c9c058ffae4ce
Content-Type: text/plain; charset="UTF-8"

Hi,

Thank you very much and sorry about late reply. I emailed OSS
organisers and the date for submissions of slides is 14 August.

I have updated the slides based on your feedback. I have attached both
PDF and text only version.

Best regards,
Okash


On Wed, Jul 24, 2019 at 8:06 AM Samuel Thibault
<samuel.thibault@ens-lyon.org> wrote:
>
> Hello,
>
> Okash Khawaja, le dim. 21 juil. 2019 18:04:31 +0100, a ecrit:
> > slide 1: What is speakup?
> > -------------------------
> > - piece of software that reads out what's on console and what you type with keyboard
>
> It will probably be interesting to mention the two modes: it speaks text
> as it gets printed by applications, but the user can also use speakup
> shortcuts to read what was printed by the application and is still
> visible on the screen.
>
> > slide 3: Present
> > -----------------
> > TODO: tty based vs directly accessing ports
>
> Yes, that's an interesting point.
>
> Before the tty support, the port knocking was obviously posing
> problems of conflicting with the existing serial drivers, and supporting
> only legacy serial ports.
>
> You can mention that speakup is particular in that it's a purely
> software driver that needs to operate the serial port. Thus a line
> discipline, thus what you implemented.
>
> > TODO: console content and keyboard snooping done properly
>
> You can indeed mention the proper use of console text fetching, and
> keyboard notification registration.
>
> > TODO: what distros ship with speakup?
>
> I must admit that I don't know :)
>
>
> You can also mention that proper unicode support was done, so that all
> languages can now be supported seamlessly.
>
> > slide 3: Future
> > ----------------
> >
> > - move from staging to mainline
> > - fix bugs
> > - new features: usb drivers, auto load
> > - TODO: what else for future? ask mailing list
>
> I think there is at least still work to be done for internationalization
> of speakup messages and such things.
>
> > slide 5: Core:
> > --------------
> > - main.c contains speakup core
> > - main.c + supporting files yield speakup.ko
> > - upon loading:
> >     - perform some initialisations (spk_vars, add virtual keyboard, initialise an internal representation of every console etc)
> >     - initialise sysfs interface
> >     - register tty ldisc
> >     - synth_init() (TODO: what is this?)
>
> It tries to initialize the synths given on the command line.
>
> >     - speakup kthread (mainly for synth->catch_up()
>
> You can explain that speakup uses buffering: keyboard and console
> notifiers queue stuff to be spoken, and the speakup kthread
> progressively pushes that to a serial port or the software synthesis.
>
> > slide 6: Core - keyboard and vt:
> > --------------------------------
> > [TODO]
>
> I'm not sure whether you want to detail much of that. You could make
> some rehearsal to see whether you will have the time to detail here.
>
> Perhaps that's the place for just explaining the buffering I mentioned
> above.
>
> > slide 8: struct spk_syth:
> > -------------------------
> > TODO: reproduce its code here and go through members one by one
>
> It would be tedious to cover it all. You can probably just cover it in a
> few related groups like: probe/release,
> read_buff_add/synth_immediate/catch_up/flush, is_alive, get_index
>
> > slide 9: struct spk_io_ops:
> > ---------------------------
> > - struct spk_io_ops
>
> That one you can probably cover it all.
>
> > slide 12: Software Synths: speakup_dummy:
> > -----------------------------------------
> > - useful for development purposes
>
> Yes, that's an important point to make: you don't need an actual synth
> to do development.
>
> > - typical development set up with speakup_dummy:
> >     - qemu with serial port tied to a file on host
> >     - load speakup_dummy with dev param pointing to the serial port
>
> It'd be useful that you provide the ready-to-run commands so people can
> try it out.
>
> Samuel

--000000000000e72c9c058ffae4ce
Content-Type: text/plain; charset="US-ASCII"; name="speakup-presentation.txt"
Content-Disposition: attachment; filename="speakup-presentation.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_jz9iyo6f1>
X-Attachment-Id: f_jz9iyo6f1

c2xpZGUgMDoKLS0tLS0tLQpMaW51eCBTcGVha3VwIE1ha2VzIExpbnV4IFRhbGsgdG8gVXNlcnM6
IFBhc3QgYW5kIEZ1dHVyZQoKT2thc2ggS2hhd2FqYSAvIENvbnRyaWJ1dG9yIHRvIFNwZWFrdXAK
QGJpbmFyeWRlYnQKCnNsaWRlIDE6IFdoYXQgd2Ugd2lsbCBjb3ZlcgotLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KCi0gV2hhdCBpcyBzcGVha3VwCi0gUGFzdCwgcHJlc2VudCBhbmQgZnV0dXJl
Ci0gU29tZSB0ZWNobmljYWwgZGV0YWlsczoKLSBvdmVyYWxsIGFyY2gKLSBoYXJkd2FyZSBzeW50
aHMKLSB0dHlpbyBhcmNoaXRlY3R1cmUKLSBEZXZlbG9wbWVudCBwcm9jZXNzCi0gUSZBCgpzbGlk
ZSAyOiBXaGF0IGlzIHNwZWFrdXA/Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCi0gUGllY2Ug
b2Ygc29mdHdhcmUgdGhhdCByZWFkcyBvdXQgd2hhdCdzIG9uIGNvbnNvbGUgYW5kIHdoYXQKeW91
IHR5cGUgd2l0aCBrZXlib2FyZAotIFR3byBtb2RlczoKLSBSZWFkIHRleHQgcHJpbnRlZCBieSBh
cHBsaWNhdGlvbnMKLSBXaG9sZSBzZXQgb2Yga2V5Ym9hcmQgc2hvcnRjdXRzIHRvIGNvbnRyb2wg
dGhlIG91dHB1dCwKaW5jbHVkaW5nIGdvaW5nIGJhY2sgYW5kIHJlYWRpbmcgd2hhdCB3YXMKcHJl
dmlvdXNseSBwcmludGVkIGJ5IGFwcGxpY2F0aW9uIGFuZCBzdGlsbCBvbiBzY3JlZW4KLSBMaW51
eCBvbmx5Ci0gRW50aXJlbHkga2VybmVsLWJhc2VkLCBhbHRob3VnaCBleHBvc2VzIGludGVyZmFj
ZSB0byB1c2VyCnNwYWNlCi0gKlN0YXJ0cyBhdCBlYXJseSBib290IGFuZCBsYXN0cyB1bnRpbCBz
aHV0ZG93bioKCnNsaWRlIDM6IEhpc3RvcnkKLS0tLS0tLS0tLS0tLS0tLS0KLSBPcmlnaW5hbGx5
IHdyaXR0ZW4gYnkgYSBibGluZCBwZXJzb24KLSBTdGFydGVkIGJ5IEtpcmsgUmVpc2VyIGluIDE5
OTgKLSBNZXJnZWQgaW50byBMaW51eCBzdGFnaW5nIGRpcmVjdG9yeSBpbiBsYXRlIDIwMTAKLSBO
b3cgd29yayBpcyB1bmRlcndheSB0byBtb3ZlIGl0IG91dCBvZiBzdGFnaW5nIGludG8ga2VybmVs
IHByb3BlcgotIEV4dGVybmFsIGRldmljZSBvciBJU0EgY2FyZCBmb3IgYWRkaXRpb25hbCBzZXJp
YWwgcG9ydAoKc2xpZGUgNDogUHJlc2VudAotLS0tLS0tLS0tLS0tLS0tCgotIHR0eSBiYXNlZCB2
cyBkaXJlY3RseSBhY2Nlc3NpbmcgcG9ydHMKLSB1bmlxdWUgZGVzaWduIGJlY2F1c2UgaXQncyBw
dXJlbHkgYSBzb2Z0d2FyZSBkcml2ZXIKYW5kIG5lZWRzIHRvIG9wZXJhdGUgb24gc2VyaWFsIHBv
cnQKLSBjb25zb2xlIGNvbnRlbnQgYW5kIGtleWJvYXJkIHNub29waW5nIGRvbmUgcHJvcGVybHkK
LSByZWdpc3Rlcl92dF9ub3RpZmllcigpCi0gcmVnaXN0ZXJfa2V5Ym9hcmRfbm90aWZpZXIoKQot
IHByb3BlciB1bmljb2RlIHN1cHBvcnQgYWRkZWQ6IGFsbCBsYW5ndWFnZXMgY2FuIGJlCnN1cHBv
cnRlZCBzZWFtbGVzc2x5Ci0gc2hpcHMgd2l0aCBmb2xsb3dpbmcgZGlzdHJvczogRGViaWFuLCBb
VE9ETzogd2hpY2gKb3RoZXJzP10KCnNsaWRlIDU6IEZ1dHVyZQotLS0tLS0tLS0tLS0tLS0tCgot
IE1vdmUgZnJvbSBzdGFnaW5nIHRvIG1haW5saW5lCi0gRml4IGJ1Z3M6IGdhcmJsZWQgdGV4dAot
IE5ldyBmZWF0dXJlczogdXNiIGRyaXZlcnMsIGF1dG8gbG9hZCwKLSBpbnRlcm5hdGlvbmFsaXNh
dGlvbiBvZiBzcGVha3VwIG1lc3NhZ2VzCi0gTW9yZSBoZXJlOiBodHRwczovL2dpdGh1Yi5jb20v
Ynl0ZWZpcmUvc3BlYWt1cC9pc3N1CmVzCgpzbGlkZSA2OiBPdmVyYWxsIEFyY2hpdGVjdHVyZQot
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKLSBjb3JlIChzcGVha3VwLmtvKQotIHN5bnRo
cyAoc3BlYWt1cF8qLmtvKQotIGZsb3cgb2YgZGF0YToge2NvbnNvbGUsIGtleWJvYXJkfSAtPiBu
b3RpZmllcnMgLT4gY2lyY3VsYXIgYnVmZmVyIC0+IGt0aHJlYWQgLT4gc3ludGhzIChzZXJpYWwg
cG9ydCBvciBzb2Z0d2FyZSBpbnRlcmZhY2UpCgpzbGlkZSA3OiBDb3JlCi0tLS0tLS0tLS0tLS0K
Ci0gbWFpbi5jIGNvbnRhaW5zIHNwZWFrdXAgY29yZQotIG1haW4uYyArIHN1cHBvcnRpbmcgZmls
ZXMgeWllbGQgc3BlYWt1cC5rbwotIHVwb24gbG9hZGluZzoKICAgIC0gcGVyZm9ybSBzb21lIGlu
aXRpYWxpc2F0aW9ucyAoc3BrX3ZhcnMsIGFkZCB2aXJ0dWFsIGtleWJvYXJkLCBpbml0aWFsaXNl
CmFuIGludGVybmFsIHJlcHJlc2VudGF0aW9uIG9mIGV2ZXJ5IGNvbnNvbGUgZXRjKQogICAgLSBp
bml0aWFsaXNlIHN5c2ZzIGludGVyZmFjZQogICAgLSByZWdpc3RlciB0dHkgbGRpc2MKICAgIC0g
c3ludGhfaW5pdCgpCiAgICAtIHJlZ2lzdGVyIGtleWJvYXJkIG5vdGlmaWVyCiAgICAtIHJlZ2lz
dGVyIHZ0IG5vdGlmaWVyCiAgICAtIHNwZWFrdXAga3RocmVhZCAodGFrZSBmcm9tIGJ1ZmZlciBh
bmQgcHVzaCB0byBzZXJpYWwgb3Igc29mdHdhcmUKaW50ZXJmYWNlKQoKc2xpZGUgODogRGV2aWNl
IEFyY2hpdGVjdHVyZQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgotIFR3byB0eXBlcyBv
ZiBzeW50aHM6IGhhcmR3YXJlIGFuZCBzb2Z0d2FyZQotIEluc2lkZSBoYXJkd2FyZSwgdHdvIHR5
cGVzIG9mIGRldmljZXM6IGludGVybmFsIElTQSBjYXJkcyAob2xkKSBhbmQgZXh0ZXJuYWwKLSBX
ZSB3aWxsIGZvY3VzIG9uIGV4dGVybmFsIGhhcmR3YXJlIHN5bnRocyBhbmQgc29mdHdhcmUgc3lu
dGhzCgpzbGlkZSA5OiBEZXZpY2UgQXJjaGl0ZWN0dXJlIC0gSGFyZHdhcmUgU3ludGhzCi0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCi0gRGlmZmVyZW50IHN5
bnRoIGNoaXBzZXRzOiBEb3VibGVUYWxrLCBBcG9sbG8sIERlY1RhbGssIEJyYWlsbGUgJ24gU3Bl
YWsgYW5kCm1vcmUKLSBDb25uZWN0IHVzaW5nIHNlcmlhbCBwcm90b2NvbDogZWl0aGVyIHNlcmlh
bCBwb3J0IFJTLTIzMiBvciBzZXJpYWwgb3ZlciBVU0IKLSBQdXJlIFVTQiBzdXBwb3J0IHBsYW5u
ZWQKCnNsaWRlIDEwOiBEZXZpY2UgQXJjaGl0ZWN0dXJlOiBTdXBwb3J0IGZyb20gY29yZQotLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgpzdHJ1Y3Qgc3Br
X3N5bnRoIHsKICAgIC4uLgogICAgc3RydWN0IHNwa19pb19vcHMgKmlvX29wczsKICAgIGludCAo
KnByb2JlKShzdHJ1Y3Qgc3BrX3N5bnRoICpzeW50aCk7CiAgICB2b2lkICgqcmVsZWFzZSkodm9p
ZCk7CiAgICBjb25zdCBjaGFyICooKnN5bnRoX2ltbWVkaWF0ZSkoc3RydWN0IHNwa19zeW50aCAq
c3ludGgsCiAgICBjb25zdCBjaGFyICpidWZmKTsKICAgIHZvaWQgKCpjYXRjaF91cCkoc3RydWN0
IHNwa19zeW50aCAqc3ludGgpOwogICAgdm9pZCAoKmZsdXNoKShzdHJ1Y3Qgc3BrX3N5bnRoICpz
eW50aCk7CiAgICBpbnQgKCppc19hbGl2ZSkoc3RydWN0IHNwa19zeW50aCAqc3ludGgpOwogICAg
dm9pZCAoKnJlYWRfYnVmZl9hZGQpKHVfY2hhcik7CiAgICB1bnNpZ25lZCBjaGFyICgqZ2V0X2lu
ZGV4KShzdHJ1Y3Qgc3BrX3N5bnRoICpzeW50aCk7CiAgICAuLi4KfTsKCnNsaWRlIDExOiBEZXZp
Y2UgQXJjaGl0ZWN0dXJlOiBDUFUgdG8gU3ludGgKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KCi0gVFRZIGxheWVyIHRvIHNlbmQgZGF0YSB0byBkZXZpY2UKCnN0
cnVjdCBzcGtfaW9fb3BzIHsKICAgIGludCAoKnN5bnRoX291dCkoc3RydWN0IHNwa19zeW50aCAq
c3ludGgsIGNvbnN0IGNoYXIgY2gpOwogICAgaW50ICgqc3ludGhfb3V0X3VuaWNvZGUpKHN0cnVj
dCBzcGtfc3ludGggKnN5bnRoLCB1MTYgY2gpOwogICAgdm9pZCAoKnNlbmRfeGNoYXIpKGNoYXIg
Y2gpOwogICAgdm9pZCAoKnRpb2Ntc2V0KSh1bnNpZ25lZCBpbnQgc2V0LCB1bnNpZ25lZCBpbnQg
Y2xlYXIpOwogICAgdW5zaWduZWQgY2hhciAoKnN5bnRoX2luKSh2b2lkKTsKICAgIHVuc2lnbmVk
IGNoYXIgKCpzeW50aF9pbl9ub3dhaXQpKHZvaWQpOwogICAgdm9pZCAoKmZsdXNoX2J1ZmZlciko
dm9pZCk7Cn07CgpzbGlkZSAxMjogRGV2aWNlIEFyY2hpdGVjdHVyZTogU3ludGggdG8gQ1BVCi0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgotIFdoeSBzeW50aC10
by1DUFUgdHJhZmZpYz8KLSBVc2UgbGluZSBkaXNjaXBsaW5lIHRvIGNvbW11bmljYXRlIGZyb20g
ZGV2aWNlIHRvIENQVQotIGluY2x1ZGUvbGludXgvdHR5X2xkaXNjLmg6c3RydWN0IHR0eV9sZGlz
Y19vcHMKLSBNZXRob2RzIHdlIGNhcmUgYWJvdXQgYXJlOgogICAgLSBvcGVuKCkKICAgIC0gY2xv
c2UoKQogICAgLSByZWNlaXZlX2J1ZjIoKQoKc2xpZGUgMTM6IFNwZWFraW5nIGZyb20gZWFybHkg
Ym9vdAotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKLSBIb3cgaXQgd29ya2Vk
IGJlZm9yZTogaW5iKCksIG91dGIoKSBldGMKLSBGb3IgVFRZLCBoYW5kbGUgdG8gdHR5X3N0cnVj
dCBpcyBuZWVkZWQKLSBVc3VhbGx5IG9idGFpbmVkIGZyb20gdXNlciBzcGFjZSBieSBvcGVuaW5n
IC9kZXYvdHR5VVNCMAotIEJ1dCB3ZSB3YW50IHRvIHN0YXJ0IHNwZWFraW5nIGJlZm9yZSB0aGVy
ZQppcyBmaWxlIHN5c3RlbSBvciBldmVuIHVzZXIgc3BhY2UKCnNsaWRlIDE0OiBTcGVha2luZyBm
cm9tIGVhcmx5IGJvb3QKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCi0gTmVl
ZCB0byBvcGVuIHR0eSBmcm9tIGtlcm5lbCBzcGFjZQotIEludHJvZHVjZWQgdHR5X2tvcGVuKCkg
YW5kIHR0eV9rY2xvc2UoKQotIE5lZWRlZCBhZGRyZXNzaW5nIHBvdGVudGlhbCBzeW5jaHJvbmlz
YXRpb24gaXNzdWVzIHdpdGggdXNlci1zcGFjZQpvcGVuIG9mIHNhbWUgdHR5Ci0gQWZmZWN0ZWQg
dXNlci1rZXJuZWwgaW50ZXJmYWNlIGJlY2F1c2UgYW4Kb3BlbigpIG9mIGEgdHR5IGNvdWxkIG5v
dyByZXR1cm4gLUVCVVNZCgpzbGlkZSAxNTogRGV2aWNlIEFyY2hpdGVjdHVyOiBQdXR0aW5nIGl0
IHRvZ2V0aGVyCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KLSBzdHJ1Y3Qgc3BrX3N5bnRoCi0gc3RydWN0IHNwa19pb19vcHMKLSB0dHkgKyBsZGlz
YwpbVE9ETzogZGlhZ3JhbV0KCnNsaWRlIDE2OiBTb2Z0d2FyZSBTeW50aHMKLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQpUd28gc29mdHdhcmUgc3ludGhzIGZvciBkaWZmZXJlbnQKbW90aXZhdGlv
bnM6Ci0gc3BlYWt1cF9zb2Z0LmtvCi0gc3BlYWt1cF9kdW1teS5rbwoKc2xpZGUgMTc6IFNvZnR3
YXJlIFN5bnRoczogc3BlYWt1cF9zb2Z0LmtvCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KCi0gTGlrZSBhbnkgb3RoZXIgc3ludGggYnV0IGRvZXNuJ3QgcHVzaCBz
cGVlY2ggdG8gZGV2aWNlCi0gSW5zdGVhZCBleHBvc2VzIGFuIGludGVyZmFjZSB0byB1c2VyIHNw
YWNlCi0gTWlzYyBkZXZpY2UgL2Rldi9zb2Z0c3ludGggdGhhdCBjYW4gYmUgcmVhZCBieSBhIHVz
ZXIKc3BhY2UgcHJvZ3JhbSBpbiB0aGUgc2FtZSB3YXkgYXMgaGFyZHdhcmUgc3ludGgKd291bGQg
cmVhZCBhbmQgdGhlbiBzcGVhay4KLSBzcGVha3VwLmtvIDwtPiBzcGVha3VwX3NvZnQua28gPC0+
L2Rldi9zb2Z0c3ludGggPC0+CmVzcGVha3VwIDwtPiBlc3BlYWsgLT4gcGh5c2ljYWwgc3BlYWtl
cnMKLSBMaW1pdGF0aW9uczogcmVxdWlyZXMgdXNlciBzcGFjZSB0byBiZSB1cCBiZWZvcmUgaXQg
Y2FuCnN0YXJ0IHNwZWFraW5nIGFuZCBkb2Vzbid0IHNwZWFrIGFsbCBzaHV0ZG93bgptZXNzYWdl
cwoKc2xpZGUgMTg6IFNvZnR3YXJlIFN5bnRoczogc3BlYWt1cF9kdW1teS5rbwotLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgotIFVzZWZ1bCBmb3IgZGV2ZWxvcG1l
bnQgcHVycG9zZXMKLSBUeXBpY2FsIGRldmVsb3BtZW50IHNldCB1cCB3aXRoIHNwZWFrdXBfZHVt
bXk6CiAgICAtIHFlbXUgd2l0aCBzZXJpYWwgcG9ydCB0aWVkIHRvIGEgZmlsZSBvbiBob3N0CiAg
ICAtIGxvYWQgc3BlYWt1cF9kdW1teSB3aXRoIGRldiBwYXJhbSBwb2ludGluZyB0byB0aGUgc2Vy
aWFsIHBvcnQKICAgIApzbGlkZSAxOTogU29mdHdhcmUgU3ludGhzOiBzcGVha3VwX2R1bW15Lmtv
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KLSBHZXQgYWxsIG91
dHB1dCBpbiB0ZXh0Ci0gRS5nLiB1c2VmdWwgdG8gZGVidWcgZ2FyYmxlZCBzcGVlY2gKLSBObyBl
eHRyYSBsYXllcnMgKGUuZy4gdXNlciBzcGFjZQpjb21wb25lbnRzKSBpbnZvbHZlZAoKc2xpZGUg
MjA6IERldmVsb3BtZW50IFByb2Nlc3MKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCi0g
TGlrZSBnZW5lcmFsIGtlcm5lbCBkZXZlbG9wbWVudCBwcm9jZXNzIGJ1dCBzaW1wbGVyIGFuZCBm
cmllbmRsaWVyIDopCi0gSW50ZXJuYWwgcmV2aWV3cyEgdGhhbmtzIHRvIFNhbXVlbAotIEhlbHBm
dWwgY29tbXVuaXR5OgotIFRlc3RpbmcKLSBIZWxwIHdpdGggZ2V0dGluZyBoYXJkd2FyZSBkZXZp
Y2VzCi0gVGVjaCBzYXZ2eQoKc2xpZGUgMjE6IERldmVsb3BtZW50IFByb2Nlc3MgKGNvbnRkLikK
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCi0gcWVtdTogY29tcGlsZSBv
biBob3N0IG9yIGluc2lkZSBxZW11IFZNCi0gc3BlYWt1cF9kdW1teSBmb3IgbW9zdCBjYXNlcyBo
YXJkd2FyZSBzeW50aCBmb3IgaGFyZHdhcmUgZmVhdHVyZXMgLyBkZWJ1Z2dpbmcKLSBjYXJlZnVs
IHRvIGxvYWQgY29ycmVjdCBkcml2ZXIgZm9yIHRoZSBzeW50aAotIHNwZWFrdXBfYXBvbGxvLmtv
IG9uIGRvdWJsZSB0YWxrCi0gImp1c3QgZ29lcyB0byBzaG93IHlvdSB3aGVuIHlvdSBnaXZlIGRv
dWJsZQp0YWxrIHRvIGEgZ29kIiAtIG9uZSBvZiB0aGUgbWFpbGluZyBsaXN0IHJlcGxpZXMKCnNs
aWRlIDIyOiBEZXZlbG9wbWVudCBQcm9jZXNzIChjb250ZC4pCi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCi0gZ3JlYXQgd2F5IHRvIGxlYXJuCi0gcmVhbCBjb21tdW5pdHkg
aW1wYWN0Ci0gd2UncmUgd29ya2luZyB0b3dhcmRzIG1vdmluZyBpdCBvdXQgb2Ygc3RhZ2luZyBp
bnRvIG1haW4ga2VybmVsCi0gcGxlbnR5IG9mIGludGVyZXN0aW5nIHdvcmsgYWhlYWQ6CiAgICAt
IENvbXBsZXRlIHRyYW5zaXRpb24gb3V0IG9mIHN0YWdpbmcKICAgIC0gU3VwcG9ydCBmb3IgVVNC
IHN5bnRocwogICAgLSBVU0IgYXV0b2xvYWQKICAgIC0gQnVnIGZpeGVzIHBvc3NpYmxlIHJhY2Vz
CiAgICAtIEludGVybmF0aW9uYWxpc2F0aW9uIG9mIHNwZWFrdXAgbWVzc2FnZXMKLSBTZWUgaHR0
cHM6Ly9naXRodWIuY29tL2J5dGVmaXJlL3NwZWFrdXAvaXNzdWVzIGZvciBtb3JlCgpzbGlkZSAy
MzogUSZBCi0tLS0tLS0tLS0tLS0tCgpRJkEK
--000000000000e72c9c058ffae4ce
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

--000000000000e72c9c058ffae4ce--
