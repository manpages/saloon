-module(saloon_main).

-behaviour(cowboy_http_handler).

-export([init/3, handle/2, terminate/2]).

init({_Any, http}, Req, []) ->
	{ok, Req, undefined}.

handle(Req, State) ->
	{ok, Rep} = cowboy_http_req:reply(
		200, [], mustache:render(saloon_main_view, "view/saloon_main.mustache"), Req
	),
	{ok, Rep, State}.

terminate(_R, _S) ->
	ok.
