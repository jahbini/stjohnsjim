---
debug: ""
className: Story
created: '2010-10-25 15:55:41'
lastEdited: '2010-10-25 16:24:19'
title: 'Valkyrie On-Line'
published: '2010-10-25 16:24:19'
published: '2016-09-19'
category: story
embargo: '2016-09-19'
slug: valkyrie-sms
snippets: {  }
headlines:
  - "Notes from the Norse Battlefields"
  - "life before the afterlife"
  - "If Valhalla Invented the Internet"
  - "Are they just Schoolgirls at Heart?"
domain: stjohnsjim.com
hVersion: 0.1
memberOf:
  - TAROT
sourcePath: stjohnsjim/story/valkyrie-sms.md
siteHandle: stjohnsjim
images:
  - harpie-aveugle.jpg
  - harpie-aveugle-t.jpg
  - harpi.png
  - harpi-t.png
  - sessrumnir-t.jpg
  - aubrun.svg
  - aveugle.svg
  - sessrumnir.svg
---
```
  binder.copyAsset "sessrumnir-t.jpg"
  widget = (content)->
    return "<p>#{content}</p>" unless success=content.match /^([\w]+):(.*)/
    T.render ()->
      debugger
      switch success[1]
        when "Aubrun"
          T.div ".flex.justify-start.border.rounded.ml4.mt1.col-7",()->
            T.div ".h4.p1.grey", ()->
              T.text "#{success[1]} -- "
              T.img ".circle.fig-img",
                width: 64
                height: 64
                src: binder.pathToMe()+"/harpi-t.png"
            T.div ".self-center.h4", ->
              T.raw success[2]
        when "Skuld"
          T.div ".flex.justify-start.border.rounded.ml2.mt2.col-8",()->
            T.div ".h4.p1.purple", ()->
              T.text "#{success[1]} -- "
              T.img ".circle.fig-img",
                width: 64
                height: 64
                src: binder.pathToMe()+"/harpie-aveugle-t.jpg"
            T.div ".self-center.h4", ->
              T.raw success[2]
        when "Sessrumnir"
          T.div ".flex.justify-start.border.rounded.ml2.mt3.col-11",()->
            T.div ".h2.p1.fuchsia", ->
              T.text "#{success[1]} -- "
              T.img ".circle.fig-img",
                width: 64
                height: 64
                src: binder.pathToMe()+"/sessrumnir-t.jpg"

            T.div ".self-center.h3", ->
              T.raw success[2]
  binder.setMarkedRenderer 'paragraph',widget
  return ""
  T.div ".flex.justify-start.bor"
```
Per a reader's request for a story for diary entries about a Valkyrie. &nbsp;I changed the &quot;diary&quot; idea into using on-line messaging instead; more of a challenge.

I got some background at this site -- [http://lokis-dottir.livejournal.com/68127.html][0]

Our heroine is Aubrun, a low-ranking wage slave in some corporate hierarchy of the afterlife.  Her mid-level overlord, Skuld, feels she needs to keep these [death goddesses][2]
on a tight leash:  "_Cravers of blood, All of 'em_"

The following is intended to be a real-time corporate messaging between two myth-twits (mythical tweeters) -- hey, who says spiritual beings cant be on the internet.

1. Aubrun - Valkyrie &nbsp;-- Addresses her messages to @Skuld ![aubrun@fancybox.p2](@pathToMe/harpi.png "Harpie Junior Grade Aubrun Reports, Sir!")

2. Skuld - Senior Valkyrie -- Take no lip, give no tit  ![skuld@fancybox.p2](@pathToMe/harpie-aveugle.jpg "I am ready for my close-up, Mr. DeMille")

3. [Sessrumnir][1]:&nbsp;-- Valhalla's waiting station, A giant hall of limbo with wooden benches for the dead.
-----------
Skuld: @Aubrun assignment: 11/23/09 08:30 UTC You have been re-assigned to Darfur sector 3B. report immediately

Aubrun: &nbsp;@Skuld K

Skuld: &nbsp;@Aubrun upon arrival you will choose souls from only the dead, not like in your last assignment.

Aubrun: &nbsp;@Skuld but he was in a coma! &nbsp;That&rsquo;s as good as dead!

Skuld: &nbsp;@Aubrun no, we went all over that during the inquiry. &nbsp;I don&rsquo;t know why Odin stepped in and gave you another chance, but wise up.

Aubrun: &nbsp;@Skuld OK, I&rsquo;ve learned my lesson. &nbsp;I&rsquo;m not to CHOOSE any but really dead souls from the battles.

Skuld: &nbsp;@Aubrun That&rsquo;s right, returns are 2 expensive in temporal and spiritual corrections that must be made.

Skuld: &nbsp;@Aubrun Begin your reports from Darfur sector 3B immediately.

Sessrumnir makes automatic reports on arrivals and departures.

Sessrumnir: &nbsp;@Skuld 11/23/09 08:45 UTC 1EA soul labeled 35273 deposited to Sessrumnir input

Sessrumnir: &nbsp;@Skuld 11/23/09 08:51 UTC 1EA soul labeled 35985 deposited to Sessrumnir input

Sessrumnir: &nbsp;@Skuld 11/23/09 08:52 UTC 1EA soul labeled 37226 deposited to Sessrumnir input

Aubrun:&nbsp;Sessrumnir numbers are going up fast! from 35273 to 37226 in 7 minutes! Too many dead today!&nbsp;

Skuld: &nbsp;@Aubrun You know, I read that too, and you get paid. Just be happy you are still working

Aubrun: &nbsp;@Skuld K, but it&rsquo;s lots of work and long hours down here as a Valkyrie.

Skuld: &nbsp;@Aubrun You get maximum pay for your job specification. &nbsp;If you need, go to HR.

Aubrun: &nbsp;@Skuld No, I&rsquo;m not going to HR again: all smiles and coo-ing. &nbsp;Liars all.

Sessrumnir: &nbsp;@Skuld 11/23/09 09:11 UTC 1EA soul labeled 38177 deposited to Sessrumnir input

Aubrun: &nbsp;@Skuld I'm at Sessrumnir processing says they have 4 souls destined for Valhalla, and want me to take them

Skuld: &nbsp;@Aubrun Nix on the escort to Vahallah, you don&rsquo;t have seniority, and you are only qualified for 2 souls transport.

Aubrun: &nbsp;@Skuld &nbsp;Sorry, I already took all 4. &nbsp;I&rsquo;m in transit to Valhalla, I&rsquo;ll check in there.

later.

Skuld: &nbsp;@Aubrun Valhalla reports that you did not arrive as scheduled. &nbsp;U there?

Much later.

Skuld: &nbsp;@Aubrun U there? &nbsp;REPORT!

Skuld: &nbsp;@Aubrun &nbsp;Where are you? &nbsp;What have you done with those souls??

Skuld: &nbsp;@Aubrun Odin won&rsquo;t save you this time, you better check in NOW.

A bit later...

Aubrun: &nbsp;@Skuld Um. &nbsp;K. I&rsquo;m having a little trouble. &nbsp;Still en-route.

Skuld:&nbsp; @Aubrun &nbsp;Don&rsquo;t tell me you dropped a soul again! &nbsp;And this one was for Valhalla? &nbsp;Odin will be pissed.

Aubrun: &nbsp;@Skuld &nbsp;No sweat, just tell him that Loki tripped me up again.

Skuld: &nbsp;@Aubrun LOL! &nbsp;I used that excuse myself when I was still doing soul-transport. Always Works.

Aubrun: &nbsp;@Skuld yes Loki ALWAYS admits to everything just to piss ODIN off! :-)

-------------------------------

[0]: http://lokis-dottir.livejournal.com/68127.html
[1]: http://en.wikipedia.org/wiki/Sessr&uacute;mnir
[2]: http://www.theoi.com/Daimon/Keres.html
