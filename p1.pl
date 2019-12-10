rico(elena).
rico(carol).
rico(henrico).
rico(adriano).
pobre(alfredo).
pobre(maria).
pobre(pietro).
problemaMental(adriano).
problemaMental(maria).
relaciona(chiara, pietro).
relaciona(pietro, carol).
relaciona(chiara, alfredo).
relaciona(alfredo, elena).
relaciona(elena,henrico).
relaciona(henrico, maria).
relaciona(maria, adriano).
relaciona(adriano, carol).
romantico(henrico, maria).
local(alfredo, segunda, contagem).
local(alfredo, terca, contagem).
local(alfredo, quarta, bh).
local(alfredo, quinta, contagem).
local(alfredo, sexta, pensao).
local(carol, segunda, bh).
local(carol, terca, bh).
local(carol, quarta, bh).
local(carol, quinta, contagem).
local(carol, sexta, pensao).
local(henrico, segunda, pensao).
local(henrico, terca, bh).
local(henrico, quarta, pensao).
local(henrico, quinta, pensao).
local(henrico, sexta, pensao).
local(adriano, segunda, casaa).
local(adriano, terca, casaa).
local(adriano, quarta, contagem).
local(adriano, quinta, casaa).
local(adriano, sexta, casaa).
local(elena, segunda, pensao).
local(elena, terca, bh). 
local(elena, quarta, bh).
local(elena, quinta, pensao).
local(elena, sexta, pensao).
local(pietro, segunda, contagem).
local(pietro, terca, contagem). 
local(pietro, quarta, bh).
local(pietro, quinta, contagem).
local(pietro, sexta, casap).
local(maria, segunda, pensao).
local(maria, terca, contagem).
local(maria, quarta, contagem).
local(maria, quinta, contagem).
local(maria, sexta, pensao).
chave(eliza).
chave(X) :- local(X, segunda, contagem) ; local(X, terca, bh).
pernamadeirac(pernamadeira).
pernamadeiraa(X) :- local(X, quinta,bh) ; local(X, quarta, contagem).
marteloc(martelo).
marteloo(X) :- local(X, quarta, pensao); local(X, quinta, pensao).
arma(X,Y) :- pernamadeiraa(X),pernamadeirac(Y) ; marteloo(X), marteloc(Y). 
ciumes(X,Y) :- relaciona(X,Z), relaciona(Z,Y) ; relaciona(Z,X), relaciona(Y,Z).
ciumesc(ciume).
pobrec(pobres).
problemaMentalc(problemamental).
motivacao(X,Y) :- ciumes(chiara, X),ciumesc(Y);pobre(X),pobrec(Y);problemaMental(X),problemaMentalc(Y).
assassino(X,Y,Z) :- motivacao(X,Z), arma(X,Y), chave(X).
