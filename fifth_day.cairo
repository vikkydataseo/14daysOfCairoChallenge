use dict::Felt252DictTrait;

// The Destruct Trait

#[derive(Destruct)]

struct Destroy {
    dict: Felt252Dict<u32>
}

fn main() {
    Destroy { dict: Felt252DictTrait::new() }; 
}



// In other to ensure the soundness of Cairo programs.
// we must ensure the consistency of consecutive dictionary key updates during 
// program execution, this can be checked when the dictionaries are squashed.
// Unsquashed dictionaries are dangerous, as a malicious prover could prove the correctness of inconsistent updates.

