-module(maislurp-client-erlang_phone_controller_api).

-export([create_emergency_address/2, create_emergency_address/3,
         delete_emergency_address/2, delete_emergency_address/3,
         delete_phone_number/2, delete_phone_number/3,
         get_consent_status/1, get_consent_status/2,
         get_emergency_address/2, get_emergency_address/3,
         get_emergency_addresses/1, get_emergency_addresses/2,
         get_phone_number/2, get_phone_number/3,
         get_phone_numbers/1, get_phone_numbers/2,
         get_phone_plans/1, get_phone_plans/2,
         get_phone_plans_availability/1, get_phone_plans_availability/2,
         get_sent_sms_by_phone_number/2, get_sent_sms_by_phone_number/3,
         get_sms_by_phone_number/2, get_sms_by_phone_number/3,
         send_sms_from_phone_number/3, send_sms_from_phone_number/4,
         set_consent_status/2, set_consent_status/3,
         set_phone_favourited/3, set_phone_favourited/4,
         test_phone_number_send_sms/3, test_phone_number_send_sms/4,
         update_phone_number/3, update_phone_number/4,
         validate_phone_number/2, validate_phone_number/3]).

-define(BASE_URL, "").

%% @doc Create an emergency address
%% Add an emergency address to a phone number
-spec create_emergency_address(ctx:ctx(), maislurp-client-erlang_create_emergency_address_options:maislurp-client-erlang_create_emergency_address_options()) -> {ok, maislurp-client-erlang_emergency_address:maislurp-client-erlang_emergency_address(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_emergency_address(Ctx, MaislurpClientErlangCreateEmergencyAddressOptions) ->
    create_emergency_address(Ctx, MaislurpClientErlangCreateEmergencyAddressOptions, #{}).

-spec create_emergency_address(ctx:ctx(), maislurp-client-erlang_create_emergency_address_options:maislurp-client-erlang_create_emergency_address_options(), maps:map()) -> {ok, maislurp-client-erlang_emergency_address:maislurp-client-erlang_emergency_address(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_emergency_address(Ctx, MaislurpClientErlangCreateEmergencyAddressOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/phone/emergency-addresses"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateEmergencyAddressOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete an emergency address
%% Delete an emergency address
-spec delete_emergency_address(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_empty_response_dto:maislurp-client-erlang_empty_response_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_emergency_address(Ctx, AddressId) ->
    delete_emergency_address(Ctx, AddressId, #{}).

-spec delete_emergency_address(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_empty_response_dto:maislurp-client-erlang_empty_response_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_emergency_address(Ctx, AddressId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/phone/emergency-addresses/", AddressId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a phone number
%% Remove phone number from account
-spec delete_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_phone_number(Ctx, PhoneNumberId) ->
    delete_phone_number(Ctx, PhoneNumberId, #{}).

-spec delete_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_phone_number(Ctx, PhoneNumberId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/phone/numbers/", PhoneNumberId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get consent status
%% Get the status of phone usage consent
-spec get_consent_status(ctx:ctx()) -> {ok, maislurp-client-erlang_consent_status_dto:maislurp-client-erlang_consent_status_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_consent_status(Ctx) ->
    get_consent_status(Ctx, #{}).

-spec get_consent_status(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_consent_status_dto:maislurp-client-erlang_consent_status_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_consent_status(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/phone/consent"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an emergency address
%% Fetch an emergency address by ID
-spec get_emergency_address(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_emergency_address:maislurp-client-erlang_emergency_address(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emergency_address(Ctx, AddressId) ->
    get_emergency_address(Ctx, AddressId, #{}).

-spec get_emergency_address(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_emergency_address:maislurp-client-erlang_emergency_address(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emergency_address(Ctx, AddressId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/phone/emergency-addresses/", AddressId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get emergency addresses
%% List emergency addresses
-spec get_emergency_addresses(ctx:ctx()) -> {ok, [maislurp-client-erlang_emergency_address_dto:maislurp-client-erlang_emergency_address_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emergency_addresses(Ctx) ->
    get_emergency_addresses(Ctx, #{}).

-spec get_emergency_addresses(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_emergency_address_dto:maislurp-client-erlang_emergency_address_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emergency_addresses(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/phone/emergency-addresses"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a phone number by ID
%% Get a phone number by ID
-spec get_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_phone_number_dto:maislurp-client-erlang_phone_number_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_phone_number(Ctx, PhoneNumberId) ->
    get_phone_number(Ctx, PhoneNumberId, #{}).

-spec get_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_phone_number_dto:maislurp-client-erlang_phone_number_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_phone_number(Ctx, PhoneNumberId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/phone/numbers/", PhoneNumberId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get phone numbers
%% List phone numbers for account
-spec get_phone_numbers(ctx:ctx()) -> {ok, maislurp-client-erlang_page_phone_number_projection:maislurp-client-erlang_page_phone_number_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_phone_numbers(Ctx) ->
    get_phone_numbers(Ctx, #{}).

-spec get_phone_numbers(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_phone_number_projection:maislurp-client-erlang_page_phone_number_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_phone_numbers(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/phone/numbers"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['phoneCountry', 'page', 'size', 'sort', 'since', 'before', 'search', 'include', 'favourite'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get phone plans
%% Get phone number plans
-spec get_phone_plans(ctx:ctx()) -> {ok, [maislurp-client-erlang_phone_plan_dto:maislurp-client-erlang_phone_plan_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_phone_plans(Ctx) ->
    get_phone_plans(Ctx, #{}).

-spec get_phone_plans(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_phone_plan_dto:maislurp-client-erlang_phone_plan_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_phone_plans(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/phone/plans"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get phone plans availability
%% 
-spec get_phone_plans_availability(ctx:ctx()) -> {ok, maislurp-client-erlang_phone_plan_availability:maislurp-client-erlang_phone_plan_availability(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_phone_plans_availability(Ctx) ->
    get_phone_plans_availability(Ctx, #{}).

-spec get_phone_plans_availability(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_phone_plan_availability:maislurp-client-erlang_phone_plan_availability(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_phone_plans_availability(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/phone/plans/availability"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List sent TXT messages for a phone number
%% Get sent SMS messages for a phone number
-spec get_sent_sms_by_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_sent_sms_projection:maislurp-client-erlang_page_sent_sms_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_sms_by_phone_number(Ctx, PhoneNumberId) ->
    get_sent_sms_by_phone_number(Ctx, PhoneNumberId, #{}).

-spec get_sent_sms_by_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_sent_sms_projection:maislurp-client-erlang_page_sent_sms_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_sms_by_phone_number(Ctx, PhoneNumberId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/phone/numbers/", PhoneNumberId, "/sms-sent"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before', 'search'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List SMS messages for a phone number
%% Get SMS messages for a phone number
-spec get_sms_by_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_sms_projection:maislurp-client-erlang_page_sms_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sms_by_phone_number(Ctx, PhoneNumberId) ->
    get_sms_by_phone_number(Ctx, PhoneNumberId, #{}).

-spec get_sms_by_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_sms_projection:maislurp-client-erlang_page_sms_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sms_by_phone_number(Ctx, PhoneNumberId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/phone/numbers/", PhoneNumberId, "/sms"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'unreadOnly', 'since', 'before', 'search', 'favourite'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send TXT message from a phone number
%% Send SMS from a phone number
-spec send_sms_from_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_sms_send_options:maislurp-client-erlang_sms_send_options()) -> {ok, maislurp-client-erlang_sent_sms_dto:maislurp-client-erlang_sent_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_sms_from_phone_number(Ctx, PhoneNumberId, MaislurpClientErlangSmsSendOptions) ->
    send_sms_from_phone_number(Ctx, PhoneNumberId, MaislurpClientErlangSmsSendOptions, #{}).

-spec send_sms_from_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_sms_send_options:maislurp-client-erlang_sms_send_options(), maps:map()) -> {ok, maislurp-client-erlang_sent_sms_dto:maislurp-client-erlang_sent_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_sms_from_phone_number(Ctx, PhoneNumberId, MaislurpClientErlangSmsSendOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/phone/numbers/", PhoneNumberId, "/sms"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangSmsSendOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Set consent status
%% Give or revoke consent for phone usage
-spec set_consent_status(ctx:ctx(), boolean()) -> {ok, maislurp-client-erlang_consent_status_dto:maislurp-client-erlang_consent_status_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
set_consent_status(Ctx, Agree) ->
    set_consent_status(Ctx, Agree, #{}).

-spec set_consent_status(ctx:ctx(), boolean(), maps:map()) -> {ok, maislurp-client-erlang_consent_status_dto:maislurp-client-erlang_consent_status_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
set_consent_status(Ctx, Agree, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/phone/consent"],
    QS = lists:flatten([{<<"agree">>, Agree}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Set phone favourited state
%% Set and return new favorite state for a phone
-spec set_phone_favourited(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_set_phone_favourited_options:maislurp-client-erlang_set_phone_favourited_options()) -> {ok, maislurp-client-erlang_phone_number_dto:maislurp-client-erlang_phone_number_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
set_phone_favourited(Ctx, PhoneNumberId, MaislurpClientErlangSetPhoneFavouritedOptions) ->
    set_phone_favourited(Ctx, PhoneNumberId, MaislurpClientErlangSetPhoneFavouritedOptions, #{}).

-spec set_phone_favourited(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_set_phone_favourited_options:maislurp-client-erlang_set_phone_favourited_options(), maps:map()) -> {ok, maislurp-client-erlang_phone_number_dto:maislurp-client-erlang_phone_number_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
set_phone_favourited(Ctx, PhoneNumberId, MaislurpClientErlangSetPhoneFavouritedOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/phone/numbers/", PhoneNumberId, "/favourite"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangSetPhoneFavouritedOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Test sending an SMS to a number
%% Test a phone number by sending an SMS to it
-spec test_phone_number_send_sms(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_test_phone_number_options:maislurp-client-erlang_test_phone_number_options()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_phone_number_send_sms(Ctx, PhoneNumberId, MaislurpClientErlangTestPhoneNumberOptions) ->
    test_phone_number_send_sms(Ctx, PhoneNumberId, MaislurpClientErlangTestPhoneNumberOptions, #{}).

-spec test_phone_number_send_sms(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_test_phone_number_options:maislurp-client-erlang_test_phone_number_options(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_phone_number_send_sms(Ctx, PhoneNumberId, MaislurpClientErlangTestPhoneNumberOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/phone/numbers/", PhoneNumberId, "/test"],
    QS = [],
    Headers = []++maislurp-client-erlang_utils:optional_params(['x-test-id'], _OptionalParams),
    Body1 = MaislurpClientErlangTestPhoneNumberOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a phone number
%% Set field for phone number
-spec update_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_phone_number_options:maislurp-client-erlang_update_phone_number_options()) -> {ok, maislurp-client-erlang_phone_number_dto:maislurp-client-erlang_phone_number_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_phone_number(Ctx, PhoneNumberId, MaislurpClientErlangUpdatePhoneNumberOptions) ->
    update_phone_number(Ctx, PhoneNumberId, MaislurpClientErlangUpdatePhoneNumberOptions, #{}).

-spec update_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_phone_number_options:maislurp-client-erlang_update_phone_number_options(), maps:map()) -> {ok, maislurp-client-erlang_phone_number_dto:maislurp-client-erlang_phone_number_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_phone_number(Ctx, PhoneNumberId, MaislurpClientErlangUpdatePhoneNumberOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/phone/numbers/", PhoneNumberId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdatePhoneNumberOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Verify validity of a phone number
%% Validate a phone number
-spec validate_phone_number(ctx:ctx(), maislurp-client-erlang_validate_phone_number_options:maislurp-client-erlang_validate_phone_number_options()) -> {ok, maislurp-client-erlang_phone_number_validation_dto:maislurp-client-erlang_phone_number_validation_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
validate_phone_number(Ctx, MaislurpClientErlangValidatePhoneNumberOptions) ->
    validate_phone_number(Ctx, MaislurpClientErlangValidatePhoneNumberOptions, #{}).

-spec validate_phone_number(ctx:ctx(), maislurp-client-erlang_validate_phone_number_options:maislurp-client-erlang_validate_phone_number_options(), maps:map()) -> {ok, maislurp-client-erlang_phone_number_validation_dto:maislurp-client-erlang_phone_number_validation_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
validate_phone_number(Ctx, MaislurpClientErlangValidatePhoneNumberOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/phone/validate"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangValidatePhoneNumberOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


