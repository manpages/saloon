dispatch() ->
	[
		{'_', [
				%%
				%% Site controllers
				%%

				% here.

				%%
				%% Default handlers
				%%

				{[<<"static">>, '...'], cowboy_http_static, 
					[
						{directory, <<"./static">>},
						{mimetypes, [
								{<<".txt">>, [<<"text/plain">>]},
								{<<".html">>, [<<"text/html">>]},
								{<<".htm">>, [<<"text/html">>]},
								{<<".css">>, [<<"text/css">>]},
								{<<".js">>, [<<"application/javascript">>]}
						]}
					]
				},
				{'_', saloon_main, []}
			]}
	].
