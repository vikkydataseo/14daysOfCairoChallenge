/// snapshot

use debug:: PrintTrait;

#[derive(Copy, Drop)]
struct Rectangle {
    height: u64,
    width: u64,
}

fn main() {
    // instantiate the Rectangle struct
    let dimention_of_rec = Rectangle { height: 3_u64, width: 8_u64 };

    // pass the snapshot of `dimention_of_rec` to function
    let area_of_rec = calculate_area_of_rec(@dimention_of_rec);
    area_of_rec.print();
}

fn calculate_area_of_rec(rec: @Rectangle) -> u64 {
    // use the desnap operator `*` to unsnap the values
    *rec.height * *rec.width
}


// a snapshot is an immutable view of a value at a certain point in time
// we can only desnap copyable types
// arrays and dictionaries are not copyable
// snapshot can't transfer ownership