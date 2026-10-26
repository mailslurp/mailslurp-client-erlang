-module(maislurp-client-erlang_connector_controller_api).

-export([create_connector/2, create_connector/3,
         create_connector_imap_connection/3, create_connector_imap_connection/4,
         create_connector_smtp_connection/3, create_connector_smtp_connection/4,
         create_connector_sync_settings/3, create_connector_sync_settings/4,
         create_connector_with_options/2, create_connector_with_options/3,
         delete_all_connector/1, delete_all_connector/2,
         delete_connector/2, delete_connector/3,
         delete_connector_imap_connection/2, delete_connector_imap_connection/3,
         delete_connector_smtp_connection/2, delete_connector_smtp_connection/3,
         delete_connector_sync_settings/2, delete_connector_sync_settings/3,
         get_all_connector_events/1, get_all_connector_events/2,
         get_connector/2, get_connector/3,
         get_connector_by_email_address/2, get_connector_by_email_address/3,
         get_connector_by_inbox_id/2, get_connector_by_inbox_id/3,
         get_connector_by_name/2, get_connector_by_name/3,
         get_connector_event/2, get_connector_event/3,
         get_connector_events/2, get_connector_events/3,
         get_connector_imap_connection/2, get_connector_imap_connection/3,
         get_connector_provider_settings/1, get_connector_provider_settings/2,
         get_connector_smtp_connection/2, get_connector_smtp_connection/3,
         get_connector_sync_settings/2, get_connector_sync_settings/3,
         get_connectors/1, get_connectors/2,
         send_email_from_connector/3, send_email_from_connector/4,
         sync_connector/2, sync_connector/3,
         test_connector_imap_connection/3, test_connector_imap_connection/4,
         test_connector_imap_connection_options/2, test_connector_imap_connection_options/3,
         test_connector_smtp_connection/3, test_connector_smtp_connection/4,
         test_connector_smtp_connection_options/2, test_connector_smtp_connection_options/3,
         update_connector/3, update_connector/4,
         update_connector_imap_connection/3, update_connector_imap_connection/4,
         update_connector_smtp_connection/3, update_connector_smtp_connection/4]).

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
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
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

%% @doc Create an inbox connector sync settings
%% Configure automatic pull or emails from external inboxes using an interval or schedule
-spec create_connector_sync_settings(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_connector_sync_settings_options:maislurp-client-erlang_create_connector_sync_settings_options()) -> {ok, maislurp-client-erlang_connector_sync_settings_dto:maislurp-client-erlang_connector_sync_settings_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_connector_sync_settings(Ctx, Id, MaislurpClientErlangCreateConnectorSyncSettingsOptions) ->
    create_connector_sync_settings(Ctx, Id, MaislurpClientErlangCreateConnectorSyncSettingsOptions, #{}).

-spec create_connector_sync_settings(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_connector_sync_settings_options:maislurp-client-erlang_create_connector_sync_settings_options(), maps:map()) -> {ok, maislurp-client-erlang_connector_sync_settings_dto:maislurp-client-erlang_connector_sync_settings_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_connector_sync_settings(Ctx, Id, MaislurpClientErlangCreateConnectorSyncSettingsOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/connectors/", Id, "/sync-settings"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateConnectorSyncSettingsOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an inbox connector with options
%% Sync emails between external mailboxes and MailSlurp inboxes
-spec create_connector_with_options(ctx:ctx(), maislurp-client-erlang_create_connector_with_options:maislurp-client-erlang_create_connector_with_options()) -> {ok, maislurp-client-erlang_connector_dto:maislurp-client-erlang_connector_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_connector_with_options(Ctx, MaislurpClientErlangCreateConnectorWithOptions) ->
    create_connector_with_options(Ctx, MaislurpClientErlangCreateConnectorWithOptions, #{}).

-spec create_connector_with_options(ctx:ctx(), maislurp-client-erlang_create_connector_with_options:maislurp-client-erlang_create_connector_with_options(), maps:map()) -> {ok, maislurp-client-erlang_connector_dto:maislurp-client-erlang_connector_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_connector_with_options(Ctx, MaislurpClientErlangCreateConnectorWithOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/connectors/withOptions"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangCreateConnectorWithOptions,
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

%% @doc Create an inbox connector sync settings
%% Configure automatic pull or emails from external inboxes using an interval or schedule
-spec delete_connector_sync_settings(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_connector_sync_settings(Ctx, Id) ->
    delete_connector_sync_settings(Ctx, Id, #{}).

-spec delete_connector_sync_settings(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_connector_sync_settings(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/connectors/", Id, "/sync-settings"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all inbox connector events
%% 
-spec get_all_connector_events(ctx:ctx()) -> {ok, maislurp-client-erlang_page_connector_events:maislurp-client-erlang_page_connector_events(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_connector_events(Ctx) ->
    get_all_connector_events(Ctx, #{}).

-spec get_all_connector_events(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_connector_events:maislurp-client-erlang_page_connector_events(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_connector_events(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/connectors/events"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['id', 'page', 'size', 'sort', 'since', 'before', 'eventType'], _OptionalParams),
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

%% @doc Get connector by email address
%% Find an inbox connector by email address
-spec get_connector_by_email_address(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_optional_connector_dto:maislurp-client-erlang_optional_connector_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_by_email_address(Ctx, EmailAddress) ->
    get_connector_by_email_address(Ctx, EmailAddress, #{}).

-spec get_connector_by_email_address(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_optional_connector_dto:maislurp-client-erlang_optional_connector_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_by_email_address(Ctx, EmailAddress, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/connectors/by-email-address"],
    QS = lists:flatten([{<<"emailAddress">>, EmailAddress}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get connector by inbox ID
%% Find an inbox connector by inbox ID
-spec get_connector_by_inbox_id(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_optional_connector_dto:maislurp-client-erlang_optional_connector_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_by_inbox_id(Ctx, InboxId) ->
    get_connector_by_inbox_id(Ctx, InboxId, #{}).

-spec get_connector_by_inbox_id(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_optional_connector_dto:maislurp-client-erlang_optional_connector_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_by_inbox_id(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/connectors/by-inbox-id"],
    QS = lists:flatten([{<<"inboxId">>, InboxId}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get connector by name
%% Find an inbox connector by name
-spec get_connector_by_name(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_optional_connector_dto:maislurp-client-erlang_optional_connector_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_by_name(Ctx, Name) ->
    get_connector_by_name(Ctx, Name, #{}).

-spec get_connector_by_name(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_optional_connector_dto:maislurp-client-erlang_optional_connector_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_by_name(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/connectors/by-name"],
    QS = lists:flatten([{<<"name">>, Name}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an inbox connector event
%% 
-spec get_connector_event(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_connector_event_dto:maislurp-client-erlang_connector_event_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_event(Ctx, Id) ->
    get_connector_event(Ctx, Id, #{}).

-spec get_connector_event(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_connector_event_dto:maislurp-client-erlang_connector_event_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_event(Ctx, Id, Optional) ->
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

%% @doc Get an inbox connector events
%% 
-spec get_connector_events(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_connector_events:maislurp-client-erlang_page_connector_events(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_events(Ctx, Id) ->
    get_connector_events(Ctx, Id, #{}).

-spec get_connector_events(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_connector_events:maislurp-client-erlang_page_connector_events(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_events(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/connectors/", Id, "/events"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before', 'eventType'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an inbox connector IMAP connection
%% Get IMAP connection for external inbox
-spec get_connector_imap_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_optional_connector_imap_connection_dto:maislurp-client-erlang_optional_connector_imap_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_imap_connection(Ctx, Id) ->
    get_connector_imap_connection(Ctx, Id, #{}).

-spec get_connector_imap_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_optional_connector_imap_connection_dto:maislurp-client-erlang_optional_connector_imap_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_imap_connection(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/connectors/", Id, "/imap"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get SMTP and IMAP connection settings for common mail providers
%% Get common mail provider SMTP and IMAP connection settings
-spec get_connector_provider_settings(ctx:ctx()) -> {ok, maislurp-client-erlang_connector_provider_settings_dto:maislurp-client-erlang_connector_provider_settings_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_provider_settings(Ctx) ->
    get_connector_provider_settings(Ctx, #{}).

-spec get_connector_provider_settings(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_connector_provider_settings_dto:maislurp-client-erlang_connector_provider_settings_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_provider_settings(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/connectors/provider-settings"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an inbox connector SMTP connection
%% Get SMTP connection for external inbox
-spec get_connector_smtp_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_optional_connector_smtp_connection_dto:maislurp-client-erlang_optional_connector_smtp_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_smtp_connection(Ctx, Id) ->
    get_connector_smtp_connection(Ctx, Id, #{}).

-spec get_connector_smtp_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_optional_connector_smtp_connection_dto:maislurp-client-erlang_optional_connector_smtp_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_smtp_connection(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/connectors/", Id, "/smtp"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an inbox connector sync settings
%% Get sync settings for connection with external inbox
-spec get_connector_sync_settings(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_optional_connector_sync_settings_dto:maislurp-client-erlang_optional_connector_sync_settings_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_sync_settings(Ctx, Id) ->
    get_connector_sync_settings(Ctx, Id, #{}).

-spec get_connector_sync_settings(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_optional_connector_sync_settings_dto:maislurp-client-erlang_optional_connector_sync_settings_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_connector_sync_settings(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/connectors/", Id, "/sync-settings"],
    QS = [],
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

%% @doc Send from an inbox connector
%% 
-spec send_email_from_connector(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email_from_connector(Ctx, Id, MaislurpClientErlangSendEmailOptions) ->
    send_email_from_connector(Ctx, Id, MaislurpClientErlangSendEmailOptions, #{}).

-spec send_email_from_connector(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options(), maps:map()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email_from_connector(Ctx, Id, MaislurpClientErlangSendEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/connectors/", Id, "/send"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['useFallback'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangSendEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
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
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['since', 'folder', 'logging'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Test an inbox connector IMAP connection
%% Test the IMAP connection for a connector
-spec test_connector_imap_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_connector_imap_connection_test_result:maislurp-client-erlang_connector_imap_connection_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_connector_imap_connection(Ctx, Id) ->
    test_connector_imap_connection(Ctx, Id, #{}).

-spec test_connector_imap_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_connector_imap_connection_test_result:maislurp-client-erlang_connector_imap_connection_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_connector_imap_connection(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/connectors/", Id, "/imap/test"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateConnectorImapConnectionOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Test an inbox connector IMAP connection options
%% Test the IMAP connection options for a connector
-spec test_connector_imap_connection_options(ctx:ctx(), maislurp-client-erlang_create_connector_imap_connection_options:maislurp-client-erlang_create_connector_imap_connection_options()) -> {ok, maislurp-client-erlang_connector_imap_connection_test_result:maislurp-client-erlang_connector_imap_connection_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_connector_imap_connection_options(Ctx, MaislurpClientErlangCreateConnectorImapConnectionOptions) ->
    test_connector_imap_connection_options(Ctx, MaislurpClientErlangCreateConnectorImapConnectionOptions, #{}).

-spec test_connector_imap_connection_options(ctx:ctx(), maislurp-client-erlang_create_connector_imap_connection_options:maislurp-client-erlang_create_connector_imap_connection_options(), maps:map()) -> {ok, maislurp-client-erlang_connector_imap_connection_test_result:maislurp-client-erlang_connector_imap_connection_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_connector_imap_connection_options(Ctx, MaislurpClientErlangCreateConnectorImapConnectionOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/connectors/connections/imap/test"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateConnectorImapConnectionOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Test an inbox connector SMTP connection
%% Test the SMTP connection for a connector
-spec test_connector_smtp_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_connector_smtp_connection_test_result:maislurp-client-erlang_connector_smtp_connection_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_connector_smtp_connection(Ctx, Id) ->
    test_connector_smtp_connection(Ctx, Id, #{}).

-spec test_connector_smtp_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_connector_smtp_connection_test_result:maislurp-client-erlang_connector_smtp_connection_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_connector_smtp_connection(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/connectors/", Id, "/smtp/test"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateConnectorSmtpConnectionOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Test an inbox connector SMTP connection options
%% Test the SMTP connection options for a connector
-spec test_connector_smtp_connection_options(ctx:ctx(), maislurp-client-erlang_create_connector_smtp_connection_options:maislurp-client-erlang_create_connector_smtp_connection_options()) -> {ok, maislurp-client-erlang_connector_smtp_connection_test_result:maislurp-client-erlang_connector_smtp_connection_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_connector_smtp_connection_options(Ctx, MaislurpClientErlangCreateConnectorSmtpConnectionOptions) ->
    test_connector_smtp_connection_options(Ctx, MaislurpClientErlangCreateConnectorSmtpConnectionOptions, #{}).

-spec test_connector_smtp_connection_options(ctx:ctx(), maislurp-client-erlang_create_connector_smtp_connection_options:maislurp-client-erlang_create_connector_smtp_connection_options(), maps:map()) -> {ok, maislurp-client-erlang_connector_smtp_connection_test_result:maislurp-client-erlang_connector_smtp_connection_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_connector_smtp_connection_options(Ctx, MaislurpClientErlangCreateConnectorSmtpConnectionOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/connectors/connections/smtp/test"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateConnectorSmtpConnectionOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
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

%% @doc Update an inbox connector IMAP connection
%% Update IMAP connection for external inbox
-spec update_connector_imap_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_connector_imap_connection_options:maislurp-client-erlang_create_connector_imap_connection_options()) -> {ok, maislurp-client-erlang_connector_imap_connection_dto:maislurp-client-erlang_connector_imap_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_connector_imap_connection(Ctx, Id, MaislurpClientErlangCreateConnectorImapConnectionOptions) ->
    update_connector_imap_connection(Ctx, Id, MaislurpClientErlangCreateConnectorImapConnectionOptions, #{}).

-spec update_connector_imap_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_connector_imap_connection_options:maislurp-client-erlang_create_connector_imap_connection_options(), maps:map()) -> {ok, maislurp-client-erlang_connector_imap_connection_dto:maislurp-client-erlang_connector_imap_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_connector_imap_connection(Ctx, Id, MaislurpClientErlangCreateConnectorImapConnectionOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/connectors/", Id, "/imap"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateConnectorImapConnectionOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update an inbox connector SMTP connection
%% Update SMTP connection for external inbox
-spec update_connector_smtp_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_connector_smtp_connection_options:maislurp-client-erlang_create_connector_smtp_connection_options()) -> {ok, maislurp-client-erlang_connector_smtp_connection_dto:maislurp-client-erlang_connector_smtp_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_connector_smtp_connection(Ctx, Id, MaislurpClientErlangCreateConnectorSmtpConnectionOptions) ->
    update_connector_smtp_connection(Ctx, Id, MaislurpClientErlangCreateConnectorSmtpConnectionOptions, #{}).

-spec update_connector_smtp_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_connector_smtp_connection_options:maislurp-client-erlang_create_connector_smtp_connection_options(), maps:map()) -> {ok, maislurp-client-erlang_connector_smtp_connection_dto:maislurp-client-erlang_connector_smtp_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_connector_smtp_connection(Ctx, Id, MaislurpClientErlangCreateConnectorSmtpConnectionOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/connectors/", Id, "/smtp"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateConnectorSmtpConnectionOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


