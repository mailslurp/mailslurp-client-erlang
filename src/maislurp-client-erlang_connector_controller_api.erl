-module(maislurp-client-erlang_connector_controller_api).

-export([create_connector/2, create_connector/3,
         create_connector_imap_connection/3, create_connector_imap_connection/4,
         create_connector_smtp_connection/3, create_connector_smtp_connection/4,
         delete_all_connector/1, delete_all_connector/2,
         delete_connector/2, delete_connector/3,
         delete_connector_imap_connection/2, delete_connector_imap_connection/3,
         delete_connector_smtp_connection/2, delete_connector_smtp_connection/3,
         get_all_connector_sync_events/1, get_all_connector_sync_events/2,
         get_connector/2, get_connector/3,
         get_connector_sync_event/2, get_connector_sync_event/3,
         get_connector_sync_events/2, get_connector_sync_events/3,
         get_connectors/1, get_connectors/2,
         sync_connector/2, sync_connector/3,
         update_connector/3, update_connector/4]).

-define(BASE_URL, "").

%% @doc Create an inbox connector
%% Sync emails between external mailboxes and MailSlurp inboxes
-spec create_connector(ctx:ctx(), maislurp-client-erlang_create_connector_options:maislurp-client-erlang_create_connector_options()) -> {ok, maislurp-client-erlang_connector_dto:maislurp-client-erlang_connector_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_connector(Ctx, MaislurpClientErlangCreateConnectorOptions) ->
    create_connector(Ctx, MaislurpClientErlangCreateConnectorOptions, #{}).

-spec create_connector(ctx:ctx(), maislurp-client-erlang_create_connector_options:maislurp-client-erlang_create_connector_options(), maps:map()) -> {ok, maislurp-client-erlang_connector_dto:maislurp-client-erlang_connector_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_connector(Ctx, MaislurpClientErlangCreateConnectorOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/connectors"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateConnectorOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an inbox connector IMAP connection
%% Allows the reading of emails in an external mailbox and syncing to a MailSlurp inbox
-spec create_connector_imap_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_connector_imap_connection_options:maislurp-client-erlang_create_connector_imap_connection_options()) -> {ok, maislurp-client-erlang_connector_imap_connection_dto:maislurp-client-erlang_connector_imap_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_connector_imap_connection(Ctx, Id, MaislurpClientErlangCreateConnectorImapConnectionOptions) ->
    create_connector_imap_connection(Ctx, Id, MaislurpClientErlangCreateConnectorImapConnectionOptions, #{}).

-spec create_connector_imap_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_connector_imap_connection_options:maislurp-client-erlang_create_connector_imap_connection_options(), maps:map()) -> {ok, maislurp-client-erlang_connector_imap_connection_dto:maislurp-client-erlang_connector_imap_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_connector_imap_connection(Ctx, Id, MaislurpClientErlangCreateConnectorImapConnectionOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/connectors/", Id, "/imap"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateConnectorImapConnectionOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an inbox connector SMTP connection
%% Allows sending via connector and email is routed to connected inbox and sent via SMTP
-spec create_connector_smtp_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_connector_smtp_connection_options:maislurp-client-erlang_create_connector_smtp_connection_options()) -> {ok, maislurp-client-erlang_connector_smtp_connection_dto:maislurp-client-erlang_connector_smtp_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_connector_smtp_connection(Ctx, Id, MaislurpClientErlangCreateConnectorSmtpConnectionOptions) ->
    create_connector_smtp_connection(Ctx, Id, MaislurpClientErlangCreateConnectorSmtpConnectionOptions, #{}).

-spec create_connector_smtp_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_connector_smtp_connection_options:maislurp-client-erlang_create_connector_smtp_connection_options(), maps:map()) -> {ok, maislurp-client-erlang_connector_smtp_connection_dto:maislurp-client-erlang_connector_smtp_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_connector_smtp_connection(Ctx, Id, MaislurpClientErlangCreateConnectorSmtpConnectionOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/connectors/", Id, "/smtp"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateConnectorSmtpConnectionOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete all inbox connectors
%% 
-spec delete_all_connector(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_connector(Ctx) ->
    delete_all_connector(Ctx, #{}).

-spec delete_all_connector(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_connector(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/connectors"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete an inbox connector
%% 
-spec delete_connector(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_connector(Ctx, Id) ->
    delete_connector(Ctx, Id, #{}).

-spec delete_connector(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_connector(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/connectors/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete an inbox connector IMAP connection
%% Delete IMAP connection for external inbox
-spec delete_connector_imap_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_connector_imap_connection(Ctx, Id) ->
    delete_connector_imap_connection(Ctx, Id, #{}).

-spec delete_connector_imap_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_connector_imap_connection(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/connectors/", Id, "/imap"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete an inbox connector SMTP connection
%% Delete SMTP connection for external inbox
-spec delete_connector_smtp_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_connector_smtp_connection(Ctx, Id) ->
    delete_connector_smtp_connection(Ctx, Id, #{}).

-spec delete_connector_smtp_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_connector_smtp_connection(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/connectors/", Id, "/smtp"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all inbox connector sync events
%% 
-spec get_all_connector_sync_events(ctx:ctx()) -> {ok, maislurp-client-erlang_page_connector_sync_events:maislurp-client-erlang_page_connector_sync_events(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_connector_sync_events(Ctx) ->
    get_all_connector_sync_events(Ctx, #{}).

-spec get_all_connector_sync_events(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_connector_sync_events:maislurp-client-erlang_page_connector_sync_events(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_connector_sync_events(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/connectors/events"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an inbox connector
%% 
-spec get_connector(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_connector_dto:maislurp-client-erlang_connector_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector(Ctx, Id) ->
    get_connector(Ctx, Id, #{}).

-spec get_connector(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_connector_dto:maislurp-client-erlang_connector_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/connectors/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an inbox connector sync event
%% 
-spec get_connector_sync_event(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_connector_sync_event_dto:maislurp-client-erlang_connector_sync_event_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_sync_event(Ctx, Id) ->
    get_connector_sync_event(Ctx, Id, #{}).

-spec get_connector_sync_event(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_connector_sync_event_dto:maislurp-client-erlang_connector_sync_event_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_sync_event(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/connectors/events/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an inbox connector sync events
%% 
-spec get_connector_sync_events(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_connector_sync_events:maislurp-client-erlang_page_connector_sync_events(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_sync_events(Ctx, Id) ->
    get_connector_sync_events(Ctx, Id, #{}).

-spec get_connector_sync_events(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_connector_sync_events:maislurp-client-erlang_page_connector_sync_events(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_sync_events(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/connectors/", Id, "/events"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get inbox connectors
%% List inbox connectors that sync external emails to MailSlurp inboxes
-spec get_connectors(ctx:ctx()) -> {ok, maislurp-client-erlang_page_connector:maislurp-client-erlang_page_connector(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connectors(Ctx) ->
    get_connectors(Ctx, #{}).

-spec get_connectors(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_connector:maislurp-client-erlang_page_connector(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connectors(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/connectors"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Sync an inbox connector
%% 
-spec sync_connector(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_connector_sync_request_result:maislurp-client-erlang_connector_sync_request_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
sync_connector(Ctx, Id) ->
    sync_connector(Ctx, Id, #{}).

-spec sync_connector(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_connector_sync_request_result:maislurp-client-erlang_connector_sync_request_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
sync_connector(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/connectors/", Id, "/sync"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update an inbox connector
%% 
-spec update_connector(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_connector_options:maislurp-client-erlang_create_connector_options()) -> {ok, maislurp-client-erlang_connector_dto:maislurp-client-erlang_connector_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_connector(Ctx, Id, MaislurpClientErlangCreateConnectorOptions) ->
    update_connector(Ctx, Id, MaislurpClientErlangCreateConnectorOptions, #{}).

-spec update_connector(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_connector_options:maislurp-client-erlang_create_connector_options(), maps:map()) -> {ok, maislurp-client-erlang_connector_dto:maislurp-client-erlang_connector_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_connector(Ctx, Id, MaislurpClientErlangCreateConnectorOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/connectors/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateConnectorOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


