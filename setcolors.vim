" Change the color scheme from a list of color scheme names.
" Version 2010-09-12 from http://vim.wikia.com/wiki/VimTip341
" Press key:
"   F8                next scheme
"   Shift-F8          previous scheme
"   Alt-F8            random scheme
" Set the list of color schemes used by the above (default is 'all'):
"   :SetColors all              (all $VIMRUNTIME/colors/*.vim)
"   :SetColors my               (names built into script)
"   :SetColors blue slate ron   (these schemes)
"   :SetColors                  (display current scheme names)
" Set the current color scheme based on time of day:
"   :SetColors now
if v:version < 700 || exists('loaded_setcolors') || &cp
  finish
endif

let loaded_setcolors = 1
let s:mycolors = ['0x7A69_dark', '1989', '256-grayvim', '256-jungle', '256_noir', '3dglasses', 'abbott', 'abyss', 'adam', 'adaryn', 'adobe', 'adrian', 'advantage', 'adventurous', 'afterglow', 'af', 'aiseered', 'alduin', 'ancient', 'anderson', 'angr', 'anotherdark', 'ansi_blows', 'antares', 'apprentice', 'aquamarine', 'aqua', 'arcadia', 'archery', 'argonaut', 'ashen', 'asmanian2', 'asmanian_blood', 'asmdev2', 'asmdev', 'astronaut', 'asu1dark', 'Atelier_CaveDark', 'Atelier_CaveLight', 'Atelier_DuneDark', 'Atelier_DuneLight', 'Atelier_EstuaryDark', 'Atelier_EstuaryLight', 'Atelier_ForestDark', 'Atelier_ForestLight', 'Atelier_HeathDark', 'Atelier_HeathLight', 'Atelier_LakesideDark', 'Atelier_LakesideLight', 'Atelier_PlateauDark', 'Atelier_PlateauLight', 'Atelier_SavannaDark', 'Atelier_SavannaLight', 'Atelier_SeasideDark', 'Atelier_SeasideLight', 'Atelier_SulphurpoolDark', 'Atelier_SulphurpoolLight', 'atom', 'aurora', 'automation', 'autumnleaf', 'autumn', 'ayu', 'babymate256', 'badwolf', 'bandit', 'base16-ateliercave', 'base16-atelierdune', 'base16-atelierestuary', 'base16-atelierforest', 'base16-atelierheath', 'base16-atelierlakeside', 'base16-atelierplateau', 'base16-ateliersavanna', 'base16-atelierseaside', 'base16-ateliersulphurpool', 'base16-railscasts', 'base', 'basic-dark', 'basic-light', 'basic', 'baycomb', 'bayQua', 'bclear', 'beachcomber', 'beauty256', 'beekai', 'behelit', 'benlight', 'Benokai', 'bensday', 'billw', 'biogoo', 'birds-of-paradise', 'bitterjug', 'black_angus', 'blackbeauty', 'blackboard', 'blackdust', 'blacklight', 'BlackSea', 'Black', 'blaquemagick', 'blazer', 'blink', 'Blue2', 'bluechia', 'bluedrake', 'bluegreen', 'bluenes', 'blueprint', 'blueshift', 'blues', 'blue', 'bluez', 'blugrine', 'bluish', 'bmichaelsen', 'boa', 'bocau', 'bog', 'boltzmann', 'borland', 'breeze', 'breezy', 'brighton', 'briofita', 'broduo', 'brogrammer', 'brookstream', 'brown', 'bubblegum-256-dark', 'bubblegum-256-light', 'bubblegum', 'buddy', 'burnttoast256', 'busierbee', 'busybee', 'buttercream', 'bvemu', 'bw', 'c16gui', 'C64', 'cabin', 'cake16', 'cake', 'calmar256-dark', 'calmar256-light', 'camo', 'campfire', 'candycode', 'candyman', 'CandyPaper', 'candy', 'caramel', 'carrot', 'carvedwoodcool', 'carvedwood', 'cascadia', 'celtics_away', 'cgpro', 'chalkboard', 'chance-of-storm', 'charged-256', 'charon', 'Chasing_Logic', 'chela_light', 'cherryblossom', 'chlordane', 'ChocolateLiquor', 'ChocolatePapaya', 'chocolate', 'chroma', 'chrysoprase', 'clarity', 'cleanphp', 'cleanroom', 'clearance', 'cloudy', 'clue', 'cobalt2', 'cobaltish', 'cobalt', 'coda', 'codeblocks_dark', 'codeburn', 'codedark', 'CodeFactoryv3', 'codeschool', 'coffee', 'coldgreen', 'colorer', 'colorful256', 'colorful', 'colorsbox-faff', 'colorsbox-greenish', 'colorsbox-material', 'colorsbox-stblue', 'colorsbox-stbright', 'colorsbox-steighties', 'colorsbox-stnight', 'colorzone', 'contrastneed', 'contrasty', 'cool', 'corn', 'corporation', 'crayon', 'crt', 'crunchbang', 'cthulhian', 'custom', 'd8g_01', 'd8g_02', 'd8g_03', 'd8g_04', 'dante', 'Dark2', 'darkblack', 'darkblue2', 'darkblue', 'darkBlue', 'darkbone', 'darkburn', 'DarkDefault', 'darkdevel', 'darkdot', 'darkeclipse', 'darkerdesert', 'darker-robin', 'darkglass', 'darkocean', 'darkrobot', 'dark-ruby', 'darkslategray', 'darkspectrum', 'darktango', 'Dark', 'darkzen', 'darkZ', 'darth', 'dawn', 'deepsea', 'deep-space', 'default', 'delek', 'delphi', 'denim', 'derefined', 'desert256v2', 'desert256', 'desertedoceanburnt', 'desertedocean', 'desertEx', 'desertink', 'desert', 'despacio', 'detailed', 'deus', 'devbox-dark-256', 'DevC++', 'Dev_Delight', 'deveiate', 'developer', 'Dim2', 'DimBlue', 'DimGreens', 'DimGreen', 'DimGrey', 'DimRed', 'DimSlate', 'Dim', 'diokai', 'disciple', 'distill', 'distinguished', 'django', 'donbass', 'donttouchme', 'doorhinge', 'doriath', 'dracula', 'dual', 'dull', 'duotone-darkcave', 'duotone-darkdesert', 'duotone-darkearth', 'duotone-darkforest', 'duotone-darkheath', 'duotone-darklake', 'duotone-darkmeadow', 'duotone-darkpark', 'duotone-darkpool', 'duotone-darksea', 'duotone-darkspace', 'duotone-dark', 'dusk', 'dw_blue', 'dw_cyan', 'dw_green', 'dw_orange', 'dw_purple', 'dw_red', 'dw_yellow', 'dzo', 'earendel', 'earthburn', 'earth', 'eclipse', 'eclm_wombat', 'ecostation', 'editplus', 'edo_sea', 'ego', 'eink', 'ekinivim', 'ekvoli', 'eldar', 'elda', 'elflord', 'elise', 'elisex', 'elrodeo', 'elrond', 'emacs', 'enigma', 'enzyme', 'erez', 'eva01-LCL', 'eva01', 'eva', 'evening1', 'evening', 'evokai', 'evolution', 'fahrenheit', 'fairyfloss', 'falcon', 'far', 'felipec', 'feral', 'fight-in-the-shade', 'fine_blue', 'firewatch', 'flatcolor', 'flatlandia', 'flatland', 'flattened_dark', 'flattened_light', 'flattown', 'flattr', 'flatui', 'fnaqevan', 'fog', 'fokus', 'forneus', 'freya', 'frood', 'frozen', 'fruidle', 'fruit', 'fruity', 'fu', 'fx', 'gardener', 'garden', 'gemcolors', 'genericdc-light', 'genericdc', 'gentooish', 'getafe', 'getfresh', 'ghostbuster', 'github', 'gobo', 'golded', 'goldenrod', 'golden', 'goodwolf', 'google', 'gor', 'gotham256', 'gotham', 'gothic', 'grape', 'gravity', 'grayorange', 'graywh', 'grb256', 'greens', 'Green', 'greenvision', 'greenwint', 'grey2', 'greyblue', 'greygull', 'grishin', 'gruvbox', 'gryffin', 'guardian', 'guepardo', 'h80', 'habiLight', 'happy_hacking', 'harlequin', 'heliotrope', 'hemisu', 'herald', 'herokudoc-gvim', 'herokudoc', 'heroku-terminal', 'heroku', 'hhazure', 'hhdblue', 'hhdcyan', 'hhdgray', 'hhdgreen', 'hhdmagenta', 'hhdred', 'hhdyellow', 'hhorange', 'hhpink', 'hhspring', 'hhteal', 'hhviolet', 'highlighter_term_bright', 'highlighter_term', 'highwayman', 'hilal', 'holokai', 'hornet', 'horseradish256', 'hotpot', 'hybrid-light', 'hybrid_material', 'hybrid_reverse', 'hybrid', 'hydrangea', 'iangenzo', 'ibmedit', 'icansee', 'iceberg', 'immortals', 'impactG', 'impactjs', 'impact', 'industrial', 'industry', 'ingretu', 'inkpot', 'inori', 'ir_black', 'ironman', 'itg_flat_transparent', 'itg_flat', 'itsasoa', 'jaime', 'jammy', 'janah', 'japanesque', 'jelleybeans', 'jellybeans', 'jellygrass', 'jellyx', 'jhdark', 'jhlight', 'jiks', 'jitterbug', 'kalahari', 'kalisi', 'kaltex', 'kalt', 'kate', 'kellys', 'khaki', 'kib_darktango', 'kib_plastic', 'kings-away', 'kiss', 'kkruby', 'koehler', 'kolor', 'kruby', 'kyle', 'laederon', 'lakers_away', 'landscape', 'lanox', 'lanzarotta', 'lapis256', 'last256', 'late_evening', 'lazarus', 'legiblelight', 'leglight2', 'leo', 'less', 'lettuce', 'leya', 'lightcolors', 'LightDefaultGrey', 'LightDefault', 'lightning', 'LightTan', 'Light', 'LightYellow', 'lilac', 'lilydjwg_dark', 'lilydjwg_green', 'lilypink', 'lingodirector', 'liquidcarbon', 'list', 'literal_tango', 'lizard256', 'lizard', 'lodestone', 'loogica', 'louver', 'lucid', 'lucius', 'luinnar', 'lumberjack', 'luna-term', 'luna', 'lxvc', 'lyla', 'mac_classic', 'macvim-light', 'made_of_code', 'madeofcode', 'magellan', 'magicwb', 'mango', 'manuscript', 'manxome', 'marklar', 'maroloccio2', 'maroloccio3', 'maroloccio', 'mars', 'martin_krischik', 'materialbox', 'material-theme', 'materialtheme', 'material', 'matrix', 'maui', 'mayansmoke', 'mdark', 'mellow', 'messy', 'meta5', 'metacosm', 'midnight', 'miko', 'minimalist', 'minimal', 'mint', 'mizore', 'mod8', 'mod_tcsoft', 'mohammad', 'mojave', 'molokai_dark', 'molokai', 'monoacc', 'monochrome', 'monokai-chris', 'monokain', 'monokai-phoenix', 'Monokai', 'montz', 'moody', 'moonshine_lowcontrast', 'moonshine_minimal', 'moonshine', 'mophiaDark', 'mophiaSmoke', 'mopkai', 'more', 'moriarty', 'moria', 'morning', 'moss', 'motus', 'MountainDew', 'mourning', 'mrkn256', 'mrpink', 'mud', 'muon', 'murphy', 'mushroom', 'mustang', 'mythos', 'native', 'nature', 'navajo-night', 'navajo', 'nazca', 'nedit2', 'nedit', 'nefertiti', 'neodark', 'neon', 'neonwave', 'nerv-ous', 'nes', 'nets-away', 'neuromancer', 'neutron', 'neverland2-darker', 'neverland2', 'neverland-darker', 'neverland', 'neverness', 'nevfn', 'new-railscasts', 'newspaper', 'newsprint', 'nicotine', 'nightflight2', 'nightflight', 'nightshade_print', 'nightshade', 'nightshimmer', 'nightsky', 'night', 'night_vision', 'nightVision', 'nightwish', 'noclown', 'nocturne', 'nofrils-acme', 'nofrils-dark', 'nofrils-light', 'nofrils-sepia', 'no_quarter', 'nordisk', 'nord', 'northland', 'northpole', 'northsky', 'norwaytoday', 'nour', 'nuvola', 'obsidian2', 'obsidian', 'oceanblack256', 'oceanblack', 'oceandeep', 'OceanicNextLight', 'OceanicNext', 'oceanlight', 'off', 'olive', 'onedark', 'orange', 'osx_like', 'otaku', 'oxeded', 'pablo', 'pacific', 'paintbox', 'PapayaWhip', 'PaperColor', 'paramount', 'parsec', 'peachpuff', 'peaksea', 'pencil', 'penultimate', 'peppers', 'PerfectDark', 'perfect', 'petrel', 'pf_earth', 'phd', 'phoenix', 'phphaxor', 'phpx', 'pink', 'pixelmuerto', 'plasticine', 'playroom', 'pleasant', 'potts', 'predawn', 'preto', 'pride', 'primaries', 'primary', 'print_bw', 'prmths', 'professional', 'proton', 'ps_color', 'pspad', 'pt_black', 'putty', 'pw', 'py-darcula', 'pyte', 'python', 'quagmire', 'quantum', 'radicalgoodspeed', 'raggi', 'railscasts', 'rainbow_autumn', 'rainbow_fine_blue', 'rainbow_fruit', 'rainbow_night', 'rainbow_sea', 'rakr-light', 'random', 'rastafari', 'rcg_gui', 'rcg_term', 'rdark-terminal', 'rdark', 'redblack', 'redstring', 'Red', 'refactor', 'relaxedgreen', 'reliable', 'reloaded', 'revolutions', 'Revolution', 'robinhood', 'rockets-away', 'ron', 'rootwater', 'sadek1', 'sand', 'sandydune', 'satori', 'saturn', 'scheakur', 'scite', 'scooby', 'seagull', 'sean', 'seashell', 'seattle', 'selenitic', 'seoul256-light', 'seoul256', 'seoul', 'SerialExperimentsLain', 'seti', 'settlemyer', 'sexy-railscasts', 'sf', 'shadesofamber', 'shades-of-teal', 'shine', 'shiny-white', 'shobogenzo', 'sialoquent', 'sienna', 'sierra', 'sift', 'silent', 'simple256', 'simpleandfriendly', 'simple_b', 'simple_dark', 'simplewhite', 'simplon', 'skittles_autumn', 'skittles_berry', 'skittles_dark', 'sky', 'slate2', 'SlateDark', 'Slate', 'smarties', 'smpl', 'smp', 'smyck', 'soda', 'softbluev2', 'softblue', 'softlight', 'solarized8_dark_flat', 'solarized8_dark_high', 'solarized8_dark_low', 'solarized8_dark', 'solarized8_light_flat', 'solarized8_light_high', 'solarized8_light_low', 'solarized8_light', 'solarized', 'sole', 'sol-term', 'sol', 'sonofobsidian', 'sonoma', 'sorcerer', 'soruby', 'soso', 'sourcerer', 'southernlights', 'southwest-fog', 'spacegray', 'spacemacs-theme', 'space-vim-dark', 'spartan', 'spectro', 'spiderhawk', 'Spink', 'spring-night', 'spring', 'sprinkles', 'spurs_away', 'srcery-drk', 'srcery', 'stackoverflow', 'stefan', 'stereokai', 'stingray', 'stonewashed-256', 'stonewashed-dark-256', 'stonewashed-dark-gui', 'stonewashed-gui', 'stormpetrel', 'strange', 'strawimodo', 'summerfruit256', 'summerfruit', 'sunburst', 'surveyor', 'swamplight', 'sweater', 'SweetCandy', 'symfony', 'synic', 'synthwave', 'tabula', 'tango2', 'tango-desert', 'tango-morning', 'tangoshady', 'tango', 'tangoX', 'taqua', 'tatami', 'tayra', 'tchaba2', 'tchaba', 'tcsoft', 'telstar', 'tender', 'termschool', 'tesla', 'tetragrammaton', 'textmate16', 'thegoodluck', 'thermopylae', 'thestars', 'thornbird', 'thor', 'tibet', 'tidy', 'tigrana-256-dark', 'tigrana-256-light', 'tir_black', 'tolerable', 'tomatosoup', 'Tomorrow-Night-Blue', 'Tomorrow-Night-Bright', 'Tomorrow-Night-Eighties', 'Tomorrow-Night', 'Tomorrow', 'tony_light', 'toothpik', 'torte', 'transparent', 'triplejelly', 'trivial256', 'trogdor', 'tropikos', 'true-monochrome', 'turbo', 'turtles', 'tutticolori', 'twilight256', 'twilight', 'twitchy', 'two2tango', 'two-firewatch', 'ubaryd', 'ubloh', 'umber-green', 'understated', 'underwater-mod', 'underwater', 'unicon', 'up', 'valloric', 'vanzan_color', 'vcbc', 'vc', 'vertLaiton', 'vexorian', 'vibrantink', 'vice', 'vilight', 'vimbrains', 'vimbrant', 'vimicks', 'vim-material', 'visualstudio', 'vividchalk', 'VIvid', 'vj', 'void', 'vorange', 'vydark', 'vylight', 'wargrey', 'warm_grey', 'warriors-away', 'wasabi256', 'watermark', 'wellsokai', 'welpe', 'White2', 'whitebox', 'whitedust', 'white', 'widower', 'wikipedia', 'win9xblueback', 'winterd', 'wintersday', 'winter', 'woju', 'wolfpack', 'wombat256dave', 'wombat256i', 'wombat256mod', 'wombat256', 'wombat', 'wood', 'wuye', 'wwdc16', 'wwdc17', 'xcode-default', 'xcode', 'xedit', 'xemacs', 'xian', 'xmaslights', 'xoria256', 'xterm16', 'yeller', 'yuejiu', 'zazen', 'zellner', 'zenburn', 'zenesque', 'zen', 'zephyr', 'zmrok', 'znake', 'slate', 'torte', 'darkblue', 'delek', 'murphy', 'elflord', 'pablo', 'koehler']  " colorscheme names that we use to set color

" Set list of color scheme names that we will use, except
" argument 'now' actually changes the current color scheme.
function! s:SetColors(args)
  if len(a:args) == 0
    echo 'Current color scheme names:'
    let i = 0
    while i < len(s:mycolors)
      echo '  '.join(map(s:mycolors[i : i+4], 'printf("%-14s", v:val)'))
      let i += 5
    endwhile
  elseif a:args == 'all'
    let paths = split(globpath(&runtimepath, 'colors/*.vim'), "\n")
    let s:mycolors = map(paths, 'fnamemodify(v:val, ":t:r")')
    echo 'List of colors set from all installed color schemes'
  elseif a:args == 'my'
    let c1 = 'default elflord peachpuff desert256 breeze morning'
    let c2 = 'darkblue gothic aqua earth black_angus relaxedgreen'
    let c3 = 'darkblack freya motus impact less chocolateliquor'
    let s:mycolors = split(c1.' '.c2.' '.c3)
    echo 'List of colors set from built-in names'
  elseif a:args == 'now'
    call s:HourColor()
  else
    let s:mycolors = split(a:args)
    echo 'List of colors set from argument (space-separated names)'
  endif
endfunction

command! -nargs=* SetColors call s:SetColors('<args>')

" Set next/previous/random (how = 1/-1/0) color from our list of colors.
" The 'random' index is actually set from the current time in seconds.
" Global (no 's:') so can easily call from command line.
function! NextColor(how)
  call s:NextColor(a:how, 1)
endfunction

" Helper function for NextColor(), allows echoing of the color name to be
" disabled.
function! s:NextColor(how, echo_color)
  if len(s:mycolors) == 0
    call s:SetColors('all')
  endif
  if exists('g:colors_name')
    let current = index(s:mycolors, g:colors_name)
  else
    let current = -1
  endif
  let missing = []
  let how = a:how
  for i in range(len(s:mycolors))
    if how == 0
      let current = localtime() % len(s:mycolors)
      let how = 1  " in case random color does not exist
    else
      let current += how
      if !(0 <= current && current < len(s:mycolors))
        let current = (how>0 ? 0 : len(s:mycolors)-1)
      endif
    endif
    try
      execute 'colorscheme '.s:mycolors[current]
      break
    catch /E185:/
      call add(missing, s:mycolors[current])
    endtry
  endfor
  redraw
  if len(missing) > 0
    echo 'Error: colorscheme not found:' join(missing)
  endif
  if (a:echo_color)
    echo g:colors_name
  endif
endfunction

nnoremap <F8> :call NextColor(1)<CR>
nnoremap <S-F8> :call NextColor(-1)<CR>
nnoremap <A-F8> :call NextColor(0)<CR>

" Set color scheme according to current time of day.
function! s:HourColor()
  let hr = str2nr(strftime('%H'))
  if hr <= 3
    let i = 0
  elseif hr <= 7
    let i = 1
  elseif hr <= 14
    let i = 2
  elseif hr <= 18
    let i = 3
  else
    let i = 4
  endif
  let nowcolors = 'elflord morning desert evening pablo'
  execute 'colorscheme '.split(nowcolors)[i]
  redraw
  echo g:colors_name
endfunction

