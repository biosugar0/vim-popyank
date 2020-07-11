function! pyank#exec()
    let popup = popup_list()
    if len(popup)  != 0
        let p = popup[0]
        let winID = winbufnr(p)
        let pBuffer = getbufline(winID,1,"$")
        if len(ps)  != 0
            call setreg("@",pBuffer,"b")
        endif
    endif
endfunction
