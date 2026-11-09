import gleam/io
import gleam/string
import gleamyshell
pub fn main() -> Nil {
  let result=gleamyshell.execute(
    "nmap",
    in:".",
    args:["-p","80,443","T4","google.com"],
  )
  case result{
    Ok(output)->{
      io.println(string.inspect(output.exit_code))
    }
    Error(error)->{
      io.println(string.inspect(error))
    }
  }
}
