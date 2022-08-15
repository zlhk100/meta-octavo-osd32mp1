
do_compile() {
    unset -v CFLAGS CPPFLAGS LDFLAGS LDADD
    if [ -n "${OPTEE_CONF}" ]; then
        for conf in ${OPTEE_CONF}; do
            #oe_runmake -C ${S} O=${B}/${conf} CFG_EMBED_DTB_SOURCE_FILE=${conf}.dts
            # optee source tree doesn;t have dts file for stm32mp157c-osd32mp1-brk
            # instead using what's present.
            oe_runmake -C ${S} O=${B}/${conf} CFG_EMBED_DTB_SOURCE_FILE=stm32mp157c-dk2.dts
        done
    else
        oe_runmake -C ${S} O=${B}/out
    fi
}


