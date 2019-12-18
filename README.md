## Installation

  ```bash
  git clone git@github.com/Leirda01/point-fichiers.git &&
  cd point-fichiers;
  ./setup.sh
  ```

* L’installation génère des liens symboliques pour chacun des fichiers du dépôts
  (sauf `README.md`, `.git`, et `setup.sh`) Si un fichier est déjà présent, un
  backup est créé avec le suffixe `~`

* Pour les fichiers cachés, le lien symbolique est créé dans `$HOME`, tous les
  autres dans `$HOME/.config`. Ça devrait faire le taff.

## À faire…

* `journal`

  - [x] Enregistrer le journal du jour dans un dossier plutôt qu’un seul
    fichier.

  - [x] La nouvelle journée devrait commencer à trois heures au lieu de minuit.
    Ou bien je devrais me coucher plus tôt…

  - [x] Des phrases plus concises dans le script (pour le vrai journal
    faut que je sois plus `--verbose` au contraire!)

  - [x] Une instance du journal « lock » son utilisation ailleurs. Dans le
    meilleur des cas, appeler le `journal` quelque part alors qu’il est déjà
    ouvert l’ouvre dans l’instance courante de bash.

  - [x] Une meilleure gestion de l’erreur lors de l’existence d’un processus
    existant. Peut-être réussir à fermer l’autre instance (en sauvegardant? Ou
    pas?) avant de l’ouvrir dans le `bash` courant.

* `i3`

  - [ ] S’occuper sérieusement des couleurs.

  - [ ] Gérer les déplacements de `workspaces` différemment (plus facilement le
    déplacer vers un moniteur ou l’autre).

  - [ ] Profiter de la gestion modale des raccourcis de i3.
    - [ ] Naviguer plus facilement parmi (beaucoup) de fenêtres.
    - [ ] Utiliser les workspaces d’une manière plus dynamiques.
    - [ ] Déplacer plus aisément un workspace d’un moniteur à l’autre.
    - [ ] Réorganiser rapidement les containers selon différents critères.

  - [ ] Utiliser des `marks` pour naviguer facilement entre les workspaces /
    container. Ou bien trouver un autre moyen de le faire (modal?)

  - [ ] Mieux gérer la détection des moniteurs (le faire automatiquement)

  - [ ] Gérer les touches spéciales (son, wifi, lecture-pause, lock, calculette,
    _etc_).

  - [ ] Donner des chaînes de caractères en nom aux workspace en fonction de ce qu’ils
    contiennent. Plus lisible, plus propres. Intéressant de savoir comment se
    comporte i3bar quand il doit gérer des noms longs.

* `bash`

  - [x] S’occuper sérieusement des couleurs.

  - [x] Créer un script de `setup` pour ce dépôt.

  - [x] Un nouveau terminal ouvert devra suivre le même chemin qu’un éventuel terminal
    parent.

  - [ ] Mu-muse avec `shopt` et autres options du terminal.

  - [x] Changer la longueur du `PS1` en fonction du nombre de colonnes
    disponible.

* `urxvt`

  - [ ] Mettre à jour les deux-trois couleurs incorrects

  - [ ] Exploiter tout son potentiel

* `setup.sh`

  - [ ] « `sed`er » tous les fichiers pour remplacer les chemins absolues et
    autres.

* `je ne sais pas encore…`

  - [ ] Signale moi quand un programme me demande des permissions `sudo`, quand
    je n’ai pas le focus. Ça évitera de foutre en l’air mes MàJ de `aur`.

  - [ ] __Peut-être__ rendre tout ça `POSIX Conformant` à l’occasion. Gros
    peut-être. Quoique ça ne doit pas être si compliqué… Je ne réalise pas du
    tout ce que ça implique.

## Sources :

* [Taille de la police dans le terminal (`.urxvt/perl`)](https://artisan.karma-lab.net/modifier-taille-polices-durxvt)

* [Historique propre et dynamique](https://unix.stackexchange.com/questions/18212/bash-history-ignoredups-and-erasedups-setting-conflict-with-common-history/18443#18443)

* [Tout mettre dans un `bashrc.d/`](https://github.com/yaf/dotfiles)
