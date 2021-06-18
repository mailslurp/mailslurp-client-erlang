-module(maislurp-client-erlang_group_controller_api).

-export([add_contacts_to_group/3, add_contacts_to_group/4,
         create_group/2, create_group/3,
         delete_group/2, delete_group/3,
         get_all_groups/1, get_all_groups/2,
         get_group/2, get_group/3,
         get_group_with_contacts/2, get_group_with_contacts/3,
         get_group_with_contacts_paginated/2, get_group_with_contacts_paginated/3,
         get_groups/1, get_groups/2,
         remove_contacts_from_group/3, remove_contacts_from_group/4]).

-define(BASE_URL, "").

%% @doc Add contacts to a group
%% 
-spec add_contacts_to_group(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_group_contacts:maislurp-client-erlang_update_group_contacts()) -> {ok, maislurp-client-erlang_group_contacts_dto:maislurp-client-erlang_group_contacts_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
add_contacts_to_group(Ctx, GroupId, UpdateGroupContactsOption) ->
    add_contacts_to_group(Ctx, GroupId, UpdateGroupContactsOption, #{}).

-spec add_contacts_to_group(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_group_contacts:maislurp-client-erlang_update_group_contacts(), maps:map()) -> {ok, maislurp-client-erlang_group_contacts_dto:maislurp-client-erlang_group_contacts_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
add_contacts_to_group(Ctx, GroupId, UpdateGroupContactsOption, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/groups/", GroupId, "/contacts"],
    QS = [],
    Headers = [],
    Body1 = UpdateGroupContactsOption,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a group
%% 
-spec create_group(ctx:ctx(), maislurp-client-erlang_create_group_options:maislurp-client-erlang_create_group_options()) -> {ok, maislurp-client-erlang_group_dto:maislurp-client-erlang_group_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_group(Ctx, CreateGroupOptions) ->
    create_group(Ctx, CreateGroupOptions, #{}).

-spec create_group(ctx:ctx(), maislurp-client-erlang_create_group_options:maislurp-client-erlang_create_group_options(), maps:map()) -> {ok, maislurp-client-erlang_group_dto:maislurp-client-erlang_group_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_group(Ctx, CreateGroupOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/groups"],
    QS = [],
    Headers = [],
    Body1 = CreateGroupOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete group
%% 
-spec delete_group(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_group(Ctx, GroupId) ->
    delete_group(Ctx, GroupId, #{}).

-spec delete_group(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_group(Ctx, GroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/groups/", GroupId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all Contact Groups in paginated format
%% 
-spec get_all_groups(ctx:ctx()) -> {ok, maislurp-client-erlang_page_group_projection:maislurp-client-erlang_page_group_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_groups(Ctx) ->
    get_all_groups(Ctx, #{}).

-spec get_all_groups(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_group_projection:maislurp-client-erlang_page_group_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_groups(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/groups/paginated"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get group
%% 
-spec get_group(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_group_dto:maislurp-client-erlang_group_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_group(Ctx, GroupId) ->
    get_group(Ctx, GroupId, #{}).

-spec get_group(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_group_dto:maislurp-client-erlang_group_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_group(Ctx, GroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/groups/", GroupId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get group and contacts belonging to it
%% 
-spec get_group_with_contacts(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_group_contacts_dto:maislurp-client-erlang_group_contacts_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_group_with_contacts(Ctx, GroupId) ->
    get_group_with_contacts(Ctx, GroupId, #{}).

-spec get_group_with_contacts(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_group_contacts_dto:maislurp-client-erlang_group_contacts_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_group_with_contacts(Ctx, GroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/groups/", GroupId, "/contacts"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get group and paginated contacts belonging to it
%% 
-spec get_group_with_contacts_paginated(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_contact_projection:maislurp-client-erlang_page_contact_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_group_with_contacts_paginated(Ctx, GroupId) ->
    get_group_with_contacts_paginated(Ctx, GroupId, #{}).

-spec get_group_with_contacts_paginated(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_contact_projection:maislurp-client-erlang_page_contact_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_group_with_contacts_paginated(Ctx, GroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/groups/", GroupId, "/contacts-paginated"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all groups
%% 
-spec get_groups(ctx:ctx()) -> {ok, [maislurp-client-erlang_group_projection:maislurp-client-erlang_group_projection()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_groups(Ctx) ->
    get_groups(Ctx, #{}).

-spec get_groups(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_group_projection:maislurp-client-erlang_group_projection()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_groups(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/groups"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Remove contacts from a group
%% 
-spec remove_contacts_from_group(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_group_contacts:maislurp-client-erlang_update_group_contacts()) -> {ok, maislurp-client-erlang_group_contacts_dto:maislurp-client-erlang_group_contacts_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
remove_contacts_from_group(Ctx, GroupId, UpdateGroupContactsOption) ->
    remove_contacts_from_group(Ctx, GroupId, UpdateGroupContactsOption, #{}).

-spec remove_contacts_from_group(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_group_contacts:maislurp-client-erlang_update_group_contacts(), maps:map()) -> {ok, maislurp-client-erlang_group_contacts_dto:maislurp-client-erlang_group_contacts_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
remove_contacts_from_group(Ctx, GroupId, UpdateGroupContactsOption, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/groups/", GroupId, "/contacts"],
    QS = [],
    Headers = [],
    Body1 = UpdateGroupContactsOption,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


