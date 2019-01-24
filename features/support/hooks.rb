After do |scenario|
    #remove spaces from the scenario's name
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')

    if scenario.failed?
        screenshot(scenario_name.downcase!,'failed')    
    end
end    