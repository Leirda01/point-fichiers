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

* `i3`

  - [ ] Choisir le nom d’un nouveau workspace et naviguer parmis les workspaces
    en les désignant par nom.

  - [ ] Donner le focus à une fenêtre en la recherchant par nom, indépendamment
    du workspace dans lequel elle se trouve.

  - [ ] Permet de spécifier si un workspace prend le focus sur l’écran
    secondaire, et lequel.

  - [ ] Créer une sorte de « workspace HUB » qui afficherait les informations
    systèmes et des détails à propos des autres workspaces et fenêtres.

  - [ ] Mieux gérer la détection des moniteurs (le faire automatiquement)

  - [ ] Gérer les touches spéciales (son, wifi, lecture-pause, lock, calculette,
    _etc_).

* `vim`

  - [ ] Retirer les messages d’erreurs dûs à Pathogen / Ne plus utiliser
    Pathogen.

  - [ ] Utiliser `vim-plug`.

  - [ ] Créer mes propres mappings bépo plutôt que d’utiliser le plugin de
    @michamos.

* `setup.sh`

  - [ ] « `sed`er » tous les fichiers pour remplacer les chemins absolues et
    autres.

## Sources :

* [Taille de la police dans le terminal (`.urxvt/perl`)](https://artisan.karma-lab.net/modifier-taille-polices-durxvt)

* [Historique propre et dynamique](https://unix.stackexchange.com/questions/18212/bash-history-ignoredups-and-erasedups-setting-conflict-with-common-history/18443#18443)

* [Tout mettre dans un `bashrc.d/`](https://github.com/yaf/dotfiles)
