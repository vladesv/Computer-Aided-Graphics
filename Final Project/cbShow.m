function cbShow
fig = gcbf;
P = getappdata(fig,'P');
H = getappdata(fig,'H');

src = gcbo;
P.showOriginal = get(src,'Value');

setappdata(fig,'P',P);
computeFourier(P, H.axTime, H.axSpec);
end
