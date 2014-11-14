load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/gsn_code.ncl"
load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/gsn_csm.ncl"

begin
    t=asciiread("img.txt",(/180,360/),"float")
    ;print(t)
    t=t(::-1,:)
    wks=gsn_open_wks("x11","ce")
    gsn_define_colormap(wks,"rainbow")
    res=True
    res@cnFillOn=True
    res@cnLinesOn=False
    res@cnLevelSpacingF=0.001
    res@gsnSpreadColors=True
    res@lbAutoLabelStride=True
    plot=gsn_csm_contour_map(wks,t,res)
end
