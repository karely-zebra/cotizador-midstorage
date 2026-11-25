# Cotizador MidStorage

Cotizador de inversión para asesores y clientes de MidStorage. Proyección a 10 años: rentas +5% anual y plusvalía de 10% a 13% anual compuesta sobre el valor a la entrega.

- **Fracciones (Holding y One Storage cuentan juntas):** de 1 a 3 acciones rinden 7.5% y pagan cada trimestre; desde 4 acciones **todas** rinden 9% y pagan cada mes.
- **Bono / descuento:** se escribe en pesos en la tarjeta "1 · ¿En qué invierte?" (lo ven asesores y clientes). El rendimiento se calcula sobre lo que realmente paga el cliente (precio de lista − descuento). El valor a la entrega y la plusvalía no cambian.

## Dos accesos

| Para | Link | Qué ve |
|---|---|---|
| **Asesores** | `https://karely-zebra.github.io/cotizador-midstorage/` | Cotizador completo: catálogo, historial, escenarios, rendimiento mensual/trimestral/anual y botón **Link para clientes** |
| **Clientes** | `https://karely-zebra.github.io/cotizador-midstorage/#clientes` | Vista simple: elige productos, ve sus 3 números, la gráfica, la comparación contra CETES/Bolsa y descarga su PDF |

**Administrador:** en *Configuración* se escribe el código de administrador para editar precios, tasas, inventario y el WhatsApp de ventas.

## Cómo actualizar precios

1. Abre el cotizador, ve a **Configuración** y entra con el código de administrador.
2. Cambia lo que necesites. Lo verás al momento en tu navegador.
3. Presiona **Descargar config.json para publicar**.
4. En GitHub abre este repositorio → `config.json` → **Upload files** (o edita el archivo) y reemplázalo con el que descargaste.
5. En 1 o 2 minutos todos los asesores y clientes ven los precios nuevos.

En Configuración también se ajustan:

- **Rendimiento por volumen desde (acciones)** y **Rendimiento por volumen %** (hoy 4 y 9%). En `config.json`: `pagos.umbralTasa` y `pagos.tasaVolumen`.
- **Pago mensual desde (acciones)**: `pagos.umbralMensual`.
- **Oculto:** casilla por producto para dejar de mostrarlo (catálogo, selección y sugerencias) sin borrarlo, por ejemplo cuando un modelo se agota. En `config.json` es `"oculto": true`.

> Si cambias precios directo en el código, hazlo en los dos lugares: `config.json` y `DEFAULTS` dentro de `cotizador.html`, y después corre `./build.sh`.

## Archivos

- `index.html`: la página publicada en GitHub Pages (se genera con `./build.sh`).
- `cotizador.html`: el código fuente (también se publica como enlace de Claude).
- `config.json`: precios, planes, tasas de comparación e inventario que ve todo el equipo.
- `build.sh`: genera `index.html` a partir de `cotizador.html`.

> Las cifras son proyecciones estimadas y pueden variar según las condiciones del mercado. Aplican términos y condiciones de compra.
