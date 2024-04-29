-module(maislurp-client-erlang_imap_controller_api).

-export([imap_server_fetch/2, imap_server_fetch/3,
         imap_server_list/2, imap_server_list/3,
         imap_server_search/2, imap_server_search/3,
         imap_server_status/2, imap_server_status/3,
         imap_server_update_flags/2, imap_server_update_flags/3]).

-define(BASE_URL, "").

%% @doc Fetch message in an inbox
%% 
-spec imap_server_fetch(ctx:ctx(), integer()) -> {ok, maislurp-client-erlang_imap_server_fetch_result:maislurp-client-erlang_imap_server_fetch_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
imap_server_fetch(Ctx, SeqNum) ->
    imap_server_fetch(Ctx, SeqNum, #{}).

-spec imap_server_fetch(ctx:ctx(), integer(), maps:map()) -> {ok, maislurp-client-erlang_imap_server_fetch_result:maislurp-client-erlang_imap_server_fetch_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
imap_server_fetch(Ctx, SeqNum, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/imap/server/fetch"],
    QS = lists:flatten([{<<"seqNum">>, SeqNum}])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List messages in an inbox
%% 
-spec imap_server_list(ctx:ctx(), maislurp-client-erlang_imap_server_list_options:maislurp-client-erlang_imap_server_list_options()) -> {ok, maislurp-client-erlang_imap_server_list_result:maislurp-client-erlang_imap_server_list_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
imap_server_list(Ctx, MaislurpClientErlangImapServerListOptions) ->
    imap_server_list(Ctx, MaislurpClientErlangImapServerListOptions, #{}).

-spec imap_server_list(ctx:ctx(), maislurp-client-erlang_imap_server_list_options:maislurp-client-erlang_imap_server_list_options(), maps:map()) -> {ok, maislurp-client-erlang_imap_server_list_result:maislurp-client-erlang_imap_server_list_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
imap_server_list(Ctx, MaislurpClientErlangImapServerListOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/imap/server/list"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangImapServerListOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search messages in an inbox
%% 
-spec imap_server_search(ctx:ctx(), maislurp-client-erlang_imap_server_search_options:maislurp-client-erlang_imap_server_search_options()) -> {ok, maislurp-client-erlang_imap_server_search_result:maislurp-client-erlang_imap_server_search_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
imap_server_search(Ctx, MaislurpClientErlangImapServerSearchOptions) ->
    imap_server_search(Ctx, MaislurpClientErlangImapServerSearchOptions, #{}).

-spec imap_server_search(ctx:ctx(), maislurp-client-erlang_imap_server_search_options:maislurp-client-erlang_imap_server_search_options(), maps:map()) -> {ok, maislurp-client-erlang_imap_server_search_result:maislurp-client-erlang_imap_server_search_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
imap_server_search(Ctx, MaislurpClientErlangImapServerSearchOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/imap/server/search"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangImapServerSearchOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get status for mailbox
%% 
-spec imap_server_status(ctx:ctx(), maislurp-client-erlang_imap_server_status_options:maislurp-client-erlang_imap_server_status_options()) -> {ok, maislurp-client-erlang_imap_server_status_result:maislurp-client-erlang_imap_server_status_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
imap_server_status(Ctx, MaislurpClientErlangImapServerStatusOptions) ->
    imap_server_status(Ctx, MaislurpClientErlangImapServerStatusOptions, #{}).

-spec imap_server_status(ctx:ctx(), maislurp-client-erlang_imap_server_status_options:maislurp-client-erlang_imap_server_status_options(), maps:map()) -> {ok, maislurp-client-erlang_imap_server_status_result:maislurp-client-erlang_imap_server_status_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
imap_server_status(Ctx, MaislurpClientErlangImapServerStatusOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/imap/server/status"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangImapServerStatusOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Update message flags
-spec imap_server_update_flags(ctx:ctx(), maislurp-client-erlang_imap_update_flags_options:maislurp-client-erlang_imap_update_flags_options()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
imap_server_update_flags(Ctx, MaislurpClientErlangImapUpdateFlagsOptions) ->
    imap_server_update_flags(Ctx, MaislurpClientErlangImapUpdateFlagsOptions, #{}).

-spec imap_server_update_flags(ctx:ctx(), maislurp-client-erlang_imap_update_flags_options:maislurp-client-erlang_imap_update_flags_options(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
imap_server_update_flags(Ctx, MaislurpClientErlangImapUpdateFlagsOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/imap/server/update-flags"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangImapUpdateFlagsOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


