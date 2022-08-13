Return-Path: <speakup+bounces-540-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 02262591D2B
	for <lists+speakup@lfdr.de>; Sun, 14 Aug 2022 01:42:28 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=B9BpPBH5;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 95A193847B6; Sat, 13 Aug 2022 19:42:27 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E00EE3847E8
	for <lists+speakup@lfdr.de>; Sat, 13 Aug 2022 19:42:25 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B1DA8384781; Sat, 13 Aug 2022 19:42:21 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9B0D438476D
	for <speakup@linux-speakup.org>; Sat, 13 Aug 2022 19:42:20 -0400 (EDT)
Received: from [192.168.0.11] (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id AFB9124894;
	Sun, 14 Aug 2022 00:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1660430390; bh=o8Nzb1V879Ua8jLWf8iQRs8g10eDr6KcWBBdyRbdKQY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=B9BpPBH5RBKep3aVSAWfPyNbf3vN4c/ptZk4/Ln4uN2OKgEpjbLRIqC9LB4TbB3or
	 c2kLyXeOPp94L5Z0r21ofMeE3i4lxApBf5SmBBUi+0W52HvlywLfN3FaeCObkMZymF
	 y3yaVT+Kwu+aFYyaUL7fcVVQv1NgSZoogPHY5orkF8RL+1d3Fa3UPovusMl0ScyOOL
	 Xi57vpeRq7Q7Rsj0XFDNNNOYaCm/grvCsUZgMAmr3g3qt0S8AHrXEWCgMqIOSVNc6F
	 Df1BNmQEtDmP2vV/VelZ2015lLx5QedoV5U4l7ocDVFaBLhVGEqfN7DVY7j4vCj2/G
	 JaHKQ8Rj4SAbg==
Message-ID: <fa2b05c2-3556-b6e2-c125-045ef5e5724e@slint.fr>
Date: Sun, 14 Aug 2022 01:42:12 +0200
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
Content-Language: en-US
To: Karen Lewellen <klewellen@shellworld.net>
Cc: speakup@linux-speakup.org, Blinux-list@redhat.com,
 Milan Zamazal <pdm@zamazal.org>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com>
 <Pine.LNX.4.64.2208121226001.1229118@server2.shellworld.net>
 <871qtkrs03.fsf@zamazal.org>
 <Pine.LNX.4.64.2208131430230.1254020@server2.shellworld.net>
 <87o7wnq59r.fsf@zamazal.org>
 <Pine.LNX.4.64.2208131900060.1258388@server2.shellworld.net>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <Pine.LNX.4.64.2208131900060.1258388@server2.shellworld.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Karen, I concur to all Milan said.

Can't you just stop bashing someone who you don't know (and can't answer you
unless he is subscribed to one of the mailing list where you posted this rant,
which seems unfair to me), and a distribution that at least devotes resources to
accessibility, even if they do not focus specifically on what you would like
them to? You should just be grateful for all Fedora as provided and continue to
provide at no cost wrt accessibility. I am, even though I do not personally need
 it.

That there be inaccuracies in the article is not that important and I don't care
that  Luks doesn't know everything in the matter (who does?). I am sure that he
will quickly complete his knowledge, anyway most probably already sufficient for
what he is asked to work on.

Best regards,
Didier


Le 14/08/2022 à 01:07, Karen Lewellen a écrit :
> And as I said from the outset, I am far more concerned with how this article  
> makes accessibility, and Red Hat commitment to accessibility appear  to the public.
> A claim to having authority, when stating one knows nothing about how access can
> be provided to various populations equally deserving is concerning.
> even in the article comments an individual outlined a need, that they did not
> anticipate being met because Fedora was creating a "blindness" program.
> If your associate  leads with stated limits,  yet does not  indicate he plans to
> address them, inclusion on this platform for all who seek it seems  far from
> likely.
> I do agree on the forum though. Had comment snot been closed by the time I got 
> the article, and I been  in a position to do so, I might have  raised them  on
> the spot.
> 
> 
> 
> On Sat, 13 Aug 2022, Milan Zamazal wrote:
> 
>>>>>>> "KL" == Karen Lewellen <klewellen@shellworld.net> writes:
>>
>>    KL> may I ask from where he obtained his software engineering
>>    KL> degree?  Studied computer science?  Perhaps disability studies?
>>    KL> there are certainly scores of disabled individuals with these
>>    KL> various levels of qualification..even who are Linux users.  The
>>    KL> interview did not document a single one, outside of his
>>    KL> experiencing blindness..which is not going to insure he creates
>>    KL> an accessible platform for fedora since access refers to several
>>    KL> populations.  and he states he knows nothing about those.
>>
>> I have already said regarding this what I felt was needed and I don’t
>> find appropriate continuing that discussion here.  I’d suggest focusing
>> on how to improve free software accessibility instead.
>>
>> If anybody cares about Fedora accessibility, there is always opportunity
>> to help by providing fixes to reported bugs, giving technical advice or
>> filing bugs on not yet reported issues.  All of these is needed, it’s
>> sometimes difficult to move on with some issues and to get any help.
>> OTOH trying to demotivate people who work on accessibility is certainly
>> not helpful.
>>
>> Regards,
>> Milan
>>
>>    KL> On Sat, 13 Aug 2022, Milan Zamazal wrote:
>>
>>    >>>>>>> "KL" == Karen Lewellen <klewellen@shellworld.net> writes:
>>    >>
>>    KL> What bothers me most are his lack of actual qualifications, and
>>    KL> absolute dismissal of what he has not experienced..as if he
>>    KL> defines Linux usage for everyone.  That attitude is dangerous,
>>    KL> because he is educating those outside of the accessibility
>>    KL> experiences, who will believe his ignorance is factual.  he has
>>    KL> to be expert, it is his job.
>>    >>
>>    >> Hi Karen,
>>    >>
>>    >> I know Lukas personally and I admire his skills and
>>    >> qualifications.  I also know first hand that he is open to
>>    >> constructive feedback and I believe he’d be happy to be corrected
>>    >> about possible technical inaccuracies in the interview.  It may
>>    >> be also a good opportunity to find out what’s possibly missing in
>>    >> making anybody better informed.
>>    >>
>>    >> As for “absolute dismissal of what he has not experienced”, what
>>    >> reasonable free software alternatives to a less or more standard
>>    >> desktop with Orca and a software synthesizer can you see for a
>>    >> common blind user who needs to use a fully working web browser,
>>    >> to read and process text documents, to be compatible with other
>>    >> computer users, etc.?
>>    >>
>>    >> And let’s be realistic.  We celebrate every single developer
>>    >> hired to improve accessibility.  This tells something about the
>>    >> state of the matters.  We cannot expect that a single person will
>>    >> fix all the kinds of accessibility problems in all the
>>    >> environments.  Lukas works at his job focusing on certain areas
>>    >> currently seen there as urgent ones and I appreciate this
>>    >> opportunity.  Anybody else seeing a need to work on other areas
>>    >> is welcome to contribute to whatever sees fit, as I do.
>>    >>
>>    >> Regards, Milan
>>    >>
>>    >>
>>    >>
>>
>>

