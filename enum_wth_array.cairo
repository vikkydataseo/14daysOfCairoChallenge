use array::ArrayTrait;
use traits::Into;
use debug::PrintTrait;
use debug::print;

#[derive(Copy, Drop)]
enum Data {
    Integer: u128,
    Felt: felt252,
    Tuple: (u32, u32),
}

fn main() {
    let mut messages: Array<Data> = ArrayTrait::new();
    messages.append(Data::Integer(100_u128));
    messages.append(Data::Felt('hello world'));
    messages.append(Data::Tuple((10_u32, 30_u32)));

   messages.print()

}
// PrintTrait<Array<felt252>>

impl MessagePrintImpl of PrintTrait<Array<Data>> {
    fn print( self: Array<Data>) {
        // match self {
        //    messages::Data::Integer(e) => e.print(),
        //     // Data::Felt(r) => r.print(),
        //     // Data::Tuple((u32, u32)) => v.print(),
            
        // }
         print(self);
        // Into::<_, Array<Data>>::into(self).print();
    }
}
