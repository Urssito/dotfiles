# Mis Dotfiles ⚙️

Este repositorio contiene mis archivos de configuración personal para un despliegue rápido en instalaciones frescas de Arch Linux.

## Guía de Restauración Rápida

Sigue estos pasos para instalar todos los paquetes y restaurar las configuraciones en tu nuevo sistema.

### 1. Instalar Programas en Lote
Primero, sincroniza todos los paquetes oficiales y del AUR utilizando tus listas respaldadas:

```bash
# Instalar paquetes oficiales de los repositorios de Arch
sudo pacman -S --needed - < pkglist.txt

# Instalar paquetes de la comunidad desde el AUR
yay -S --needed - < aurpkglist.txt
```

### 2. Clonar el Repositorio Bare
Clona el repositorio como un *bare repository* para gestionar los archivos directamente en tu directorio `$HOME`:

```bash
git clone --bare git@github.com:Urssito/dotfiles.git \$HOME/.dotfiles
```

### 3. Configurar el Alias Temporal
Define el alias necesario para interactuar de forma segura con el repositorio:

```bash
alias config='/usr/bin/git --git-dir=HOME/.dotfiles/ --work-tree=HOME'
```

### 4. Desplegar las Configuraciones
Aplica los archivos de configuración a tu directorio de trabajo:

```bash
config checkout
```

> 💡 **Nota Importante:** Si el comando `checkout` falla debido a conflictos con archivos por defecto ya existentes (como `.bashrc`), borra o mueve esos archivos temporales y vuelve a ejecutar `config checkout`.
