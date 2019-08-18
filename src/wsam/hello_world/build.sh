#!/bin/sh
folder='./build'
cmake -B $folder
make -C $folder 
cp $folder/bin/hello_world.wasm ../../../public/assets/wasm


# echo "<html>
# <body>
# <script>
# function loadWasm(fileName) { 
#   return fetch(fileName)
#     .then(response => response.arrayBuffer())
#     .then(bits => WebAssembly.compile(bits))
#     .then(module => { return new WebAssembly.Instance(module) });
# };
  
# loadWasm(\`hello_world.wasm\`)
#   .then(instance => {
#     let fib = instance.exports.a;
#     console.log(fib(1));
#     console.log(fib(20));
#   });
  
# </script>
# </body>
# </html>" > $folder/bin/index.html
