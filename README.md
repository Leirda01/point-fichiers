## L’installation

* Exécuter les commandes suivantes dans le shell :
  ```bash
  cd .config;\
  git clone git@github.com/Leirda01/point-fichiers.git &&\
  cd point-fichiers;\
  ./setup.sh
  ```

* L’installation génère des liens symboliques pour chacun des fichiers du dépôts
  (sauf README.md, .git, et lui-même). Si un fichier est déjà présent, un backup
  est créé avec le suffixe `~` (ATTENTION : écrase toute précédente backup).

* Pour les fichiers cachés, le lien symbolique est créé dans `${HOME}`, tous les
  autres dans `.config`. Ça devrait faire le taff.

## À faire…

* `journal`

  - [x] Réécrire complètement le script, en `TDD`, pour l’entraînement.

  - [x] Enregistrer le journal du jour dans un dossier plutôt qu’un seul
    fichier.

  - [x] La nouvelle journée devrait commencer à trois heures au lieu de minuit.
    Ou bien je devrais me coucher plus tôt…

  - [x] Des phrases plus concises dans le script (pour le vrai journal
    faut que je sois plus `--verbose` au contraire!)

  - [ ] Une instance du journal « lock » son utilisation ailleurs. Dans le meilleur
    des cas, appeler le `journal` quelque part alors qu’il est déjà ouvert
    l’ouvre dans l’instance courante de bash.

  - _finalement il n’y aura pas eu de `TDD`…_

* `i3`

  - [ ] S’occuper sérieusement des couleurs.

  - [ ] Gérer les déplacements de `workspaces` différemment (plus facilement le
    déplacer vers un moniteur ou l’autre).

  - [ ] Profiter de la gestion modale des raccourcis de i3.
    - [ ] Créer un mode pour gérer les workspaces.
    - [ ] Créer un mode pour lancer des programmes.
    - [ ] Gérer les changements et interactions entre les modes.

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

  - [ ] Changer la longueur du `PS1` en fonction du nombre de colonnes
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
