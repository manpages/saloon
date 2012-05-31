%% components.hrl

%%
%% Global components that are pluggable into
%% other mustache templates. Prefixed with «t_».
%% TODO: Autogenerate this file as well.
%%

t_header() -> 
	mustache:render(?MODULE, "view/t_header.mustache").

t_footer() -> 
	mustache:render(?MODULE, "view/t_footer.mustache").
