$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
Write-Host 'Baixando assets oficiais Samsung...' -ForegroundColor Cyan
$items = @(
  @('Galaxy Z Fold8 Ultra','assets\products\zfold\galaxy-z-fold8-ultra.png','https://samsungbrshop.vtexassets.com/arquivos/ids/294698-800-auto?v=639211285173730000'),
  @('Galaxy Z Flip8','assets\products\zflip\galaxy-z-flip8.png','https://samsungbrshop.vtexassets.com/arquivos/ids/294844-800-auto?v=639211344956630000'),
  @('Galaxy S26 Ultra','assets\products\s\galaxy-s26-ultra.png','https://samsungbrshop.vtexassets.com/arquivos/ids/278468-800-auto?v=639076206131900000'),
  @('Galaxy S26 FE','assets\products\sfe\galaxy-s26-fe.png','https://images.samsung.com/is/image/samsung/p6pim/br/sm-s741bzkjzto/gallery/br-galaxy-s26-fe-sm-s741-sm-s741bzkjzto-554433831?$1164_776_PNG$'),
  @('Galaxy A57 5G','assets\products\a\galaxy-a57-5g.png','https://images.samsung.com/is/image/samsung/p6pim/br/sm-a576bzafzto/gallery/br-galaxy-a57-5g-sm-a576-585544-sm-a576bzafzto-552168910?$1164_776_PNG$'),
  @('Galaxy A17 5G','assets\products\aentry\galaxy-a17-5g.png','https://samsungbrshop.vtexassets.com/arquivos/ids/266302-800-auto?v=638926744702900000'),
  @('Galaxy Tab S11 Ultra','assets\products\tabs\galaxy-tab-s11-ultra.png','https://images.samsung.com/is/image/samsung/p6pim/br/sm-x930nzahzto/gallery/br-galaxy-tab-s11-ultra-sm-x930-sm-x930nzahzto-548653886?$1164_776_PNG$'),
  @('Galaxy Tab A11+ 5G','assets\products\taba\galaxy-tab-a11-plus-5g.png','https://images.samsung.com/is/image/samsung/p6pim/br/sm-x236bzaazto/gallery/br-galaxy-tab-a11-plus-sm-x230-sm-x236bzaazto-550174383?$1164_776_PNG$'),
  @('Galaxy Book6 (14")','assets\products\book\galaxy-book6.png','https://images.samsung.com/is/image/samsung/p6pim/br/np740vjg-la3br/gallery/br-galaxy-book6-14-inch-np740vjgf-600690-np740vjg-la3br-553876209?$1164_776_PNG$'),
  @('Galaxy Book6 Ultra (16")','assets\products\bookultra\galaxy-book6-ultra.png','https://images.samsung.com/is/image/samsung/p6pim/br/np960ujh-yg1br/gallery/br-galaxy-book6-ultra-16-inch-np960ujhe-np960ujh-yg1br-553879477?$1164_776_PNG$'),
  @('Galaxy Book Go (14")','assets\products\bookgo\galaxy-book-go.png','https://images.samsung.com/is/image/samsung/p6pim/br/np340xla-k0abr/gallery/br-samsung-book-np340xla-k0abr-front-silver-547344185?$1164_776_PNG$'),
  @('Galaxy Watch9 44mm','assets\products\watch\galaxy-watch9-44mm.png','https://shop.samsung.com/latin/cac/pub/media/catalog/product/f/9/f9_000_set-cut-all-44mm.png'),
  @('Galaxy Buds4 Pro','assets\products\buds\galaxy-buds4-pro.png','https://samsungbrshop.vtexassets.com/arquivos/ids/279088-800-auto?v=639076254339170000')
)
foreach($i in $items){
  $target=Join-Path $root $i[1]
  $dir=Split-Path -Parent $target
  New-Item -ItemType Directory -Force -Path $dir | Out-Null
  Write-Host ('  '+$i[0])
  Invoke-WebRequest -Uri $i[2] -OutFile $target -UseBasicParsing
}
Write-Host 'Concluído.' -ForegroundColor Green
