// Copy trait 

use debug:: PrintTrait;

#[derive(Copy, Drop)]
struct Point {
    x: u128,
    y: u128,
}

fn main(){

    // Point struct implements Copy trait
    let point_1 = Point { x: 5_u128, y: 4_u128 };

    let first_usuage = multiply(point_1); // a copy of point_1 is generated and passed to multiply()
    first_usuage.print();

    let second_usuage = multiply(point_1); // another copy of point_1 is generated and passed to multiply()
    second_usuage.print();
}

fn multiply(p: Point)-> u128 {
    p.x * p.y
}

// with copy traits, ownership of the value to the function called is not moved, but instead a copy of the value is passed.
// Copy trait can be implemented on your type by adding the #[derive(Copy)] annotation to your type definition.