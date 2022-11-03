
_default:
  @just --list

# install using brew formula
build:
  brew install demake.rb


# fix some issues automatically
lint:
  brew style --fix demake.rb