function! popyank#pop()
    let popup = popup_list()
    if len(popup)  == 0
        return ""
    endif
    let p = popup[0]
    let winID = winbufnr(p)
    let pBuffer = getbufline(winID,1,"$")
    call popup_clear()
    if len(pBuffer)  != 0
        return join(pBuffer,"\n")
    endif
endfunction

function! popyank#exec()
    let popup = popup_list()
    if len(popup)  != 0
        let p = popup[0]
        let winID = winbufnr(p)
        let pBuffer = getbufline(winID,1,"$")
        if len(pBuffer)  != 0
            call setreg(v:register,pBuffer,"b")
        endif
    endif
endfunction
