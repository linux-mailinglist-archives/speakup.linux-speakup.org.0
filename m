Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 70E0F2C143A
	for <lists+speakup@lfdr.de>; Mon, 23 Nov 2020 20:11:58 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 87A21380F38; Mon, 23 Nov 2020 14:03:45 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=PcI/hnPZ;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=WvoKOmaN;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 20B07380F22;
	Mon, 23 Nov 2020 14:03:43 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 2BA8D380EB9; Mon, 23 Nov 2020 14:03:41 -0500 (EST)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 2204B380BE3
 for <speakup@linux-speakup.org>; Mon, 23 Nov 2020 14:03:35 -0500 (EST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id BA3031D97
 for <speakup@linux-speakup.org>; Mon, 23 Nov 2020 14:03:22 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Mon, 23 Nov 2020 14:03:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 hubert-humphrey.com; h=date:from:to:subject:message-id
 :mime-version:content-type; s=fm2; bh=IU3sfjmOnUHvgR0luz7XvJnMvG
 UpC1ruV6qzHav6ZCI=; b=PcI/hnPZjzQA8tHrR2i1kSshvkLPlLvBCE72JF7vMe
 8iV+QTggQFHbQkIHI6hiakJ5SZ3Oo0b+W0ctfIb49UUWqgqJeX37ecpn3mOxpcCs
 jGlJiZCcT3S2roM8BElxVnlPJ1b8pzN83JaLEF/qzD+OuRFjSg7L8ptloYSs0djH
 fPHNm0dMEL5k8wJjrH1ldV/0owEmXIfWqhHxVrrvHQ3Bo4Wqdz+qQzNEeQsE2Svg
 xIE1I1i/Tvl4p6GzxSk0rDJKe1C/ks5erPrhyrBz8HcuLoMUVUu1/DVgC9DdoX3m
 9VpYJx5hf1Ffv4M3MoJUv6LSn4tacho6uZhvg2xX51cw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; bh=IU3sfjmOnUHvgR0luz7XvJnMvGUpC
 1ruV6qzHav6ZCI=; b=WvoKOmaNwsCa8SFPg20BMRPYbZI5RB9lpMGtETDt4IPME
 wWxiCf6HZxm9aIzX5n8fRWqoGXYyl3T5SWhhiCy7tjaaJvbf8hs4fGtM5rFnxANH
 9f2P72QyB5OW1EIjL7iveOHPStZcJogJUBUPp+gYjjlDNjymSZzv4gH2hfGqU1N3
 SMloQjTVfqdiDf3sTQiIMI/79TMswfO8dMgjG/ou5KTG4pD753+A9BsefA3sPRNR
 7tfAPPFjDyR19kCinbE92EUFf5mgLAD8H5PduOXr/aQaerVWcHNm/Go8Rx8Rm1vK
 2ab0NzR0B2LQfhAnF6C9MKHSw3sxqzi27CkjpS4+g==
X-ME-Sender: <xms:ege8X05Tr3MNWNcgCd5nFpLRb4QysxY7RBJrQBOQo2wJ1MKq0nKM5g>
 <xme:ege8X16oXH6Bp8HecmAMNI5OfNCL7jlPJ_qMrGn9XMzS2Y2VnJSaglbGjx7tWHgZG
 bLJqfJGyGHLRD3UaA0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudegiedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtgesthdtredttd
 dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
 uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepjeffffdujeelueffieevtd
 eiteettdekgffgkedvueejteektdehfefhhfdvteeknecukfhppedutdegrddujedvrdef
 rdeifeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 gthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:ege8Xzd8wL68j5AJfsGHO9d_krJB-blhLLQaon3xuG4hFQBFP_VMGg>
 <xmx:ege8X5K5JaFah7uw3VpaE1VKU9lC75RRlxBhmppLCowJcLRYylqUqQ>
 <xmx:ege8X4LzpGzVsGdh7gLL8Du2INjiSHJ-jn6dChLK78TsVt5o1aSPDA>
 <xmx:ege8X9WZ7dbk5GWV6ZId8_JA5zhmfdCwcEZAgK7t9IYL5FL2gUf4ZA>
Received: from dance.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
 by mail.messagingengine.com (Postfix) with ESMTPA id B29363064AB3
 for <speakup@linux-speakup.org>; Mon, 23 Nov 2020 14:03:21 -0500 (EST)
Date: Mon, 23 Nov 2020 11:03:17 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: Speakup Config Not Saving-and-Loading
Message-ID: <374fac7-d9eb-c7c7-1764-bc7ddcbba0b@hubert-humphrey.com>
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

Hi All: Well, now that I went from 5.9.01 to 5.9.03 the volume settings 
are back, but pitch is still gone. If I manually change values in 
inflection as well as pitch, after typing
sudo speakupconf save/load
Inflection goes up while it says
"cp no space left on device"
then its kind of a flat DecTalk. And yes, after rebooting the 4second 
delay is back. I wrote to TV Ramon to ask if or how I can connect to his 
Emacsspeak DecTalk server with Speakup? He said he couldn't help me.
Thanks so much in advance
Chime
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
