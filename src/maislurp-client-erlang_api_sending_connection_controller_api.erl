-module(maislurp-client-erlang_api_sending_connection_controller_api).

-export([create_sending_connection/2, create_sending_connection/3,
         delete_delivery_sender_seats/1, delete_delivery_sender_seats/2,
         delete_sending_connection/2, delete_sending_connection/3,
         disable_sending_connection/2, disable_sending_connection/3,
         enable_sending_connection/2, enable_sending_connection/3,
         get_delivery_sender_capacity/1, get_delivery_sender_capacity/2,
         get_sending_connection/2, get_sending_connection/3,
         get_sending_connection_providers/1, get_sending_connection_providers/2,
         get_sending_connections/1, get_sending_connections/2,
         probe_sending_connection_delivery/2, probe_sending_connection_delivery/3,
         rotate_sending_connection_credentials/3, rotate_sending_connection_credentials/4,
         update_delivery_sender_seats/2, update_delivery_sender_seats/3,
         update_sending_connection/3, update_sending_connection/4,
         verify_sending_connection/2, verify_sending_connection/3]).

-define(BASE_URL, "").

%% @doc Create a sending connection
%% 
-spec create_sending_connection(ctx:ctx(), maislurp-client-erlang_create_sending_connection_options:maislurp-client-erlang_create_sending_connection_options()) -> {ok, maislurp-client-erlang_sending_connection_dto:maislurp-client-erlang_sending_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_sending_connection(Ctx, MaislurpClientErlangCreateSendingConnectionOptions) ->
    create_sending_connection(Ctx, MaislurpClientErlangCreateSendingConnectionOptions, #{}).

-spec create_sending_connection(ctx:ctx(), maislurp-client-erlang_create_sending_connection_options:maislurp-client-erlang_create_sending_connection_options(), maps:map()) -> {ok, maislurp-client-erlang_sending_connection_dto:maislurp-client-erlang_sending_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_sending_connection(Ctx, MaislurpClientErlangCreateSendingConnectionOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/sending-connections"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateSendingConnectionOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Cancel purchased Delivery Sender seats
%% 
-spec delete_delivery_sender_seats(ctx:ctx()) -> {ok, maislurp-client-erlang_delivery_sender_capacity_dto:maislurp-client-erlang_delivery_sender_capacity_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_delivery_sender_seats(Ctx) ->
    delete_delivery_sender_seats(Ctx, #{}).

-spec delete_delivery_sender_seats(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_delivery_sender_capacity_dto:maislurp-client-erlang_delivery_sender_capacity_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_delivery_sender_seats(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/sending-connections/sender-seats"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Disconnect a sending connection
%% 
-spec delete_sending_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_sending_connection(Ctx, ConnectionId) ->
    delete_sending_connection(Ctx, ConnectionId, #{}).

-spec delete_sending_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_sending_connection(Ctx, ConnectionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/sending-connections/", ConnectionId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Disable Delivery Sender capacity
%% Releases this connection's shared sender allocation while retaining its verified credentials.
-spec disable_sending_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_sending_connection_dto:maislurp-client-erlang_sending_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
disable_sending_connection(Ctx, ConnectionId) ->
    disable_sending_connection(Ctx, ConnectionId, #{}).

-spec disable_sending_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_sending_connection_dto:maislurp-client-erlang_sending_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
disable_sending_connection(Ctx, ConnectionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/sending-connections/", ConnectionId, "/enable"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Enable a verified Delivery Sender
%% Allocates shared sender capacity. Included capacity is used first and supported additional capacity is added to the existing subscription when possible.
-spec enable_sending_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_sending_connection_dto:maislurp-client-erlang_sending_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
enable_sending_connection(Ctx, ConnectionId) ->
    enable_sending_connection(Ctx, ConnectionId, #{}).

-spec enable_sending_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_sending_connection_dto:maislurp-client-erlang_sending_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
enable_sending_connection(Ctx, ConnectionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/sending-connections/", ConnectionId, "/enable"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get shared Delivery Sender capacity
%% 
-spec get_delivery_sender_capacity(ctx:ctx()) -> {ok, maislurp-client-erlang_delivery_sender_capacity_dto:maislurp-client-erlang_delivery_sender_capacity_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_delivery_sender_capacity(Ctx) ->
    get_delivery_sender_capacity(Ctx, #{}).

-spec get_delivery_sender_capacity(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_delivery_sender_capacity_dto:maislurp-client-erlang_delivery_sender_capacity_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_delivery_sender_capacity(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sending-connections/capacity"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a sending connection
%% 
-spec get_sending_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_sending_connection_dto:maislurp-client-erlang_sending_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sending_connection(Ctx, ConnectionId) ->
    get_sending_connection(Ctx, ConnectionId, #{}).

-spec get_sending_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_sending_connection_dto:maislurp-client-erlang_sending_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sending_connection(Ctx, ConnectionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sending-connections/", ConnectionId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List sending connection providers
%% 
-spec get_sending_connection_providers(ctx:ctx()) -> {ok, [maislurp-client-erlang_sending_connection_provider_dto:maislurp-client-erlang_sending_connection_provider_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sending_connection_providers(Ctx) ->
    get_sending_connection_providers(Ctx, #{}).

-spec get_sending_connection_providers(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_sending_connection_provider_dto:maislurp-client-erlang_sending_connection_provider_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sending_connection_providers(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sending-connections/providers"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List sending connections
%% 
-spec get_sending_connections(ctx:ctx()) -> {ok, [maislurp-client-erlang_sending_connection_dto:maislurp-client-erlang_sending_connection_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sending_connections(Ctx) ->
    get_sending_connections(Ctx, #{}).

-spec get_sending_connections(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_sending_connection_dto:maislurp-client-erlang_sending_connection_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sending_connections(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sending-connections"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send an unbilled delivery test to a temporary MailSlurp inbox
%% Uses only the selected customer-owned connection. A successful receipt proves provider acceptance and delivery to MailSlurp, not Gmail or Outlook placement.
-spec probe_sending_connection_delivery(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_sending_connection_delivery_probe_dto:maislurp-client-erlang_sending_connection_delivery_probe_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
probe_sending_connection_delivery(Ctx, ConnectionId) ->
    probe_sending_connection_delivery(Ctx, ConnectionId, #{}).

-spec probe_sending_connection_delivery(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_sending_connection_delivery_probe_dto:maislurp-client-erlang_sending_connection_delivery_probe_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
probe_sending_connection_delivery(Ctx, ConnectionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/sending-connections/", ConnectionId, "/delivery-probe"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Rotate sending connection credentials
%% Verifies supported replacement credentials before atomically replacing the encrypted credential envelope.
-spec rotate_sending_connection_credentials(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_rotate_sending_connection_credentials_options:maislurp-client-erlang_rotate_sending_connection_credentials_options()) -> {ok, maislurp-client-erlang_sending_connection_dto:maislurp-client-erlang_sending_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
rotate_sending_connection_credentials(Ctx, ConnectionId, MaislurpClientErlangRotateSendingConnectionCredentialsOptions) ->
    rotate_sending_connection_credentials(Ctx, ConnectionId, MaislurpClientErlangRotateSendingConnectionCredentialsOptions, #{}).

-spec rotate_sending_connection_credentials(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_rotate_sending_connection_credentials_options:maislurp-client-erlang_rotate_sending_connection_credentials_options(), maps:map()) -> {ok, maislurp-client-erlang_sending_connection_dto:maislurp-client-erlang_sending_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
rotate_sending_connection_credentials(Ctx, ConnectionId, MaislurpClientErlangRotateSendingConnectionCredentialsOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/sending-connections/", ConnectionId, "/credentials"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangRotateSendingConnectionCredentialsOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update purchased Delivery Sender seats
%% 
-spec update_delivery_sender_seats(ctx:ctx(), maislurp-client-erlang_update_delivery_sender_seats_options:maislurp-client-erlang_update_delivery_sender_seats_options()) -> {ok, maislurp-client-erlang_delivery_sender_capacity_dto:maislurp-client-erlang_delivery_sender_capacity_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_delivery_sender_seats(Ctx, MaislurpClientErlangUpdateDeliverySenderSeatsOptions) ->
    update_delivery_sender_seats(Ctx, MaislurpClientErlangUpdateDeliverySenderSeatsOptions, #{}).

-spec update_delivery_sender_seats(ctx:ctx(), maislurp-client-erlang_update_delivery_sender_seats_options:maislurp-client-erlang_update_delivery_sender_seats_options(), maps:map()) -> {ok, maislurp-client-erlang_delivery_sender_capacity_dto:maislurp-client-erlang_delivery_sender_capacity_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_delivery_sender_seats(Ctx, MaislurpClientErlangUpdateDeliverySenderSeatsOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/sending-connections/sender-seats"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateDeliverySenderSeatsOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a sending connection
%% Updates non-secret connection metadata. Use the credentials endpoint to replace supported SMTP or API-key credentials.
-spec update_sending_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_sending_connection_options:maislurp-client-erlang_update_sending_connection_options()) -> {ok, maislurp-client-erlang_sending_connection_dto:maislurp-client-erlang_sending_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_sending_connection(Ctx, ConnectionId, MaislurpClientErlangUpdateSendingConnectionOptions) ->
    update_sending_connection(Ctx, ConnectionId, MaislurpClientErlangUpdateSendingConnectionOptions, #{}).

-spec update_sending_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_sending_connection_options:maislurp-client-erlang_update_sending_connection_options(), maps:map()) -> {ok, maislurp-client-erlang_sending_connection_dto:maislurp-client-erlang_sending_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_sending_connection(Ctx, ConnectionId, MaislurpClientErlangUpdateSendingConnectionOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/sending-connections/", ConnectionId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateSendingConnectionOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Verify a sending connection
%% Verifies the customer credential without enabling billable sender capacity. A consuming product enables the shared Delivery Sender seat when sending starts.
-spec verify_sending_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_sending_connection_dto:maislurp-client-erlang_sending_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
verify_sending_connection(Ctx, ConnectionId) ->
    verify_sending_connection(Ctx, ConnectionId, #{}).

-spec verify_sending_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_sending_connection_dto:maislurp-client-erlang_sending_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
verify_sending_connection(Ctx, ConnectionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/sending-connections/", ConnectionId, "/verify"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


