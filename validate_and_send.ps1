$raw = [System.IO.File]::ReadAllText('c:\Users\jpinc\Desktop\n8n claude\agente voz WhatsApp.json', [System.Text.Encoding]::UTF8)
Write-Output "Length: $($raw.Length)"
try {
    $null = [System.Text.Json.JsonDocument]::Parse($raw)
    Write-Output "JSON valido"
} catch {
    Write-Output "JSON invalido: $($_.Exception.Message)"
}
