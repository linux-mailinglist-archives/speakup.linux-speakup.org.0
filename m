Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D09192A4D39
	for <lists+speakup@lfdr.de>; Tue,  3 Nov 2020 18:38:59 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 70554380F5F; Tue,  3 Nov 2020 12:38:59 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 323E2380F6E;
	Tue,  3 Nov 2020 12:38:59 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 237D6380F12; Tue,  3 Nov 2020 12:38:58 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 01F0C380EEC
 for <speakup@linux-speakup.org>; Tue,  3 Nov 2020 12:38:58 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 2A46FA5B
 for <speakup@linux-speakup.org>; Tue,  3 Nov 2020 18:38:57 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LfE2V23f_FpZ for <speakup@linux-speakup.org>;
 Tue,  3 Nov 2020 18:38:56 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr
 (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 9BBEE20A
 for <speakup@linux-speakup.org>; Tue,  3 Nov 2020 18:38:56 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1ka0Gm-00Gc4j-2D
 for speakup@linux-speakup.org; Tue, 03 Nov 2020 18:38:56 +0100
Date: Tue, 3 Nov 2020 18:38:56 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Cut-and-Paste is Working Again
Message-ID: <20201103173856.jr44dcybdsf2s3o6@function>
References: <0bf28e-3c70-7e4a-e543-daadd91e28d6@hubert-humphrey.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0bf28e-3c70-7e4a-e543-daadd91e28d6@hubert-humphrey.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Chime Hart, le mar. 03 nov. 2020 09:35:25 -0800, a ecrit:
> Well, some good-news, I rebooted my laptop-and-now cut-and-paste
> works-and-does not hang a console.

Good!

I'll submit it as well for Linux 5.10 and to be backported to older
kernels.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
