%%
%% Setting uid, ulang and other uglyhacks
%%

-module(saloon_init).

-export(prepare/1).

-define(DEV_MODE, true).

prepare(_Req) ->
	-ifdef(DEV_MODE).
	os:cmd("sh ./f5.sh"),
	-endif.
	ok.
