# Exo-Ammara
[![CircleCI](https://circleci.com/gh/RSRBX07/Exo-Ammara.svg?style=svg)](https://circleci.com/gh/RSRBX07/Exo-Ammara)
S1.1 : 09/01/2017

Présentation du programme
Ruby : présentation du langage, révision des environnements de travail
Terminal : exécuter un programme en ruby, lancer l’irb
Les chaînes de caractères
Les tableaux
Les entiers
Git : setup, git init, git status, git add, git commit
S1.2 : 10/01/2017

les ranges
méthode de classe vs d’instance
classe d’un objet
looping avec each
branching avec if
git : push, checkout
S1.3 : 11/01/2017 (repositionnement dans la salle)

la comparaison avec ==
définir une méthode, sans argument, avec argument obligatoire et optionnel
return et le retour implicite
git : clone, pull, reset
String#split
Time class
S1.4 : 12/01/2017

la comparaison avec !=
git : le déroulement d’une pull request (PR)
Les hash : instanciation littérale, affection de valeurs aux clefs avec l'opérateur =>
Les symbols et String#to_sym
méthode récursive
42, la réponse à la grande question
S1.5 : 13/01/2017 (Little cooperation )

usage collaboratif d’un repo GitHub
git branch et git checkout -b
S2.1 : 16/01/2017

la création de classes avec class
les variables d’instances avec @identifier
le chargement de contenu de fichier require
la définition de méthodes de classe avec self
les objets falsy : nil et false
les opérateurs “de booléens” || (OR), && (AND)
Array#empty? Fixnum#zero? String#empty?
puts retourne l’objet nil
S2.2 : 17/01/2017

les méthodes privées avec private
les accessors avec attr_reader et attr_writer + symbole avec l’identifier de la variable d’instance
l’initialize initiation à RSpec : installation, initialisation du repo, paramétrage, description de notre classe avec RSpec:describe et de ses méthodes avec it qui prend en argument une chaîne de caractères descriptive de la fonctionnalité attendue + qui exécute le test à proprement parler. Dans ce bloc utilise - la methode expect qui prend comme argument l’objet testé, suivi de la méthode to ou not_to a laquelle on passe un matcher.
expect(objet_teste).to(be_an Array)
S2.3 18/01/2017

révision des méthodes initialize et new
super
l'héritage des classes
la notion de scope
la notion de cascading scope et le processus de recherche des définitions des méthodes lors de leur appel
Découverte de CircleCI
Git : reutilisation de git checkout -b + nom_de_la_nouvelle_branche_qui_sera_cree_ET _sur_laquelle_on_se_checkout
révision des bases de RSpec
revision du mot clef private
revision des d'instances methodes communes a tous les objets :
Object#methods
Object#inspect
Object#class
decouverte de la methode de toutes les instances de la classe Class : Class#ancestors
S2.4 19/01/2017

revision du fonctionnement de super et de scope en cascade
découverte et oublie des variables de classe, explication de pourquoi il ne faut pas les utiliser (le partage et la persistance doivent etre confie a des outils dedies genre bdd) et de comment on peut faire autrement ET OUBLIE DE CETTE NOTION
ecriture et lecture de fichiers
File.open "<chemin_du_fichier>", "w" {|file| file.each_line {|line| puts line} }
__FILE__ chaine de caracteres representant le chemin du fichier où figure ce mot clef
Dir.exist? et File.exist?
decouverte de Yaml, Object#to_yaml et YAML::load
S2.5 20/01/2017

