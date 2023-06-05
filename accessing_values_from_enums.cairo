use array::ArrayTrait;
use traits::Into;
use debug::PrintTrait;
use debug::print;

// how to make Data in an enum printable

#[derive(Copy, Drop)]
enum Data {
    Integer: u128,
    Felt: felt252,
    Tuple: (u32, u32),
}

fn main() {
    // here we instanciate the enum variants like so
     let integer = Data::Integer(4_u128);
     let felt = Data::Felt('it works');
     integer.print();
     felt.print();
}

// Here we make the value printable by applying the PrintTrait
impl MessagePrintImpl of PrintTrait::<Data> {
    fn print(self: Data) {
        match self {
            Data::Integer(i) => i.print(), // `i` here can be anything(like integer, int etc), its just a placeholder
            Data::Felt(felt) => felt.print(),
            Data::Tuple(_) => ('Move').print(), // the underscore works too
            
        }
    }
}
