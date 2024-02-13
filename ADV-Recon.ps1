# Define el idioma que deseas establecer (en este caso, inglés de Estados Unidos)
$desiredLanguage = "en-US"

# Define la distribución del teclado que deseas establecer (en este caso, inglés de Estados Unidos)
$desiredKeyboardLayout = "0409:00000409"

# Agrega el idioma especificado
Add-WindowsLanguage -Language $desiredLanguage

# Establece el idioma recién agregado como idioma de visualización predeterminado
Set-WinUILanguageOverride -Language $desiredLanguage

# Define la configuración regional para el idioma
Set-Culture $desiredLanguage

# Establece la distribución del teclado especificada
Set-WinUserLanguageList -LanguageList $desiredLanguage -Force

# Establece la distribución del teclado recién agregada como la predeterminada
Set-WinUserLanguageList -LanguageList $desiredLanguage -KeyboardList $desiredKeyboardLayout

# Reinicia el sistema para aplicar los cambios
Restart-Computer -Force
