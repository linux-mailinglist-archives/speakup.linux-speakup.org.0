Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 03FE42A4876
	for <lists+speakup@lfdr.de>; Tue,  3 Nov 2020 15:43:13 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8C3C9380F47; Tue,  3 Nov 2020 09:43:12 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B3D56380F34;
	Tue,  3 Nov 2020 09:43:11 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 52A2B380EEF; Tue,  3 Nov 2020 09:43:11 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 2D68E380EE7
 for <speakup@linux-speakup.org>; Tue,  3 Nov 2020 09:43:11 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 33982B9A;
 Tue,  3 Nov 2020 15:43:09 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CDy0WbOmmdeQ; Tue,  3 Nov 2020 15:43:08 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 4A3CBAAC;
 Tue,  3 Nov 2020 15:43:08 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kZxWd-00G3OY-5s; Tue, 03 Nov 2020 15:43:07 +0100
Date: Tue, 3 Nov 2020 15:43:07 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] speakup: Fix var_id_t values and thus keymap
Message-ID: <20201103144307.3sdr34iafiaa7aza@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 speakup@linux-speakup.org
References: <20201012160646.qmdo4eqtj24hpch4@function>
 <20201103143142.c3juf3lqj4wz5nge@function>
 <20201103144119.GA3110335@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201103144119.GA3110335@kroah.com>
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
Cc: speakup@linux-speakup.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Greg KH, le mar. 03 nov. 2020 15:41:19 +0100, a ecrit:
> On Tue, Nov 03, 2020 at 03:31:42PM +0100, Samuel Thibault wrote:
> > This is a change that should got into 5.10, in the meanwhile the bug
> > (appeared in 5.8) is very inconvenient for users.
> 
> It's in my to-apply queue, sorry, it's really long at the moment.

Ok, np, juste making sure!

Thanks,
Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
