-module(saloon_ctx).

%% connection level context functions
-export([
		user/0, user/1, 
		language/0, language/1,
		errors/0, errors/1, errors_push/1,
		successes/0, successes/1, successes_push/1,
		c_get/1, c_set/2
	]).

%% session level context functions, not implemented
%% -export([
%%		s_get/1, s_set/2
%%	]).


user() -> c_get(uid).
user(UID) -> c_set(uid, UID).

language() -> c_get(ulang).
language(Lang) -> c_set(ulang, Lang).

errors() -> c_get(errors).
errors(ErrorPropList) -> c_set(errors, ErrorPropList).
errors_push(Error) -> c_set(errors, [Error|c_get(errors)]).

successes() -> c_get(successes).
successes(SuccessesPropList) -> c_set(successes, SuccessesPropList).
successes_push(Success) -> c_set(successes, [Success|c_get(successes)]).

c_get(Key) -> get(Key).
c_set(Key, Value) -> 
	case get(Key) of
		undefined -> put(Key, Value);
		_ -> error(ctx_change_forbidden)
	end.
