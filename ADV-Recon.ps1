# Define el idioma que deseas establecer (por ejemplo, "es-ES" para español de España)
$desiredLanguage = "es-ES"

# Agrega el idioma especificado
Add-WindowsLanguage -Language $desiredLanguage

# Establece el idioma recién agregado como idioma de visualización predeterminado
Set-WinUILanguageOverride -Language $desiredLanguage

# Reinicia el sistema para aplicar los cambios
Restart-Computer -Force
