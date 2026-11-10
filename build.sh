#!/bin/sh
# Genera index.html (GitHub Pages) a partir de cotizador.html (fuente; también se publica en Claude)
set -e
cd "$(dirname "$0")"
SRC=cotizador.html
HEAD_END=$(grep -n '^</style>' "$SRC" | head -1 | cut -d: -f1)
{
  printf '<!doctype html>\n<html lang="es">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  head -n "$HEAD_END" "$SRC"
  printf '</head>\n<body>\n'
  tail -n +"$((HEAD_END+1))" "$SRC"
  printf '\n</body>\n</html>\n'
} > index.html
echo "index.html generado"
