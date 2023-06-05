// use array::ArrayTrait;
// use debug::PrintTrait;
// use debug::print;
// use array::SpanTrait;
// use clone::Clone;
// use array::ArrayTCloneImpl;


// fn main() {
//     let mut arr = ArrayTrait::new();
//     arr.append(0);
//     arr.append(1);
    
// //    print(arr);
//     // let first = *arr.at(0_usize);
//     // let second = *arr.at(1_usize);
//     // let span = arr.span();
//     // span
//     // sa(arr);
//     print(arr);
// //    print(spp);
    
// }

//  fn sa(mut ar: Array<felt252>){

//     //  let spann = ar.span();
//     let clone = ar.clone();
//      print(clone);
    
// }


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

    let span = messages.span();
    // span

    print( messages);
//    let sat = sa(messages);
//    print(sat)
}

// fn sa(arr: Array<Data>){
//     let arr1 = arr.span();
//     // print(arr1);
// }
