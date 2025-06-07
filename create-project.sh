#!/bin/bash

# Crear directorio principal
mkdir -p tajal-restaurante

# Crear estructura de assets
mkdir -p tajal-restaurante/assets/css/{base,components,layouts}
mkdir -p tajal-restaurante/assets/js/modules
mkdir -p tajal-restaurante/assets/img/{background,gallery,menu}
mkdir -p tajal-restaurante/assets/fonts
mkdir -p tajal-restaurante/partials

# Archivos CSS
touch tajal-restaurante/assets/css/base/{_reset.css,_variables.css,_typography.css}
touch tajal-restaurante/assets/css/components/{_buttons.css,_cards.css,_forms.css,_navigation.css}
touch tajal-restaurante/assets/css/layouts/{_header.css,_footer.css,_hero.css,_menu.css}

# Crear main.css con imports básicos
cat > tajal-restaurante/assets/css/main.css << EOF
/* Base */
@import 'base/_reset.css';
@import 'base/_variables.css';
@import 'base/_typography.css';

/* Componentes */
@import 'components/_buttons.css';
@import 'components/_cards.css';
@import 'components/_forms.css';
@import 'components/_navigation.css';

/* Layouts */
@import 'layouts/_header.css';
@import 'layouts/_footer.css';
@import 'layouts/_hero.css';
@import 'layouts/_menu.css';
EOF

# Archivos JavaScript
touch tajal-restaurante/assets/js/main.js
touch tajal-restaurante/assets/js/modules/{scroll.js,form.js}

# Parciales HTML
touch tajal-restaurante/partials/{header.html,footer.html,hero.html}

# Páginas principales
touch tajal-restaurante/{index.html,menu.html,reservation.html}

# Archivos de configuración
touch tajal-restaurante/{.gitignore,README.md,package.json}

# Agregar contenido básico a .gitignore
cat > tajal-restaurante/.gitignore << EOF
# Ignorar node_modules
node_modules/

# Ignorar archivos del sistema
.DS_Store
Thumbs.db

# Ignorar archivos de entorno
.env
.env.local
EOF

# Contenido inicial para package.json
cat > tajal-restaurante/package.json << EOF
{
  "name": "tajal-restaurante",
    "version": "1.0.0",
      "description": "Sitio web para restaurante Tajal",
        "main": "index.js",
          "scripts": {
              "build-css": "sass --watch assets/css/main.scss assets/css/main.css"
                },
                  "author": "Tu Nombre",
                    "license": "ISC",
                      "dependencies": {
                          "sass": "^1.75.0"
                            }
                            }
                            EOF

                            echo "Estructura creada exitosamente en: tajal-restaurante"