function cbN
fig = gcbf;
P = getappdata(fig,'P');
H = getappdata(fig,'H');

src = gcbo;
P.N = round(get(src,'Value'));

setappdata(fig,'P',P);
computeFourier(P, H.axTime, H.axSpec);
end
