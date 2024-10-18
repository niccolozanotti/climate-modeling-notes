cmake_minimum_required(VERSION 3.20)

set (LATEX DEFAULT BUILD pdflatex)
#set(LATEX_USE_SYNCTEX ON)  #
#set(LATEX_SYNCTEX_FLAGS "-synctex=1")
project(cm-notes NONE)
include(UseLATEX.cmake)

add_latex_document(cm.tex TARGET_NAME cm
        INPUTS setup.sty commands.sty theorems.sty
        CM/introduction.tex
        CM/atmospheric-general-circulation.tex
        CM/oceanic-general-circulation.tex

        BIBFILES bibliography.bib
        USE_BIBLATEX
        IMAGE_DIRS figs/CM figs/GD figs/NM
        #  USE_INDEX
        EXCLUDE_FROM_ALL
)

add_latex_document(gd.tex TARGET_NAME gd
        INPUTS setup.sty commands.sty theorems.sty
        GD/introduction.tex
        GD/circulation-theorems-ertel-potential-vorticity.tex
        GD/homogeneous-flows.tex
        GD/quasi-geostrophic-potential-vorticity.tex
        GD/vorticity-equation.tex
        GD/flows-over-topography.tex
        GD/waves-oscillations.tex
        GD/energetics.tex
        GD/atmospheric-general-circulation.tex
        GD/energy-balance.tex
        GD/oceanic-general-circulation.tex
        GD/heat-momentum-sources.tex
        GD/theory-symmetric-circulation.tex
        GD/tropical-waves.tex
        GD/appendix.tex

        BIBFILES bibliography.bib
        USE_BIBLATEX
        IMAGE_DIRS figs/GD
        #  USE_INDEX
        EXCLUDE_FROM_ALL
)


add_latex_document(nm.tex TARGET_NAME nm
        INPUTS setup.sty commands.sty theorems.sty
         NM/foreword.tex
         NM/introduction.tex
         NM/time-differencing-scheme.tex
         NM/advection-equation.tex
         NM/gravity-wave-equations.tex

        BIBFILES bibliography.bib
        USE_BIBLATEX
        IMAGE_DIRS figs/NM
        #  USE_INDEX
        EXCLUDE_FROM_ALL
)