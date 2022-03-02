Return-Path: <speakup+bounces-371-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C5E204CB025
	for <lists+speakup@lfdr.de>; Wed,  2 Mar 2022 21:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1646253922;
	bh=e80RRZzpeFZ+OeU7GL/X7p7efkiyrtk/S2DzSVhIAjY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=m6XORhGiETfxrWoFfkopaR1zrEBd0FLAM7cTaphCH1hbh/rGwMgiGy56VbYiw71Jp
	 aAYVw9Dgey3DhSGXTEA58ZepQWC+uEhI/XmBe+TzrT8gqU5lxIetwczPhz6MoMh30Y
	 YKMp0eflJ+1yh8fHGXYRUIpO8KyYOc5awRY3LRp0=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8A0E1380E0B; Wed,  2 Mar 2022 15:45:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1646253922;
	bh=e80RRZzpeFZ+OeU7GL/X7p7efkiyrtk/S2DzSVhIAjY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=m6XORhGiETfxrWoFfkopaR1zrEBd0FLAM7cTaphCH1hbh/rGwMgiGy56VbYiw71Jp
	 aAYVw9Dgey3DhSGXTEA58ZepQWC+uEhI/XmBe+TzrT8gqU5lxIetwczPhz6MoMh30Y
	 YKMp0eflJ+1yh8fHGXYRUIpO8KyYOc5awRY3LRp0=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7E29C380E9F
	for <lists+speakup@lfdr.de>; Wed,  2 Mar 2022 15:45:22 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1646253919;
	bh=e80RRZzpeFZ+OeU7GL/X7p7efkiyrtk/S2DzSVhIAjY=;
	h=Date:From:To:Subject:From;
	b=LvDZ6uGCark+gGE5Sb4gWAeqwKj4tWIp9oHwRCyTmwE987Z0H58n0Vf06N/GtYLmu
	 63VIlPiukdR3R7qqICKy/D0qEQJvcc3/uUkmbxC1YIA+8t1Zy3RDa5nQlL9xH9fnjK
	 WgrVplp3NyI+cuxKwvBbdQpXZIU3VOf/Sdhu9/RI=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 92A23380BD2; Wed,  2 Mar 2022 15:45:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1646253919;
	bh=e80RRZzpeFZ+OeU7GL/X7p7efkiyrtk/S2DzSVhIAjY=;
	h=Date:From:To:Subject:From;
	b=LvDZ6uGCark+gGE5Sb4gWAeqwKj4tWIp9oHwRCyTmwE987Z0H58n0Vf06N/GtYLmu
	 63VIlPiukdR3R7qqICKy/D0qEQJvcc3/uUkmbxC1YIA+8t1Zy3RDa5nQlL9xH9fnjK
	 WgrVplp3NyI+cuxKwvBbdQpXZIU3VOf/Sdhu9/RI=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7307438096C
	for <speakup@linux-speakup.org>; Wed,  2 Mar 2022 15:45:19 -0500 (EST)
Date: Wed, 2 Mar 2022 15:45:19 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: RPI gravelly speech and pcaudiolib results
Message-ID: <6b67ff97-4b70-8813-c99-c482194b7cf2@reisers.ca>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi folks: Brandon McGinty and I have been poking around attempting to
fix the gravelly voice on Raspberry PI machines. The effect shows up
on both the 32-bit and 64-bit systems.

It took a bit of experimenting to find what I believe is the correct
fix. The problem appears to be the standard buffer size being handed
off to the audio subsystem finishes playing more quickly on the PIs
causing the speech to not sound smooth giving a gravelly speech
output. In the new espeak-ng and libespeak-ng this is handled by
pcaudiolib instead of port-audio under the older espeak package.

To fix the problem you have to hand over larger buffer of sound to
smooth out the effect. The lines in question are line 103 in
pcaudiolib/src/alsa.c and line 83 in pcaudiolib/src/pulseaudio.c. The
default lines each end with dividing by 1000. I first tried just
removing the / 1000 which smoothed out the speech very nicely but
caused the buffers to be large enough that moving between lines and
words in review mode to have an extremely sluggish response because
the buffer wouldn't flush until it finished speaking it. So I put the
/ 1000 back in and started reducing the value to find the result that
would provide smooth speech but still maintain responsiveness with the
review functions of speakup. What I found worked fairly well was a
division value of 200 which seemed to increase the buffer sizes enough
to give smooth speech and keep the quick feel of moving around.

If you are experiencing gravelly speech I'd appreciate it if you would
try the above changes to see if it resolves the problem. You want to
edit 1000 to 200 on lines 102 of alsa.c and line 83 of pulseaudio.c in
pcaudiolib/src and then recompile. Different distros seem to put their
libraries in various weird and wonderful places so be a tad careful
wheninstalling the new libpcaudio libraries and symlinks. Even the RPI
32-bit and RPI 64-bit stash their libraries in different places.

I hope this helps some folks.

   Kirk


