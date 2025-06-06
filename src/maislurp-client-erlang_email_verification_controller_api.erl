-module(maislurp-client-erlang_email_verification_controller_api).

-export([delete_all_validation_requests/1, delete_all_validation_requests/2,
         delete_validation_request/2, delete_validation_request/3,
         get_validation_requests/1, get_validation_requests/2,
         validate_email_address_list/2, validate_email_address_list/3]).

-define(BASE_URL, "").

%% @doc Delete all validation requests
%% Remove validation requests
-spec delete_all_validation_requests(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_validation_requests(Ctx) ->
    delete_all_validation_requests(Ctx, #{}).

-spec delete_all_validation_requests(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_validation_requests(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/email-verification"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a validation record
%% Delete a validation record
-spec delete_validation_request(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_validation_request(Ctx, Id) ->
    delete_validation_request(Ctx, Id, #{}).

-spec delete_validation_request(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_validation_request(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/email-verification/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Validate a list of email addresses. Per unit billing. See your plan for pricing.
%% List email verification requests
-spec get_validation_requests(ctx:ctx()) -> {ok, maislurp-client-erlang_page_email_validation_request:maislurp-client-erlang_page_email_validation_request(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_validation_requests(Ctx) ->
    get_validation_requests(Ctx, #{}).

-spec get_validation_requests(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_email_validation_request:maislurp-client-erlang_page_email_validation_request(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_validation_requests(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/email-verification/validation-requests"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'searchFilter', 'since', 'before', 'isValid'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Validate a list of email addresses. Per unit billing. See your plan for pricing.
%% Verify a list of email addresses is valid and can be contacted.
-spec validate_email_address_list(ctx:ctx(), maislurp-client-erlang_validate_email_address_list_options:maislurp-client-erlang_validate_email_address_list_options()) -> {ok, maislurp-client-erlang_validate_email_address_list_result:maislurp-client-erlang_validate_email_address_list_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
validate_email_address_list(Ctx, MaislurpClientErlangValidateEmailAddressListOptions) ->
    validate_email_address_list(Ctx, MaislurpClientErlangValidateEmailAddressListOptions, #{}).

-spec validate_email_address_list(ctx:ctx(), maislurp-client-erlang_validate_email_address_list_options:maislurp-client-erlang_validate_email_address_list_options(), maps:map()) -> {ok, maislurp-client-erlang_validate_email_address_list_result:maislurp-client-erlang_validate_email_address_list_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
validate_email_address_list(Ctx, MaislurpClientErlangValidateEmailAddressListOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/email-verification/email-address-list"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangValidateEmailAddressListOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


