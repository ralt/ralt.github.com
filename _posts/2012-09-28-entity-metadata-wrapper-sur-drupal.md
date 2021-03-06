---
layout: post
title: entity_metadata_wrapper() sur Drupal, ou comment se faire plaisir
description: Apprendre à bien utiliser l'entity API de Drupal 7 est bénéfique.
---

J'ai assez galéré ces derniers jours sur l'entity API de Drupal pour devoir
partager mes connaissances à ce sujet.

Ce qu'il faut comprendre, c'est que tout passe par `entity_metadata_wrapper`. Vous devez d'abord installer [Entity API][0] si vous ne l'avez pas fait. Module essentiel.

Chaque fois que vous voulez récupérer la valeur d'un champ, la première ligne à
utiliser est :

{% highlight php %}
$wrapper = entity_metadata_wrapper('node', $node);
{% endhighlight %}

Le 1er paramètre est le type d'entité ('node', 'user', etc), le 2ème est
l'entité elle-même.

Une fois que vous avez fait ça, vous avez accès à tous les champs. Que ce soit
sur l'entité elle-même, ou sur les entités référencées également !

Quelques exemples valent mieux que mille mots :

{% highlight php %}
$wrapper->field_data->value(); // Gets the value of field_data
$wrapper->field_ref->field_data->value(); // Gets the value in the reference
{% endhighlight %}

C'est donc plutôt cool pour récupérer une valeur d'un champ. Mais encore mieux,
on peut également définir des valeurs.

{% highlight php %}
$wrapper->field->set($value); // Sets the value of field
$wrapper->field = $value; // Also sets the value of the field
{% endhighlight %}

Si vous utilisez `->set()` (ou la 2ème méthode), la valeur sera mise à jour, et sera donc affichée
en conséquence. Par contre, elle ne sera pas enregistrée. Vous devez utiliser
`->save()` si vous voulez enregistrer les données de l'entité dans la base.

{% highlight php %}
$wrapper->field->set($value);
$wrapper->save(); // Saves to the database
{% endhighlight %}

Si vous faites un changement sur une entitée référencée, vous ne pouvez pas
utiliser le `->save()` sur le wrapper, mais sur le champ de la référence.

Exemple :

{% highlight php %}
$wrapper->ref->field->set($value);
$wrapper->ref->save();
{% endhighlight %}

Si vous avez un champ multiple, vous pouvez itérer en utilisant
`->getIterator()`, comme ceci :

{% highlight php %}
foreach ($wrapper->multiple_values_field->getIterator() as $delta => $field) {
    $field->value();
}
{% endhighlight %}

En réalité, les Iterators en PHP permettent même d'utiliser la méthode suivante :

{% highlight php %}
foreach ($wrapper->multiple_values_field as $delta => $field) {
    $field->value();
}
{% endhighlight %}

Dernière chose : si vous voulez supprimer une valeur d'un champ multiple, il
n'y a pas de méthode `->delete()`. Et vu que la documentation manquait, j'ai
galéré avant de trouver la solution... La voici :

{% highlight php %}
$wrapper->field[$delta]->set(); // Empty value removes it
{% endhighlight %}

Tout simplement ! J'ai mis à jour [la documentation de Drupal][1] pour que
personne d'autre ne galère autant :-)

Le gros avantage des wrappers, c'est que vous n'avez pas à vous soucier des langues. Le wrapper
prend automatiquement la langue courante, ou `und` si aucune langue n'est disponible.

Voilà ! C'est à peu près tout ce qu'il y a à savoir pour commencer à utiliser
le wrapper. Comme je disais, ça rend la vie beaucoup plus facile que d'utiliser
des tableaux avec des langues etc...

   [1]: http://drupal.org/node/1021556
