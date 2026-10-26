-module(maislurp-client-erlang_home_experience_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_home_experience_dto/0]).

-type maislurp-client-erlang_home_experience_dto() ::
    #{ 'version' := binary(),
       'homeVariant' := binary(),
       'primaryPath' := binary(),
       'secondaryPaths' => list(),
       'persona' => binary(),
       'teamSize' => binary(),
       'checklist' => maislurp-client-erlang_home_experience_checklist_dto:maislurp-client-erlang_home_experience_checklist_dto(),
       'firstValue' := maislurp-client-erlang_home_experience_first_value_dto:maislurp-client-erlang_home_experience_first_value_dto(),
       'upgradeContext' => maislurp-client-erlang_home_experience_upgrade_context_dto:maislurp-client-erlang_home_experience_upgrade_context_dto()
     }.

encode(#{ 'version' := Version,
          'homeVariant' := HomeVariant,
          'primaryPath' := PrimaryPath,
          'secondaryPaths' := SecondaryPaths,
          'persona' := Persona,
          'teamSize' := TeamSize,
          'checklist' := Checklist,
          'firstValue' := FirstValue,
          'upgradeContext' := UpgradeContext
        }) ->
    #{ 'version' => Version,
       'homeVariant' => HomeVariant,
       'primaryPath' => PrimaryPath,
       'secondaryPaths' => SecondaryPaths,
       'persona' => Persona,
       'teamSize' => TeamSize,
       'checklist' => Checklist,
       'firstValue' => FirstValue,
       'upgradeContext' => UpgradeContext
     }.
