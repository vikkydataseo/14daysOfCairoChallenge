// The Drop Trait

use debug::PrintTrait;

#[derive(Drop)]  // without `#[derive(Drop)]`, we will get a compilation error
struct Point{
        point_x: u128,
        point_y: u128
}

fn main(){
    let output = Point{point_x: 9, point_y: 7};
    output.print();
}


impl implPrintTrait of PrintTrait<Point> {
    fn print(self: Point) {
        self.point_x.print();
        self.point_y.print();
    }
}


//In other to ensure the soundness of Cairo programs, a value cannot go out of scope unless it has been previously moved.

// except for dictionaries (Felt252Dict) and types containing dictionaries,
// Drop implementation can be derived for all types, allowing them to be dropped when goint out of scope

//Soundness refers to the fact that if a statement during the execution of the program is false,
// no cheating prover can convince an honest verifier that it is true.
