-module(saloon_app).

-include("../site/conf/dispatch.hrl").

-behaviour(application).

%% Application callbacks
-export([start/0, start/2, stop/1]).

%%
%% Application callbacks
%%

start() ->
	application:start(crypto),
	application:start(public_key),
	application:start(ssl),
	application:start(fission),
	application:start(cowboy).

start(_T, _A) ->
	cowboy:start_listener(saloon_listener, 200,
		cowboy_tcp_transport, [{port, 53317}],
		cowboy_http_protocol, [{dispatch, dispatch()}]
	).

stop(_S) ->
	ok.
