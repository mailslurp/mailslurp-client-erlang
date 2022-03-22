-module(maislurp-client-erlang_api_internal_controller_api).

-export([get_saml_user_or_create/3, get_saml_user_or_create/4]).

-define(BASE_URL, "").

%% @doc 
%% 
-spec get_saml_user_or_create(ctx:ctx(), binary(), maislurp-client-erlang_get_or_create_saml_user_options:maislurp-client-erlang_get_or_create_saml_user_options()) -> {ok, maislurp-client-erlang_user_dto:maislurp-client-erlang_user_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_saml_user_or_create(Ctx, Key, MaislurpClientErlangGetOrCreateSamlUserOptions) ->
    get_saml_user_or_create(Ctx, Key, MaislurpClientErlangGetOrCreateSamlUserOptions, #{}).

-spec get_saml_user_or_create(ctx:ctx(), binary(), maislurp-client-erlang_get_or_create_saml_user_options:maislurp-client-erlang_get_or_create_saml_user_options(), maps:map()) -> {ok, maislurp-client-erlang_user_dto:maislurp-client-erlang_user_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_saml_user_or_create(Ctx, Key, MaislurpClientErlangGetOrCreateSamlUserOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/internal/saml/user"],
    QS = lists:flatten([{<<"key">>, Key}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangGetOrCreateSamlUserOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


