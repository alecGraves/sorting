function [sorted] = quantum_bogosort(arr)
%QUANTUM_BOGOSORT Quantumly stores and sorts and array
%   Relies on the many-worlds interpretation of quantum mechanics
%   Due to lack of access to a quantum computer and a means of transmitting
%       data between universes, this sort is done in a simulation
%       and thus is not actually carried out in O(1)

% Quantumly store an array such that the order is unknown without
%   observation of the state.
% Observation of the quantumly stored array
%   will split the universe into at least n! universes
quantum_arr = quantum_store(arr);

% Simulate observing the result in every universe. For our simulation, 
%   we will do this sequentially rather than in parallel.
while true
    % This is an instance of a new universe
    observed_array = observe(quantum_arr);
    if not(isminsorted(observed_array))
        destroy_universe(); % the array in this universe is not sorted
    else
        sorted = observed_array; % save this array
        break; % stop checking universes, we found an acceptable one
    end
    
    continue; % This universe is destroyed. Let's check a different one.
end

end

function [quantum_array] = quantum_store(arr)
% QUANTUM_STORE Simulate quantomly storing an array
quantum_array = arr;
end

function [observation] = observe(quantum_arr)
% OBSERVATION Simulate observation of a quantumly stored array
    observation = quantum_arr(randperm(length(quantum_arr)));
end

function destroy_universe()
% DESTROY_UNIVERSE This operation is left to the reader.
end
