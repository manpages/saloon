%%
%% Setting uid, ulang and other uglyhacks
%%

-module(saloon_init).

-export([prepare/1]).

-define(DEV_MODE, true).

prepare(_Req) ->
	case ?DEV_MODE of
		true -> Out = os:cmd("sh ./f5.sh"), io:format("~ts~n", [Out]);
		_ -> ok
	end,
	ok.
