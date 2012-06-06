%%
%% Setting uid, ulang and other uglyhacks
%%

-module(saloon_init).

-export([prepare/1]).

-define(DEV_MODE, true).

prepare(Req) ->
	case ?DEV_MODE of
		true -> os:cmd("sh ./f5.sh"); %dirty-dirty
		_ -> ok
	end,
	UID = case saloon_util:ck(<<"auth">>, Req) of 
		undefined -> 0;
		Cookie -> case saloon_auth:from_cookie(Cookie) of
			UID2 when is_integer(UID2) -> UID2;
			_ -> 0
		end
	end,
	
	Lang = case saloon_util:ck(<<"lang">>, Req) of
		<<"lv">> -> lv;
		<<"ru">> -> ru;
		%% ...
		_        -> en
	end,

	case get(user) of 
		undefined -> saloon_ctx:user(UID);
		_ -> ok
	end,
	case get(language) of
		undefined -> saloon_ctx:language(Lang);
		_ -> ok
	end,
	ok.
