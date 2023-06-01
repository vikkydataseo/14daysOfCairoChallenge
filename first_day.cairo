// mutable reference

use array::ArrayTrait;
use debug::PrintTrait;


fn main() {
    
    let mut ref_array = ArrayTrait::new();
    
    creat_strings(ref ref_array);

    ref_array.print();
    
}

fn creat_strings(ref shortSrings: Array<felt252>) {
    shortSrings.append('I am the first string');
    shortSrings.append('You can call me the last'); 
}

// parameter can only be passed as mutable reference using the ref modifier
// ref can't transfer ownership
//`ref_array` variable must be mutable before we can pass it to the `creat_strings` function using the ref keyword


