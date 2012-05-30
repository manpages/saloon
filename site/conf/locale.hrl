%% locale.hrl

%%
%% Translation tool.
%% Soon will be auto-generated, now needs to be filled by hand.
%% All functions are to be prefixed with «l_» and have arity 0. 
%% Those serve for localizing captions at a website in the way, 
%% compatiable with mustache for erlang.
%% 
%% ==
%% Example
%% ==
%%
%% l_russky() ->
%% 	case get(ulang) of
%% 		ru -> "русские буквы!";
%% 		hw -> "<span class="rtol">אותיות רוסית!</span>";
%% 		lv -> "krievy burti!";
%% 		_ -> "russian letters"
%% 	end.
%%
