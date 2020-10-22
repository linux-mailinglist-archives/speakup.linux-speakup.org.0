Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A26FC2961AC
	for <lists+speakup@lfdr.de>; Thu, 22 Oct 2020 17:27:39 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 42AF8380E9E; Thu, 22 Oct 2020 11:27:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1603380459;
	bh=fLoO2knj0102V/dthdyg0SYYxtqBDDUIaYADxBhH0hc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=kR1+OpaQk6Ov1ddaUdoDf6MSY+JyK5llr9gNArJfqtx2HPOynFf5o1fZEPydDPH3d
	 vn6zU5k/WU57KUBRpULZFaxbYadK65PW4lsM3zrCBQhKxrHsr7aHGQTP2Z6XU2j2J/
	 tQn7ZCvQ5FPEbpRF4lB+Iaiu/QmjRNlnStkyb/bQ=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AF2A6380F56;
	Thu, 22 Oct 2020 11:27:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1603380448;
	bh=fLoO2knj0102V/dthdyg0SYYxtqBDDUIaYADxBhH0hc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=Ox8d2+GhMjiyG0N9k8OF0VgoPSDPqpikPQRhiHahrCaCu0J17x4l5KbYOHAD39QmO
	 s6b7Rzz+uKbjza3Q7Bxgo/ViBvFtfA+R7alfxLvaqQF6STqbEqn1blRZEolNET1bLg
	 DL6NbVTyJGcPjuoG2Qt11L/I+64h94JQhPy8qfmg=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 9A1B0380BE8; Thu, 22 Oct 2020 10:51:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1603378306;
 bh=geXg9KwnorxxSU12f6wCe6+XoYRnloPu8L99i/LZOZE=;
 h=Date:From:To:Subject:From;
 b=QTYhb/0p7iidXgRZFbrvBEOpT6KtF5lqLIqWDKdBheZXuPWXsa03Hy/WQHaKjbEOD
 E1Un1WIl14VkbMVdhdeBoKrfi67F7O13CSny1YUJj8DpSjoCrqV5KJdoRq/p1J8VWy
 H8lTAFoNSwKTHnzZuRojpIV0VVt842UBzGGImEwE=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 88145380BC2
 for <speakup@linux-speakup.org>; Thu, 22 Oct 2020 10:51:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1603378306;
 bh=geXg9KwnorxxSU12f6wCe6+XoYRnloPu8L99i/LZOZE=;
 h=Date:From:To:Subject:From;
 b=QTYhb/0p7iidXgRZFbrvBEOpT6KtF5lqLIqWDKdBheZXuPWXsa03Hy/WQHaKjbEOD
 E1Un1WIl14VkbMVdhdeBoKrfi67F7O13CSny1YUJj8DpSjoCrqV5KJdoRq/p1J8VWy
 H8lTAFoNSwKTHnzZuRojpIV0VVt842UBzGGImEwE=
Date: Thu, 22 Oct 2020 10:51:46 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: 4Second Delay in DecTalk? (fwd)
Message-ID: <alpine.DEB.2.23.453.2010221050020.240114@befuddled.reisers.ca>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hi folks: Can anyone help Chime with this DECTalk problem? I am more
concerned that he couldn't write to the list so this as much a test
message for the list.

   Kirk


---------- Forwarded message ----------
From: Chime Hart <chime@hubert-humphrey.com>
Subject: 4Second Delay in DecTalk?
Date: Wed, 21 Oct 2020 14:39:20 -0700 (PDT)

Hi Kirk: I realize you may not have a DecTalk, however, Sunday evening I tried 
posting in the Speakup list, I don't think it ever went through. An issue, now 
I have a 4second delay after typing. First we thought it had something to do 
with an io or cereal port. But if I type directly in to the DecTalk, it speaks 
immediately. So some1 quite familliar with DecTalk is sur its a speakup setting 
in a dectlk directory. So I modified several items, but no change. Can you 
please suggest a command or change in a config I can try? Thanks so much in 
advance.
Chime
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
