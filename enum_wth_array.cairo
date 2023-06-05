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
    // messages.append(Data::Felt('hello world'));
    // messages.append(Data::Tuple((10_u32, 30_u32)));

    let span = messages.span();
    // span

    // print( messages);
    messages.print();
//    let sat = sa(messages);
//    print(sat)
}

// fn sa(arr: Array<Data>){
//     let arr1 = arr.span();
//     // print(arr1);
// }

impl MessagePrintImpl of PrintTrait::<Data> {
    fn print(self: Data) {
        match self {
            Data::Integer(_) => 'first'.print(),
            Data::Felt(_) => ('Echo').print(),
            Data::Tuple(_) => ('Move').print(),
            
        }
    }
}
