use array::ArrayTrait;
use debug::PrintTrait;
use debug::print;
use array::SpanTrait;
use clone::Clone;
use array::ArrayTCloneImpl;


fn main() {
    let mut arr = ArrayTrait::new();
    arr.append(0);
    arr.append(1);
    
   print(arr);
    // let first = *arr.at(0_usize);
    // let second = *arr.at(1_usize);
    // let span = arr.span();
    // span
    // sa(arr);
    // print(arr);
//    print(spp);
    
}

//  fn sa(mut ar: Array<felt252>){

//     //  let spann = ar.span();
//     let clone = ar.clone();
//      print(clone);
    
// }