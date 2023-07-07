<div align="center">
<h1>Cryptea</h1>
<img src="https://i.imgur.com/ycviuQh.png" alt="cryptea icon" width="200"/>
<p>
Cryptea is a SHA1 hash cracker that attempts to find the original password from a given SHA1 hash and a wordlist.<br>
Also can encrypt messages using <code>parse</code> keyword
</p>
<hr>
</div>


### Usage
#### Compiling

First you will need to clone this repository on your machine
```sh
git clone --depth=1 https://gitlab.com/juniosantos/Cryptea.git 
```

To compile by now you will need Rustc and cargo setup.
```sh
cargo build --release --locked
```

You may want to execute `cd ./target/release/` to run cryptea easier

### Executing

Cryptea has 3 options: 
#### find
You need to pass 2 arguments:  
`<path>` where the contains the text  
`<hash>` value  
_optional: `--type` to select the hash function (default: sha256)_  

**Example:**  
```sh
./cryptea find ./wordlist.txt "3447a6779143e2dd8cbaad5922ec6afac4a0276a17544f8a3285a27722a1c943"
```  

<hr>

### parse
Pass message to encrypt
_Also accepts the flag `--type`_  

**Example:** 
```sh
./cryptea parse "hello" --type sha512
```
<hr>

### example
Runs a setup example to demonstrate how cryptea works <br><br>
**Example:** 
```sh
./cryptea example
````

