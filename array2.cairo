    use array::ArrayTrait;
    use debug::print;

    fn main() {
        let mut array1 = ArrayTrait::new();  // we instantiate a new mutable array

        // `array1` is moved into the `print_array` function taking it out of scope, but immediately brought back to scope when returned and moved back into `array1`
        array1 = print_array(array1);

        // since `print_array` returned `array1`, it is now back in scope and can be further used without errors
        array1.append(2);
        array1.append(1);

        // `array1` goes out of scope as it's passed again into the `print` function
        print(array1);
    }

    fn print_array(mut arr: Array::<felt252>) -> Array::<felt252> {
        arr
    }