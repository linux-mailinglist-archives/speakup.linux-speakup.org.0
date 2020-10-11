Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B70A628A7EC
	for <lists+speakup@lfdr.de>; Sun, 11 Oct 2020 17:16:46 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 51FE4380BE3; Sun, 11 Oct 2020 11:16:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5CF2E380BB9;
	Sun, 11 Oct 2020 11:16:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id D0422380B3A; Sun, 11 Oct 2020 11:16:43 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 96EDB380B27
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 11:16:43 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id EDEED111C
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 17:16:41 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1-IDwHKNWZTq for <speakup@linux-speakup.org>;
 Sun, 11 Oct 2020 17:16:41 +0200 (CEST)
Received: from function.home (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 346291F7
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 17:16:41 +0200 (CEST)
Received: from samy by function.home with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1kRd5U-004X28-6h
 for speakup@linux-speakup.org; Sun, 11 Oct 2020 17:16:40 +0200
Date: Sun, 11 Oct 2020 17:16:40 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Flushing issue (was: So, where'd the volume controls get to?)
Message-ID: <20201011151640.2zj4itd6etcbthab@function>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010194612.ut6md7liw4e47ky7@function>
 <alpine.DEB.2.23.453.2010101905240.36490@befuddled.reisers.ca>
 <20201010235355.uqqvyyjqxupfw5qw@function>
 <20201011035532.GC4584@gregn.net>
 <20201011143516.dq6ldzdt4j6aqvus@function>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="d3vyw3fccokbgvtu"
Content-Disposition: inline
In-Reply-To: <20201011143516.dq6ldzdt4j6aqvus@function>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
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


--d3vyw3fccokbgvtu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Samuel Thibault, le dim. 11 oct. 2020 16:35:16 +0200, a ecrit:
> Gregory Nowak, le sam. 10 oct. 2020 20:55:32 -0700, a ecrit:
> > 4. Open the sound card with another application.
> 
> Oh, in that case I do get the mixture on my system indeed.

It seems the buffering is happening inside alsa's dmix then. Could you
try the attached patch on pcaudiolib? (which is the one that configures
the buffering)

Samuel

--d3vyw3fccokbgvtu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

Index: pcaudiolib-1.1/src/alsa.c
===================================================================
--- pcaudiolib-1.1.orig/src/alsa.c
+++ pcaudiolib-1.1/src/alsa.c
@@ -99,6 +99,7 @@ alsa_object_open(struct audio_object *ob
 
 	snd_pcm_hw_params_t *params = NULL;
 	snd_pcm_hw_params_malloc(&params);
+	snd_pcm_uframes_t bufsize = 128;
 
 	int err = 0;
 	if ((err = snd_pcm_open(&self->handle, self->device ? self->device : "default", SND_PCM_STREAM_PLAYBACK, 0)) < 0)
@@ -113,6 +114,8 @@ alsa_object_open(struct audio_object *ob
 		goto error;
 	if ((err = snd_pcm_hw_params_set_channels(self->handle, params, channels)) < 0)
 		goto error;
+	if ((err = snd_pcm_hw_params_set_buffer_size_near(self->handle, params, &bufsize)) < 0)
+		goto error;
 	if ((err = snd_pcm_hw_params(self->handle, params)) < 0)
 		goto error;
 	if ((err = snd_pcm_prepare(self->handle)) < 0)

--d3vyw3fccokbgvtu
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

--d3vyw3fccokbgvtu--
