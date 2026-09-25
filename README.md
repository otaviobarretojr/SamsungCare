# Samsung Care+ Galaxy Experience — PWA v17

Estrutura de aplicativo separada da antiga página HTML única.

## Estrutura
- `index.html`: shell da interface
- `styles/app.css`: design system e responsividade
- `js/data.js`: preços, franquias, famílias, modelos e regras
- `js/app.js`: navegação, modais, busca e compartilhamento
- `assets/assets-manifest.json`: curadoria oficial dos renders
- `assets/products/...`: destino dos renders locais
- `manifest.webmanifest` + `sw.js`: instalação como PWA
- `tools/download-assets.ps1`: materializa os renders oficiais nos caminhos locais quando executado em um Windows com acesso à internet

## Princípio de assets
O app tenta primeiro o arquivo local; enquanto ele ainda não existir, usa a URL oficial como fallback visual. O compartilhamento tenta usar a imagem e, se o navegador bloquear CORS, usa uma representação interna sem travar.

## Dados comerciais preservados
Tabela de preços e franquias: 31/08/2026. Parcelamento exibido: 10x sem juros.

## Diagnóstico de imagens
Abra `asset-check.html` para ver quais renders estão locais, remotos ou indisponíveis.

Em Windows, `tools/download-assets.bat` tenta materializar todos os renders oficiais nos caminhos locais.
