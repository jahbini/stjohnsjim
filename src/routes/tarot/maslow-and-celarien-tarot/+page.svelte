<script>
  //tarot/maslow-and-celarien-tarot
  import Card from '$lib/Card.svelte';
  import storyMeta from './+page.json';
</script>

<template lang="pug">
  Card(props="{storyMeta}" )
        p The Tarot is a set of 72 archetypes. There are archetypes that describe roles (e.g. High Priestess, Heirophant), situations (e.g. The tower, most of the Minor Arcana), and achievements: (e.g. the star, the sun) – (the Tarot does not address the change of situations as the I Ching does)
        p The Tarot is often associated with fortune telling or predicting the future. Rather, it simply describes situations or relationships that will always be in your life. Drawing them in a reading will often help a client find new ways to view a personal situation.
        p A recent book addressing men’s psychological issues “King, Warrior, Magician, Lover” suggests that a man is measured by how competent he is in all of these areas. The similarity of warrior to “king of swords” and lover to “king of hearts” seemed obvious, and created a way to relate the Tarot to these same men’s issues: becoming a person that is competent as a protector, lover, magician, and provider. These correspond to the kings of the four suits: Swords for dominion and protection, Cups for human relationships, Wands for creating change and adapting to change, Pentacles for prosperity.
        p <span class="highlight SW#K" >The King of Swords</span>" > knows how to <span class="highlight SW#1" >detect</span>, <span class="highlight SW#2" >decide</span>, <span class="highlight SW#3" >attack</span>, <span class="highlight SW#4" >retreat and recoup</span>, knows <span class="highlight SW#5" >domination or loss</span>, <span class="highlight SW#6" >protection and flight</span>, <span class="highlight SW#7" >the necessary use of subterfuge</span>, <span class="highlight SW#8" >take hostages</span>, <span class="highlight SW#9" >knows the loneliness of leadership and the power of fear</span>, <span class="highlight SW#10" >victory and defeat</span>.
        p The King of Wands: knows how to adapt and create events, detect, decide, promote, harness, debate, prevail, multitask, maintain, and succomb.
        p The King of Hearts: knows self, relationships, transient pleasures, ennui, regret, memories, fantasies, discernment, lasting pleasures, family harmony.
        p <span class="highlignt KP">The King of Pentacles</span>: knows opportunity, partnerships, life as worker, money management, poverty, investment, ability to nurture for future harvest, craft, personal economic security, family economic security.
        p The tarot implies that the “Emperor” is competent in all the four suits: the Emperor is a king of all suits. That’s the essence of the tarot’s message for men: you must achieve in all four domains to be the emperor of your domain.
        p Another view of the major and minor arcana fits well with Maslow’s heirarchy of needs, and separates into details the aspects of his needs.
        p Maslow’s needs (from Wikipedia)
        p
          img(src='http://upload.wikimedia.org/wikipedia/commons/6/60/Maslow%27s_Hierarchy_of_Needs.svg', alt)
        p Tarot of Celarien based needs
        p
          img(src='assets/_resampled/resizedimage536402-Celarien-Heirarchy.001.gif', alt)
        | Celarien Tarot
        table
          tbody
            tr
              td Self-actualization - Major Arcana (the emperor pursues the Star, through Temperance to The Sun and beyond)
              td Morality, creativity, spontaneity, compassion, forgiveness
            tr
              td Esteem - Major Arcana, Cups, Pentacles, Swords, wands (self becomes the Emperor, hermit, hanged man, the moon)
              td Confidence, respect, achievement, self forgiveness, acceptance
            tr
              td Relationships - Cups, – Major Arcana
              td Friends, family, sexual intimacy, relationships, patriotism, allegiences
            tr
              td Prosperity – Pentacles – heirophant – the tower
              td Prosperity: employment, harvest, obligations, entrepreneurial and market rewards
            tr
              td Adaptability – Wands – “Strength” – magician
              td Adaptability: resources, goal or value directed behavior, opportunity finding, ability to create and handle events that alter the playing field
            tr
              td Safety – Swords – The chariot – warrior
              td Security: set and maintain boundaries:basis for authority, sex, domination or subjugation – security of body, privacy, health, shelter, property, sphere of influence – domain of swords
            tr
              td Physiological - Cups
              td
                | Life Force: Breath, food, water, sleep, homeostasis, excretion, warmth – Domain of Cups – whole self equals Ace of Cups – Mana
                br
        | Maslow’s Heirarchy
        table
          tbody
            tr
              td Self-actualization
              td Morality, creativity, spontaneity, problem solving,lack of prejudice, acceptance of facts
            tr
              td Esteem
              td Self-esteem, confidence, achievement, respect of others, respect by others
            tr
              td Relationships
              td friendship, family, sexual intimacy
            tr
              td Safety
              td Security of: body, employment, resources, morality, the family, health, property
            tr
              td Physiological
              td Breathing, food, water, sex, sleep, homeostasis, excretion
  footer.card-footer
    p.text-muted that's all--
</template>

<style>
</style>
