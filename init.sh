#!/bin/bash
unset CROSS_COMPILE
export OE_HOME="${HOME}/oe"
export OE_OLAY_OE="${OE_HOME}/openembedded"
export OE_OLAY_LOCAL="${OE_HOME}/local"

export BBPATH="${OE_OLAY_LOCAL}:${OE_OLAY_OE}"
export PATH="${OE_OLAY_OE}/bitbake/bin:$PATH"

# bitbake 1.8.12 filters env except for that specified in BB_ENV_EXTRAWHITE  
export BB_ENV_EXTRAWHITE="OE_HOME OE_OLAY_OE OE_OLAY_LOCAL"
