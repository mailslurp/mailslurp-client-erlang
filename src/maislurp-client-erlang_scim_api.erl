-module(maislurp-client-erlang_scim_api).

-export([create_group/3, create_group/4,
         create_user/3, create_user/4,
         delete_group/3, delete_group/4,
         delete_user/3, delete_user/4,
         get_group/3, get_group/4,
         get_resource_type/3, get_resource_type/4,
         get_resource_types/2, get_resource_types/3,
         get_schema/3, get_schema/4,
         get_schemas/2, get_schemas/3,
         get_service_provider_config/2, get_service_provider_config/3,
         get_user/3, get_user/4,
         list_groups/2, list_groups/3,
         list_users/2, list_users/3,
         patch_group/4, patch_group/5,
         patch_user/4, patch_user/5,
         replace_group/4, replace_group/5,
         replace_user/4, replace_user/5]).

-define(BASE_URL, "").

%% @doc 
%% 
-spec create_group(ctx:ctx(), binary(), maislurp-client-erlang_scim_group_resource:maislurp-client-erlang_scim_group_resource()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_group(Ctx, Slug, MaislurpClientErlangScimGroupResource) ->
    create_group(Ctx, Slug, MaislurpClientErlangScimGroupResource, #{}).

-spec create_group(ctx:ctx(), binary(), maislurp-client-erlang_scim_group_resource:maislurp-client-erlang_scim_group_resource(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_group(Ctx, Slug, MaislurpClientErlangScimGroupResource, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/scim/v2/", Slug, "/Groups"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangScimGroupResource,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/scim+json">>, <<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec create_user(ctx:ctx(), binary(), maislurp-client-erlang_scim_user_resource:maislurp-client-erlang_scim_user_resource()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_user(Ctx, Slug, MaislurpClientErlangScimUserResource) ->
    create_user(Ctx, Slug, MaislurpClientErlangScimUserResource, #{}).

-spec create_user(ctx:ctx(), binary(), maislurp-client-erlang_scim_user_resource:maislurp-client-erlang_scim_user_resource(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_user(Ctx, Slug, MaislurpClientErlangScimUserResource, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/scim/v2/", Slug, "/Users"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangScimUserResource,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/scim+json">>, <<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_group(ctx:ctx(), binary(), binary()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_group(Ctx, Slug, GroupId) ->
    delete_group(Ctx, Slug, GroupId, #{}).

-spec delete_group(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_group(Ctx, Slug, GroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/scim/v2/", Slug, "/Groups/", GroupId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_user(ctx:ctx(), binary(), binary()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_user(Ctx, Slug, UserId) ->
    delete_user(Ctx, Slug, UserId, #{}).

-spec delete_user(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_user(Ctx, Slug, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/scim/v2/", Slug, "/Users/", UserId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_group(ctx:ctx(), binary(), binary()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_group(Ctx, Slug, GroupId) ->
    get_group(Ctx, Slug, GroupId, #{}).

-spec get_group(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_group(Ctx, Slug, GroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/scim/v2/", Slug, "/Groups/", GroupId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_resource_type(ctx:ctx(), binary(), binary()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_resource_type(Ctx, Slug, ResourceType) ->
    get_resource_type(Ctx, Slug, ResourceType, #{}).

-spec get_resource_type(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_resource_type(Ctx, Slug, ResourceType, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/scim/v2/", Slug, "/ResourceTypes/", ResourceType, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_resource_types(ctx:ctx(), binary()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_resource_types(Ctx, Slug) ->
    get_resource_types(Ctx, Slug, #{}).

-spec get_resource_types(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_resource_types(Ctx, Slug, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/scim/v2/", Slug, "/ResourceTypes"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_schema(ctx:ctx(), binary(), binary()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_schema(Ctx, Slug, SchemaId) ->
    get_schema(Ctx, Slug, SchemaId, #{}).

-spec get_schema(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_schema(Ctx, Slug, SchemaId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/scim/v2/", Slug, "/Schemas/", SchemaId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_schemas(ctx:ctx(), binary()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_schemas(Ctx, Slug) ->
    get_schemas(Ctx, Slug, #{}).

-spec get_schemas(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_schemas(Ctx, Slug, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/scim/v2/", Slug, "/Schemas"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_service_provider_config(ctx:ctx(), binary()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_service_provider_config(Ctx, Slug) ->
    get_service_provider_config(Ctx, Slug, #{}).

-spec get_service_provider_config(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_service_provider_config(Ctx, Slug, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/scim/v2/", Slug, "/ServiceProviderConfig"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_user(ctx:ctx(), binary(), binary()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_user(Ctx, Slug, UserId) ->
    get_user(Ctx, Slug, UserId, #{}).

-spec get_user(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_user(Ctx, Slug, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/scim/v2/", Slug, "/Users/", UserId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_groups(ctx:ctx(), binary()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
list_groups(Ctx, Slug) ->
    list_groups(Ctx, Slug, #{}).

-spec list_groups(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
list_groups(Ctx, Slug, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/scim/v2/", Slug, "/Groups"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['filter', 'startIndex', 'count'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_users(ctx:ctx(), binary()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
list_users(Ctx, Slug) ->
    list_users(Ctx, Slug, #{}).

-spec list_users(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
list_users(Ctx, Slug, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/scim/v2/", Slug, "/Users"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['filter', 'startIndex', 'count'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec patch_group(ctx:ctx(), binary(), binary(), maislurp-client-erlang_scim_patch_request:maislurp-client-erlang_scim_patch_request()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
patch_group(Ctx, Slug, GroupId, MaislurpClientErlangScimPatchRequest) ->
    patch_group(Ctx, Slug, GroupId, MaislurpClientErlangScimPatchRequest, #{}).

-spec patch_group(ctx:ctx(), binary(), binary(), maislurp-client-erlang_scim_patch_request:maislurp-client-erlang_scim_patch_request(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
patch_group(Ctx, Slug, GroupId, MaislurpClientErlangScimPatchRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/scim/v2/", Slug, "/Groups/", GroupId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangScimPatchRequest,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/scim+json">>, <<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec patch_user(ctx:ctx(), binary(), binary(), maislurp-client-erlang_scim_patch_request:maislurp-client-erlang_scim_patch_request()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
patch_user(Ctx, Slug, UserId, MaislurpClientErlangScimPatchRequest) ->
    patch_user(Ctx, Slug, UserId, MaislurpClientErlangScimPatchRequest, #{}).

-spec patch_user(ctx:ctx(), binary(), binary(), maislurp-client-erlang_scim_patch_request:maislurp-client-erlang_scim_patch_request(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
patch_user(Ctx, Slug, UserId, MaislurpClientErlangScimPatchRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/scim/v2/", Slug, "/Users/", UserId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangScimPatchRequest,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/scim+json">>, <<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec replace_group(ctx:ctx(), binary(), binary(), maislurp-client-erlang_scim_group_resource:maislurp-client-erlang_scim_group_resource()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
replace_group(Ctx, Slug, GroupId, MaislurpClientErlangScimGroupResource) ->
    replace_group(Ctx, Slug, GroupId, MaislurpClientErlangScimGroupResource, #{}).

-spec replace_group(ctx:ctx(), binary(), binary(), maislurp-client-erlang_scim_group_resource:maislurp-client-erlang_scim_group_resource(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
replace_group(Ctx, Slug, GroupId, MaislurpClientErlangScimGroupResource, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/scim/v2/", Slug, "/Groups/", GroupId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangScimGroupResource,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/scim+json">>, <<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec replace_user(ctx:ctx(), binary(), binary(), maislurp-client-erlang_scim_user_resource:maislurp-client-erlang_scim_user_resource()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
replace_user(Ctx, Slug, UserId, MaislurpClientErlangScimUserResource) ->
    replace_user(Ctx, Slug, UserId, MaislurpClientErlangScimUserResource, #{}).

-spec replace_user(ctx:ctx(), binary(), binary(), maislurp-client-erlang_scim_user_resource:maislurp-client-erlang_scim_user_resource(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
replace_user(Ctx, Slug, UserId, MaislurpClientErlangScimUserResource, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/scim/v2/", Slug, "/Users/", UserId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangScimUserResource,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/scim+json">>, <<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


