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
						{mimetypes, {fun mimetypes:path_to_mimes/2, default}},
						{etag, {attributes, [filepath, filesize, inode, mtime]}}
					]
				},
				{'_', saloon_main, []}
			]}
	]
