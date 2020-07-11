function! pyank#exec()
    let popup = popup_list()
    if len(popup)  != 0
        let p = popup[0]
        let winID = winbufnr(p)
        let ps = getbufline(winID,1,"$")
        if len(ps)  != 0
            call setreg("*",ps,"b")
        endif
    endif
endfunction
