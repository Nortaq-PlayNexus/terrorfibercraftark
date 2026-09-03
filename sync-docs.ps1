$src="C:\Users\natha\Documents\TerrorFibercraft_1000x\site"
$dst="C:\Users\natha\Documents\FREE-HOSTING-UNIVERSE\TERRORFIBERCRAFT-SITE\site"
if(Test-Path $src){ Remove-Item $dst -Recurse -Force -ErrorAction SilentlyContinue; New-Item -ItemType Directory -Force -Path $dst | Out-Null; Copy-Item "$src\*" $dst -Recurse -Force; Write-Host "Synced mkdocs site -> TERRORFIBERCRAFT-SITE/site" } else { Write-Host "Run: uv run mkdocs build --strict in TerrorFibercraft_1000x first" }
