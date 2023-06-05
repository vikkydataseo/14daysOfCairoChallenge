use array::ArrayTrait;
use debug::print;
use debug::PrintTrait;

fn main() {
    let mut arr = ArrayTrait::new();
    arr.append(100);

    // print(arr);
    arr.print();
    
}