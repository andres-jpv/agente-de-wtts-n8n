$N8N_URL = 'https://susanan8n-n8n.tcezq9.easypanel.host'
$API_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIwMDZjNWQ1ZS1hNjU5LTQzZGItYjM2OC1iZDRkZmIyZGJlOWIiLCJpc3MiOiJuOG4iLCJhdWQiOiJwdWJsaWMtYXBpIiwiaWF0IjoxNzczMzM5NDM4LCJleHAiOjE3NzU4ODAwMDB9.cFX2iQ7-E4ix3-lGyP_QGRh4UVZaqUtjB_Zc6LqoGnM'

# Read with explicit UTF8 encoding
$raw = [System.IO.File]::ReadAllText('c:\Users\jpinc\Desktop\n8n claude\agente voz WhatsApp.json', [System.Text.Encoding]::UTF8)
$wf = $raw | ConvertFrom-Json

# Remove fields that cause errors in the n8n API
$wf.PSObject.Properties.Remove('id')
$wf.PSObject.Properties.Remove('tags')
$wf.PSObject.Properties.Remove('versionId')
$wf.PSObject.Properties.Remove('pinData')
$wf.PSObject.Properties.Remove('meta')

$body = [System.Text.Encoding]::UTF8.GetBytes(($wf | ConvertTo-Json -Depth 100 -Compress))

$headers = @{
    'X-N8N-API-KEY' = $API_KEY
    'Content-Type' = 'application/json; charset=utf-8'
}

try {
    $resp = Invoke-RestMethod -Uri "$N8N_URL/api/v1/workflows" -Method POST -Headers $headers -Body $body -ContentType 'application/json; charset=utf-8'
    Write-Output "OK - ID: $($resp.id) | nombre: $($resp.name)"
    Write-Output "URL: $N8N_URL/workflow/$($resp.id)"
} catch {
    Write-Output "ERROR: $($_.Exception.Message)"
    Write-Output $_.ErrorDetails.Message
}
