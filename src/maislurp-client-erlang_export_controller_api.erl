-module(maislurp-client-erlang_export_controller_api).

-export([export_entities/4, export_entities/5,
         get_export_link/3, get_export_link/4]).

-define(BASE_URL, "").

%% @doc Export inboxes link callable via browser
%% 
-spec export_entities(ctx:ctx(), binary(), binary(), binary()) -> {ok, [maislurp-client-erlang_byte_array:maislurp-client-erlang_byte_array()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
export_entities(Ctx, ExportType, ApiKey, OutputFormat) ->
    export_entities(Ctx, ExportType, ApiKey, OutputFormat, #{}).

-spec export_entities(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, [maislurp-client-erlang_byte_array:maislurp-client-erlang_byte_array()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
export_entities(Ctx, ExportType, ApiKey, OutputFormat, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/export"],
    QS = lists:flatten([{<<"exportType">>, ExportType}, {<<"apiKey">>, ApiKey}, {<<"outputFormat">>, OutputFormat}])++maislurp-client-erlang_utils:optional_params(['filter', 'listSeparatorToken', 'excludePreviouslyExported', 'createdEarliestTime', 'createdOldestTime'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get export link
%% 
-spec get_export_link(ctx:ctx(), binary(), maislurp-client-erlang_export_options:maislurp-client-erlang_export_options()) -> {ok, maislurp-client-erlang_export_link:maislurp-client-erlang_export_link(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_export_link(Ctx, ExportType, MaislurpClientErlangExportOptions) ->
    get_export_link(Ctx, ExportType, MaislurpClientErlangExportOptions, #{}).

-spec get_export_link(ctx:ctx(), binary(), maislurp-client-erlang_export_options:maislurp-client-erlang_export_options(), maps:map()) -> {ok, maislurp-client-erlang_export_link:maislurp-client-erlang_export_link(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_export_link(Ctx, ExportType, MaislurpClientErlangExportOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/export"],
    QS = lists:flatten([{<<"exportType">>, ExportType}])++maislurp-client-erlang_utils:optional_params(['apiKey'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangExportOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


