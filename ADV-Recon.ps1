# Define el idioma que deseas establecer (en este caso, español de España)
$desiredLanguage = "es-ES"

# Define la distribución del teclado que deseas establecer (en este caso, español de España)
$desiredKeyboardLayout = "040A:0000040A"

# Agrega el idioma especificado
Add-WindowsPackage -Online -PackagePath "C:\Ruta\Al\PaqueteDeIdioma\lp.cab" -NoRestart

# Establece el idioma recién agregado como idioma de visualización predeterminado
Set-WinSystemLocale -SystemLocale $desiredLanguage -Force

# Establece la configuración regional para el idioma
Set-Culture $desiredLanguage

# Establece la distribución del teclado especificada
Set-WinUserLanguageList -LanguageList $desiredLanguage -Force

# Establece la distribución del teclado recién agregada como la predeterminada
Set-WinUserLanguageList -LanguageList $desiredLanguage -KeyboardList $desiredKeyboardLayout

# Reinicia el sistema para aplicar los cambios
Restart-Computer -Force

