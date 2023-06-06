use array::ArrayTrait;
use debug::print;
use debug::PrintTrait;

#[derive(Copy, Drop)]
enum Data {
    Integer: u128,
    Felt: felt252,
    Tuple: (u32, u32),
}

fn main() {
    // let mut arr = ArrayTrait::new();
    let mut messages: Array<Data> = ArrayTrait::new();
    messages.append(Data::Integer(8_u128));

    // print(messages);
    // messages.print();
    
}

impl MessagePrintImpl of PrintTrait::<Data> {
    fn print(self: Data) {
        match self {
            Data::Integer(i) => i.print(), // `i` here can be anything(like integer, int etc), its just a placeholder
            Data::Felt(felt) => felt.print(),
            Data::Tuple(_) => ('Move').print(), // the underscore works too
            
        }
    }
}

