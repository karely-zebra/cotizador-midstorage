# Cotizador MidStorage

Cotizador de inversión para asesores y clientes de MidStorage. Usa los mismos cálculos que el constructor de portafolio de midstorage.com: 10 años, precio de lista, rentas +5% anual y plusvalía de 7% anual compuesta sobre el valor a la entrega.

## Dos accesos

| Para | Link | Qué ve |
|---|---|---|
| **Asesores** | `https://karely-zebra.github.io/cotizador-midstorage/` | Cotizador completo: planes de pago, comparar planes, catálogo, historial, escenarios y botón **Link para clientes** |
| **Clientes** | `https://karely-zebra.github.io/cotizador-midstorage/#clientes` | Vista simple: elige productos y plan, ve sus 3 números, la gráfica, la comparación contra CETES/Bolsa y descarga su PDF |

**Administrador:** en *Configuración* se escribe el código de administrador para editar precios, tasas, inventario y el WhatsApp de ventas.

## Cómo actualizar precios

1. Abre el cotizador, ve a **Configuración** y entra con el código de administrador.
2. Cambia lo que necesites. Lo verás al momento en tu navegador.
3. Presiona **Descargar config.json para publicar**.
4. En GitHub abre este repositorio → `config.json` → **Upload files** (o edita el archivo) y reemplázalo con el que descargaste.
5. En 1 o 2 minutos todos los asesores y clientes ven los precios nuevos.

## Archivos

- `index.html`: la página publicada en GitHub Pages (se genera con `./build.sh`).
- `cotizador.html`: el código fuente (también se publica como enlace de Claude).
- `config.json`: precios, planes, tasas de comparación e inventario que ve todo el equipo.
- `build.sh`: genera `index.html` a partir de `cotizador.html`.

> Las cifras son proyecciones estimadas y pueden variar según las condiciones del mercado. Aplican términos y condiciones de compra.
