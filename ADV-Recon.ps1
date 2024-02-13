# Define el idioma y la distribución del teclado que deseas establecer (por ejemplo, "en-US" para inglés de Estados Unidos y "0409:00000409" para la distribución del teclado en inglés)
$desiredLanguage = "en-US"
$desiredKeyboardLayout = "0409:00000409"

# Instala el paquete de idioma inglés (Estados Unidos)
Install-WindowsPackage -Online -PackageName Microsoft-Windows-Client-Language-Pack-Package~31bf3856ad364e35~amd64~$desiredLanguage~10.0.19041.1

# Establece el idioma recién agregado como idioma de visualización predeterminado
Set-WinUILanguageOverride -Language $desiredLanguage

# Establece la distribución del teclado especificada
Set-WinUserLanguageList -LanguageList $desiredLanguage -Force

# Configura la distribución del teclado
Set-WinUserLanguageList -LanguageList $desiredKeyboardLayout -Force

# Reinicia el sistema para aplicar los cambios
Restart-Computer -Force
