-module(maislurp-client-erlang_domain_monitor_postmaster_controller_api).

-export([create_domain_monitor_postmaster_connection/2, create_domain_monitor_postmaster_connection/3,
         delete_domain_monitor_postmaster_connection/1, delete_domain_monitor_postmaster_connection/2,
         exchange_domain_monitor_postmaster_code/2, exchange_domain_monitor_postmaster_code/3,
         get_domain_monitor_postmaster_connection/1, get_domain_monitor_postmaster_connection/2,
         get_domain_monitor_postmaster_domains/1, get_domain_monitor_postmaster_domains/2,
         get_domain_monitor_postmaster_traffic_stats/2, get_domain_monitor_postmaster_traffic_stats/3,
         sync_domain_monitor_postmaster_domains/1, sync_domain_monitor_postmaster_domains/2,
         sync_domain_monitor_postmaster_traffic_stats/2, sync_domain_monitor_postmaster_traffic_stats/3]).

-define(BASE_URL, "").

%% @doc Create Postmaster OAuth connection URL
%% 
-spec create_domain_monitor_postmaster_connection(ctx:ctx(), maislurp-client-erlang_create_postmaster_connection_options:maislurp-client-erlang_create_postmaster_connection_options()) -> {ok, maislurp-client-erlang_create_postmaster_connection_result:maislurp-client-erlang_create_postmaster_connection_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_domain_monitor_postmaster_connection(Ctx, MaislurpClientErlangCreatePostmasterConnectionOptions) ->
    create_domain_monitor_postmaster_connection(Ctx, MaislurpClientErlangCreatePostmasterConnectionOptions, #{}).

-spec create_domain_monitor_postmaster_connection(ctx:ctx(), maislurp-client-erlang_create_postmaster_connection_options:maislurp-client-erlang_create_postmaster_connection_options(), maps:map()) -> {ok, maislurp-client-erlang_create_postmaster_connection_result:maislurp-client-erlang_create_postmaster_connection_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_domain_monitor_postmaster_connection(Ctx, MaislurpClientErlangCreatePostmasterConnectionOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/domain-monitor/postmaster/connect"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreatePostmasterConnectionOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Disconnect Postmaster OAuth
%% 
-spec delete_domain_monitor_postmaster_connection(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_domain_monitor_postmaster_connection(Ctx) ->
    delete_domain_monitor_postmaster_connection(Ctx, #{}).

-spec delete_domain_monitor_postmaster_connection(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_domain_monitor_postmaster_connection(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/domain-monitor/postmaster/connection"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Exchange Postmaster OAuth authorization code
%% 
-spec exchange_domain_monitor_postmaster_code(ctx:ctx(), maislurp-client-erlang_exchange_postmaster_code_options:maislurp-client-erlang_exchange_postmaster_code_options()) -> {ok, maislurp-client-erlang_postmaster_connection_dto:maislurp-client-erlang_postmaster_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
exchange_domain_monitor_postmaster_code(Ctx, MaislurpClientErlangExchangePostmasterCodeOptions) ->
    exchange_domain_monitor_postmaster_code(Ctx, MaislurpClientErlangExchangePostmasterCodeOptions, #{}).

-spec exchange_domain_monitor_postmaster_code(ctx:ctx(), maislurp-client-erlang_exchange_postmaster_code_options:maislurp-client-erlang_exchange_postmaster_code_options(), maps:map()) -> {ok, maislurp-client-erlang_postmaster_connection_dto:maislurp-client-erlang_postmaster_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
exchange_domain_monitor_postmaster_code(Ctx, MaislurpClientErlangExchangePostmasterCodeOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/domain-monitor/postmaster/oauth-exchange"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangExchangePostmasterCodeOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Postmaster connection status
%% 
-spec get_domain_monitor_postmaster_connection(ctx:ctx()) -> {ok, maislurp-client-erlang_postmaster_connection_status_dto:maislurp-client-erlang_postmaster_connection_status_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_postmaster_connection(Ctx) ->
    get_domain_monitor_postmaster_connection(Ctx, #{}).

-spec get_domain_monitor_postmaster_connection(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_postmaster_connection_status_dto:maislurp-client-erlang_postmaster_connection_status_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_postmaster_connection(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/domain-monitor/postmaster/connection"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List local Postmaster domain snapshots
%% 
-spec get_domain_monitor_postmaster_domains(ctx:ctx()) -> {ok, [maislurp-client-erlang_postmaster_domain_dto:maislurp-client-erlang_postmaster_domain_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_postmaster_domains(Ctx) ->
    get_domain_monitor_postmaster_domains(Ctx, #{}).

-spec get_domain_monitor_postmaster_domains(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_postmaster_domain_dto:maislurp-client-erlang_postmaster_domain_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_postmaster_domains(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/domain-monitor/postmaster/domains"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get local Postmaster traffic stats
%% 
-spec get_domain_monitor_postmaster_traffic_stats(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_postmaster_traffic_stats_list_dto:maislurp-client-erlang_postmaster_traffic_stats_list_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_postmaster_traffic_stats(Ctx, Domain) ->
    get_domain_monitor_postmaster_traffic_stats(Ctx, Domain, #{}).

-spec get_domain_monitor_postmaster_traffic_stats(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_postmaster_traffic_stats_list_dto:maislurp-client-erlang_postmaster_traffic_stats_list_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_postmaster_traffic_stats(Ctx, Domain, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/domain-monitor/postmaster/domains/", Domain, "/traffic-stats"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Sync Postmaster domains
%% 
-spec sync_domain_monitor_postmaster_domains(ctx:ctx()) -> {ok, [maislurp-client-erlang_postmaster_domain_dto:maislurp-client-erlang_postmaster_domain_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
sync_domain_monitor_postmaster_domains(Ctx) ->
    sync_domain_monitor_postmaster_domains(Ctx, #{}).

-spec sync_domain_monitor_postmaster_domains(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_postmaster_domain_dto:maislurp-client-erlang_postmaster_domain_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
sync_domain_monitor_postmaster_domains(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/domain-monitor/postmaster/domains/sync"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Sync Postmaster traffic stats
%% 
-spec sync_domain_monitor_postmaster_traffic_stats(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_postmaster_traffic_stats_list_dto:maislurp-client-erlang_postmaster_traffic_stats_list_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
sync_domain_monitor_postmaster_traffic_stats(Ctx, Domain) ->
    sync_domain_monitor_postmaster_traffic_stats(Ctx, Domain, #{}).

-spec sync_domain_monitor_postmaster_traffic_stats(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_postmaster_traffic_stats_list_dto:maislurp-client-erlang_postmaster_traffic_stats_list_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
sync_domain_monitor_postmaster_traffic_stats(Ctx, Domain, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/domain-monitor/postmaster/domains/", Domain, "/traffic-stats/sync"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


