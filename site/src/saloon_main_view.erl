-module(saloon_main_view).

-compile(export_all). %% Not kosher, but imagine that we have 100 0-ary functions defined here

-include("conf/locale.hrl").
-include("conf/components.hrl").


%%
%% From index.mustache. Decorator pattern test :)
%%

title() -> "Saloon for cowboys.".
content() -> mustache:render(?MODULE, "view/main/saloon_main.mustache").
header() -> "".
footer() -> "<hr /><div style=\"text-align:center\">IL Design Ltd., MIT License, 2012</div>".


%%
%% From saloon_main.mustache
%%

junk() -> "a page about the main idea of Burroughs".


%--------------------------------------------------------------------------------------------


%%
%% Compile-related thingie apparently.
%% See mustache.erl docs for details, I'm not in the mood atm ;)
%%

start() -> ok.
