<script>
//tarot/wands
import Card from '$lib/Card.svelte';
import storyMeta from './+page.json';
</script>

<template lang="pug">
  Card(props="{storyMeta}" )
        p section{suit of wands}
        p paragraph{The suit of Wands is suit of the military – Stormin’ Norman. Clint Eastwood. Shifting and opportunistic loyalty. You may fight against an army one day, and fight with that same army the next. And you must be able to handle those changing loyalties. Not like the loyalty of the pentacles, who stick together and vote as one value driven block.}
        p subsubsection{Ace of Wands}
        p paragraph{A horn sounds outside the village,} a rider comes through the night. I’m here to spread the alarm. The north country has been invaded! Many have died and terror is all that remains there. We must prepare. Gather your strengths, gather your wise and your fighters. Prepare! I must go, I have told you all I can.Then he rode through the square, shouting “out of my way, Fool” and nearly knocked me over.Inverted. The warning may have come too late to help.
        p subsubsection{Two of Wands}
        p paragraph{The enemy to the north} is nearly unknown to us. Our king has summoned a secret meeting of elders. It does not go well. Our challenge is great, and our options are few. Now, this moment, is the time for our elders to take one last hour in counsel, and then we must commit all our efforts behind their decision. Shall we go forward, or retreat?
        p subsubsection{Three of Wands}
        p paragraph{Our first encounter} with the Northerners was devastating. The northerners are invincible in battle. We have sustained heavy losses already.This may be a temporary setback, we hope that we will prevail.
        p subsubsection{Four of Wands}
        p paragraph{Our best fighters} have fallen in battle. Even in the midst of conflict we must honor the price that each has paid, and the losses we have endured. We gather around a small family service. The son has died from his wounds, and is now laid in his full battle dress for his journey to his fighters reward as the heirophant has promised.May his death be worthy, and our future bright.Inverted. An unworthy death.
        p subsubsection{Five of Wands}
        p paragraph{We have been overcome,} their fighters roam freely in the streets. They easily defeat us on their terms. The grow strong as we grow weak. This is a dark hour.
        p subsubsection{Six of Wands}
        p paragraph{We salvage what we can of our former lives.} Our women and children are sent to safety across the sea. We must become invisible to our enemies.
        p subsubsection{Seven of Wands}
        p paragraph{By guile we have been learning the ways and weaknesses} of the northerners. We have found ways to sap their strength and blunt their weapons. We work in the dark and in secret. We must not be discovered.
        p subsubsection{ Eight of Wands}
        p paragraph{We have taken the northern’s most prized possession.} She is our hostage. The enemy must listen to us now.
        p subsubsection{Nine of Wands}
        p paragraph{The norther king does not sleep.} His mind is confused. He lacks the will for battle. He has lost his drive, and terror in the night is his only friend.Our enemy is only as strong as it’s will to prevail.
        p subsubsection{Ten of Wands}
        p paragraph{We have defeated the norther hordes.} Their fighters have fallen not to our strength, but our will to exist.
        p subsubsection{Page of Wands}
        p A young girl with huge curiosity, she peeks into every drawer, and looks into every purse. Here you see her eavesdropping at the confessional.
        p subsubsection{Knight of Wands}
        p Whether it is with armor, sword, or garrote, Alexander “Ax” Blade is the guy who will get the job done.subsubsection{Queen of Swords}
        p The queen is in charge of logistics, resupply, and maintenance. She is chief counselor on planning and strategies.
        p subsubsection{King of Swords}
        p paragraph{The most experienced} in the real needs of war. Shifting loyalties, shifting strategies. Public displays and private deals. The sacred space for him exists because he can and will defend it. For no other reason. Anything more, cups, wands, pentacles, is all well and good, but can and will be sacrificed if necessary.
        p The suit of Swords is suit of the military – Stormin’ Norman. Clint Eastwood. Shifting and opportunistic loyalty. You may fight against an army one day, and fight with that same army the next. And you must be able to handle those changing loyalties.
        h2#ace-of-wands Ace of Swords
        p
          em
            strong A horn sounds outside the village
          | , a rider comes through the night. I’m here to spread the alarm. The north country has been invaded! Many have died and terror is all that remains there. We must prepare. Gather your strengths, gather your wise and your fighters. Prepare! I must go, I have told you all I can.Then he rode through the square, shouting “out of my way, Fool” and nearly knocked me over.Inverted. The warning may have come too late to help.
        h2#two-of-wands Two of Swords
        p
          em
            strong The enemy to the north
          | is nearly unknown to us. Our king has summoned a secret meeting of elders. It does not go well. Our challenge is great, and our options are few. Now, this moment, is the time for our elders to take one last hour in counsel, and then we must commit all our efforts behind their decision. Shall we go forward, or retreat?
        h2#three-of-wands Three of Swords
        p
          em
            strong Our first encounter
          | with the Northerners was devastating. The northerners are invincible in battle. We have sustained heavy losses already. This may be a temporary setback, we hope that we will prevail.
        h2#four-of-wands Four of Swords
        p
          em
            strong Our best fighters
          | have fallen in battle. Even in the midst of conflict we must honor the price that each has paid, and the losses we have endured. Many are wounded and our only opportunity is retreat and recuperation. Our doctors are tending them as best we can. We gather around a small family service. The son has died from his wounds, and is now laid in his full battle dress for his journey to his fighters reward as the heirophant has promised. May his death be worthy, our recovery rapid and our future bright. Inverted. An unworthy loss.
        h2#five-of-wands Five of Swords
        p We have been overcome, their fighters roam freely in the streets. They easily defeat us on their terms. The grow strong as we grow weak. This is a dark hour.
        h2#six-of-wands Six of Swords
        p
          em
            strong We salvage what we can of our former lives.
          | Our women and children are sent to safety across the sea. We must become invisible to our enemies.
        h2#seven-of-wands Seven of Swords
        p
          strong
            em By guile we have been learning the ways and weaknesses
          | of the northerners. We have found ways to sap their strength and blunt their weapons. We work in the dark and in secret. We must not be discovered.
        h2#eight-of-wands Eight of Swords
        p
          strong
            em We have taken the norther’s most prized possession.
          | She is our hostage. The enemy must listen to us now.
        h2#nine-of-wands Nine of Swords
        p
          strong
            em The norther king does not sleep
          | . His mind is confused. He lacks the will for battle. He has lost his drive, and terror in the night is his only friend. Our enemy is only as strong as it’s will to prevail.
        h2#ten-of-wands Ten of Swords
        p
          em
            strong We have defeated the norther hordes.
          | Their fighters have fallen not to our strength, but our will to exist.
        h2#page-of-wands Page of Swords
        p
          strong
            em The informer
          | : A young girl with huge curiosity, she peeks into every drawer, and looks into every purse. Here you see her eavesdropping at the confessional. She looks and reports on any weakness for her king, but misleads any enemy.
        h2#knight-of-wands Knight of Swords
        p
          em
            strong The soldier
          | – Whether it is with armor, sword, or garrote, Alexander “Ax” Blade is the guy who will get the job done.
        h2#queen-of-wands Queen of Swords
        p
          em
            strong The Kingdom
          | – the fruits of conquest and the resources to continue. The queen is in charge of logistics, resupply, and maintenance. She is chief counselor on planning and strategies.
        h2#king-of-wands King of Swords
        p
          em
            strong The most experienced
          | in the realities of war. Shifting loyalties, shifting strategies. Public displays and private deals. The sacred space for him exists because he can and will defend it. For no other reason. Anything more, cups, wands, pentacles, is all well and good, but can and will be sacrificed if necessary.
  footer.card-footer
    p.text-muted that's all--
</template>

<style>
</style>