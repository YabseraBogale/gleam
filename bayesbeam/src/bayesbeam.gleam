import gleam/io

pub type Distribution{
  Beta(alpha: Float,
       beta: Float)
  Normal(mean: Float,
         variance: Float)
  Bernoulli(p:Float)
}

pub type Observation{
    Sucess
    Failure
}

pub fn main() -> Nil {
  io.println("Hello from bayesbeam!")
}
