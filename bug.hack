```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function main(): void {
  var x: int = 5;
  var y: int = bar(x);
  echo y; // Outputs 12
}
```
This code is correct, but there is an unusual error that might happen when compiling with HHVM:

If `foo` function is changed to return a string then error message will be confusing.
```hack
function foo(x: int): string {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function main(): void {
  var x: int = 5;
  var y: int = bar(x);
  echo y; // Outputs 12
}
```