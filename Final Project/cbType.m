function cbType
fig = gcbf;
P = getappdata(fig,'P');
H = getappdata(fig,'H');

src = gcbo;
s = get(src,'String');
v = get(src,'Value');
P.type = string(s{v});

setappdata(fig,'P',P);
computeFourier(P, H.axTime, H.axSpec);
end
