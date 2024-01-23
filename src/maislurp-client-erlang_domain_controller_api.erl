-module(maislurp-client-erlang_domain_controller_api).

-export([add_domain_wildcard_catch_all/2, add_domain_wildcard_catch_all/3,
         create_domain/2, create_domain/3,
         delete_domain/2, delete_domain/3,
         get_domain/2, get_domain/3,
         get_domain_issues/1, get_domain_issues/2,
         get_domain_wildcard_catch_all_inbox/2, get_domain_wildcard_catch_all_inbox/3,
         get_domains/1, get_domains/2,
         update_domain/3, update_domain/4]).

-define(BASE_URL, "").

%% @doc Add catch all wild card inbox to domain
%% Add a catch all inbox to a domain so that any emails sent to it that cannot be matched will be sent to the catch all inbox generated
-spec add_domain_wildcard_catch_all(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_domain_dto:maislurp-client-erlang_domain_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
add_domain_wildcard_catch_all(Ctx, Id) ->
    add_domain_wildcard_catch_all(Ctx, Id, #{}).

-spec add_domain_wildcard_catch_all(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_domain_dto:maislurp-client-erlang_domain_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
add_domain_wildcard_catch_all(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/domains/", Id, "/wildcard"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create Domain
%% Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.
-spec create_domain(ctx:ctx(), maislurp-client-erlang_create_domain_options:maislurp-client-erlang_create_domain_options()) -> {ok, maislurp-client-erlang_domain_dto:maislurp-client-erlang_domain_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_domain(Ctx, MaislurpClientErlangCreateDomainOptions) ->
    create_domain(Ctx, MaislurpClientErlangCreateDomainOptions, #{}).

-spec create_domain(ctx:ctx(), maislurp-client-erlang_create_domain_options:maislurp-client-erlang_create_domain_options(), maps:map()) -> {ok, maislurp-client-erlang_domain_dto:maislurp-client-erlang_domain_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_domain(Ctx, MaislurpClientErlangCreateDomainOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/domains"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateDomainOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a domain
%% Delete a domain. This will disable any existing inboxes that use this domain.
-spec delete_domain(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [binary()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_domain(Ctx, Id) ->
    delete_domain(Ctx, Id, #{}).

-spec delete_domain(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [binary()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_domain(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/domains/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a domain
%% Returns domain verification status and tokens for a given domain
-spec get_domain(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_domain_dto:maislurp-client-erlang_domain_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain(Ctx, Id) ->
    get_domain(Ctx, Id, #{}).

-spec get_domain(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_domain_dto:maislurp-client-erlang_domain_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/domains/", Id, ""],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['checkForErrors'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get domain issues
%% List domain issues for domains you have created
-spec get_domain_issues(ctx:ctx()) -> {ok, maislurp-client-erlang_domain_issues_dto:maislurp-client-erlang_domain_issues_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_issues(Ctx) ->
    get_domain_issues(Ctx, #{}).

-spec get_domain_issues(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_domain_issues_dto:maislurp-client-erlang_domain_issues_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_issues(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/domains/issues"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get catch all wild card inbox for domain
%% Get the catch all inbox for a domain for missed emails
-spec get_domain_wildcard_catch_all_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_wildcard_catch_all_inbox(Ctx, Id) ->
    get_domain_wildcard_catch_all_inbox(Ctx, Id, #{}).

-spec get_domain_wildcard_catch_all_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_wildcard_catch_all_inbox(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/domains/", Id, "/wildcard"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get domains
%% List all custom domains you have created
-spec get_domains(ctx:ctx()) -> {ok, [maislurp-client-erlang_domain_preview:maislurp-client-erlang_domain_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domains(Ctx) ->
    get_domains(Ctx, #{}).

-spec get_domains(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_domain_preview:maislurp-client-erlang_domain_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domains(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/domains"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a domain
%% Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.
-spec update_domain(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_domain_options:maislurp-client-erlang_update_domain_options()) -> {ok, maislurp-client-erlang_domain_dto:maislurp-client-erlang_domain_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_domain(Ctx, Id, MaislurpClientErlangUpdateDomainOptions) ->
    update_domain(Ctx, Id, MaislurpClientErlangUpdateDomainOptions, #{}).

-spec update_domain(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_domain_options:maislurp-client-erlang_update_domain_options(), maps:map()) -> {ok, maislurp-client-erlang_domain_dto:maislurp-client-erlang_domain_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_domain(Ctx, Id, MaislurpClientErlangUpdateDomainOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/domains/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateDomainOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


