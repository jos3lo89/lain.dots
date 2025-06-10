local g = vim.g
local opt = vim.opt
--- ============================================================================
-- CONFIGURACIÓN DE OPCIONES NEOVIM
-- ============================================================================

-- LÍDERES DE TECLAS
-- Establece la tecla líder principal y local (usada para shortcuts personalizados)
g.mapleader = " " -- Espaciadora como líder principal
g.maplocalleader = " " -- Espaciadora como líder local (para buffers específicos)

-- CONFIGURACIÓN DE FUENTES
-- Indica si tienes Nerd Fonts instaladas (iconos especiales)
g.have_nerd_font = true -- Cambia a false si no tienes Nerd Fonts

-- ============================================================================
-- APARIENCIA Y NUMERACIÓN
-- ============================================================================

-- NÚMEROS DE LÍNEA
opt.number = true -- Muestra números de línea absolutos
opt.relativenumber = true -- Muestra números relativos 

-- COLORES Y CURSOR
opt.termguicolors = true -- Habilita colores verdaderos (24-bit)
opt.cursorline = true -- Resalta la línea donde está el cursor

-- MODO Y ESTADO
opt.showmode = false -- Oculta el modo en la línea de comandos
opt.signcolumn = "yes" -- Siempre muestra la columna de signos

-- ============================================================================
-- INDENTACIÓN Y ESPACIADO
-- ============================================================================

-- CONFIGURACIÓN DE TABS
opt.tabstop = 2 -- Número de espacios que representa un tab
opt.softtabstop = 2 -- Número de espacios al presionar tab en modo insertar
opt.shiftwidth = 2 -- Número de espacios para auto-indentación
opt.expandtab = true -- Convierte tabs a espacios


-- INDENTACIÓN INTELIGENTE
opt.smartindent = true -- Indentación inteligente para código
opt.autoindent = true -- Mantiene la indentación de la línea anterior
opt.breakindent = true -- Mantiene indentación en líneas wrapeadas


-- ============================================================================
-- BÚSQUEDA
-- ============================================================================
opt.ignorecase = true -- Ignora mayúsculas/minúsculas en búsquedas
opt.smartcase = true -- Pero las considera si escribes mayúsculas
opt.hlsearch = true -- Resalta resultados de búsqueda
opt.incsearch = true -- Búsqueda incremental (mientras escribes)

-- ============================================================================
-- NAVEGACIÓN Y MOVIMIENTO
-- ============================================================================
opt.scrolloff = 6 -- Mantiene 8 líneas visibles arriba/abajo del cursor
opt.mouse = "a" -- Habilita mouse en todos los modos
opt.wrap = true -- Ajusta líneas largas al ancho de ventana

-- ============================================================================
-- VENTANAS Y SPLITS
-- ============================================================================

opt.splitright = true -- Nuevas ventanas verticales se abren a la derecha
opt.splitbelow = true -- Nuevas ventanas horizontales se abren abajo
-- opt.winborder = "single" -- Bordes de ventanas flotantes

-- ============================================================================
-- PORTAPAPELES Y EDICIÓN
-- ============================================================================

opt.clipboard = "unnamedplus" -- Usa portapapeles del sistema
opt.confirm = true -- Pregunta antes de cerrar sin guardar
opt.undofile = true -- Persiste historial de deshacer entre sesiones

-- ============================================================================
-- RENDIMIENTO Y TIEMPOS
-- ============================================================================
opt.updatetime = 150 -- Tiempo para escribir swap y CursorHold (ms)
opt.timeoutlen = 500 -- Tiempo de espera para secuencias de teclas (ms)

-- ============================================================================
-- CARACTERES ESPECIALES Y VISUALIZACIÓN
-- ============================================================================
-- CARACTERES VISIBLES (cuando se activa con :set list)
opt.list = false -- Desactivado por defecto
opt.listchars = {
	tab = "» ", -- Muestra tabs como "» "
	trail = "·", -- Muestra espacios al final como "·"
	nbsp = "␣", -- Muestra espacios no-rompibles como "␣"
}

-- PREVIEW DE COMANDOS
opt.inccommand = "split" -- Muestra preview de sustitución en split

-- ============================================================================
-- OPCIONES ADICIONALES RECOMENDADAS
-- ============================================================================

-- ARCHIVOS Y RESPALDOS
opt.backup = false -- No crear archivos de respaldo
opt.writebackup = false -- No crear respaldo temporal al escribir
opt.swapfile = false -- Deshabilita archivos swap (opcional)

-- FORMATO Y TEXTO
opt.formatoptions:remove({ "c", "r", "o" }) -- No auto-comentar nuevas líneas
opt.iskeyword:append("-") -- Trata palabras con guión como una palabra
