fn main(){
	println!("{}", sum_of_multiples_under(1000).to_string())
}

fn sum_of_multiples_under(max: u32) -> u32 {
	let mut sum = 0;
	
	for i in 1..max {
		if i % 3 == 0 || i % 5 == 0 {
			sum += i;
		}
	}
	
	return sum;
}