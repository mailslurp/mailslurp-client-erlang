-module(maislurp-client-erlang_sse_controller_api).

-export([stream_events/2, stream_events/3]).

-define(BASE_URL, "").

%% @doc 
%% 
-spec stream_events(ctx:ctx(), binary()) -> {ok, [binary()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
stream_events(Ctx, XApiKey) ->
    stream_events(Ctx, XApiKey, #{}).

-spec stream_events(ctx:ctx(), binary(), maps:map()) -> {ok, [binary()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
stream_events(Ctx, XApiKey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sse"],
    QS = [],
    Headers = [  {<<"x-api-key">>, XApiKey}]++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


