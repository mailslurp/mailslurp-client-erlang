-module(maislurp-client-erlang_guest_portal_controller_api).

-export([create_guest_portal/2, create_guest_portal/3,
         create_guest_portal_user/3, create_guest_portal_user/4,
         get_all_guest_portal_users/1, get_all_guest_portal_users/2,
         get_guest_portal/2, get_guest_portal/3,
         get_guest_portal_user/3, get_guest_portal_user/4,
         get_guest_portal_user_by_id/2, get_guest_portal_user_by_id/3,
         get_guest_portal_users/2, get_guest_portal_users/3,
         get_guest_portals/1, get_guest_portals/2]).

-define(BASE_URL, "").

%% @doc Create a portal page for your customers or clients to log into email accounts and view emails.
%% Create a guest login page for customers or clients to access assigned email addresses
-spec create_guest_portal(ctx:ctx(), maislurp-client-erlang_create_portal_options:maislurp-client-erlang_create_portal_options()) -> {ok, maislurp-client-erlang_guest_portal_dto:maislurp-client-erlang_guest_portal_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_guest_portal(Ctx, MaislurpClientErlangCreatePortalOptions) ->
    create_guest_portal(Ctx, MaislurpClientErlangCreatePortalOptions, #{}).

-spec create_guest_portal(ctx:ctx(), maislurp-client-erlang_create_portal_options:maislurp-client-erlang_create_portal_options(), maps:map()) -> {ok, maislurp-client-erlang_guest_portal_dto:maislurp-client-erlang_guest_portal_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_guest_portal(Ctx, MaislurpClientErlangCreatePortalOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/guest-portal"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreatePortalOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a portal guest user
%% Add customer to portal
-spec create_guest_portal_user(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_portal_user_options:maislurp-client-erlang_create_portal_user_options()) -> {ok, maislurp-client-erlang_guest_portal_user_create_dto:maislurp-client-erlang_guest_portal_user_create_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_guest_portal_user(Ctx, PortalId, MaislurpClientErlangCreatePortalUserOptions) ->
    create_guest_portal_user(Ctx, PortalId, MaislurpClientErlangCreatePortalUserOptions, #{}).

-spec create_guest_portal_user(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_portal_user_options:maislurp-client-erlang_create_portal_user_options(), maps:map()) -> {ok, maislurp-client-erlang_guest_portal_user_create_dto:maislurp-client-erlang_guest_portal_user_create_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_guest_portal_user(Ctx, PortalId, MaislurpClientErlangCreatePortalUserOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/guest-portal/", PortalId, "/user"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreatePortalUserOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all guest users for portal
%% Get all customers for a portal
-spec get_all_guest_portal_users(ctx:ctx()) -> {ok, maislurp-client-erlang_page_guest_portal_users:maislurp-client-erlang_page_guest_portal_users(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_guest_portal_users(Ctx) ->
    get_all_guest_portal_users(Ctx, #{}).

-spec get_all_guest_portal_users(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_guest_portal_users:maislurp-client-erlang_page_guest_portal_users(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_guest_portal_users(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/guest-portal/user"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['portalId', 'search', 'page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a client email portal
%% Fetch a customer guest portal
-spec get_guest_portal(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_guest_portal_dto:maislurp-client-erlang_guest_portal_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_guest_portal(Ctx, PortalId) ->
    get_guest_portal(Ctx, PortalId, #{}).

-spec get_guest_portal(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_guest_portal_dto:maislurp-client-erlang_guest_portal_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_guest_portal(Ctx, PortalId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/guest-portal/", PortalId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get guest user for portal
%% Get customer for portal
-spec get_guest_portal_user(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_guest_portal_user_dto:maislurp-client-erlang_guest_portal_user_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_guest_portal_user(Ctx, PortalId, GuestId) ->
    get_guest_portal_user(Ctx, PortalId, GuestId, #{}).

-spec get_guest_portal_user(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_guest_portal_user_dto:maislurp-client-erlang_guest_portal_user_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_guest_portal_user(Ctx, PortalId, GuestId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/guest-portal/", PortalId, "/user/", GuestId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get guest user
%% Get customer by ID
-spec get_guest_portal_user_by_id(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_guest_portal_user_dto:maislurp-client-erlang_guest_portal_user_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_guest_portal_user_by_id(Ctx, GuestId) ->
    get_guest_portal_user_by_id(Ctx, GuestId, #{}).

-spec get_guest_portal_user_by_id(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_guest_portal_user_dto:maislurp-client-erlang_guest_portal_user_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_guest_portal_user_by_id(Ctx, GuestId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/guest-portal/user/", GuestId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all guest users for portal
%% Get customers for a portal
-spec get_guest_portal_users(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_guest_portal_users:maislurp-client-erlang_page_guest_portal_users(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_guest_portal_users(Ctx, PortalId) ->
    get_guest_portal_users(Ctx, PortalId, #{}).

-spec get_guest_portal_users(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_guest_portal_users:maislurp-client-erlang_page_guest_portal_users(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_guest_portal_users(Ctx, PortalId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/guest-portal/", PortalId, "/user"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['search', 'page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get guest portals
%% Get portals
-spec get_guest_portals(ctx:ctx()) -> {ok, [maislurp-client-erlang_guest_portal_dto:maislurp-client-erlang_guest_portal_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_guest_portals(Ctx) ->
    get_guest_portals(Ctx, #{}).

-spec get_guest_portals(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_guest_portal_dto:maislurp-client-erlang_guest_portal_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_guest_portals(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/guest-portal"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


