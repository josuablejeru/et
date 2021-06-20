# ET

`et` is a tool what extracts text from pictures and pdfs by the power of on device Machinlearning from Apple.
It is build with the UNIX Philosophy in mind so all it ouputs goes to stdout and the program does one thing only... extracting text from images.

## Installation

### from source
>💡 please make sure you have swift installed

clone this repository and run the `install.sh` script from the project root.


## Usage
Here a some examples how you can use `et`.


print to stdout
```bash
$ et <path-to-file>
```

combined with `grep` you can search in pictures for accurencies
```bash
$ et <path-to-file> | grep "foo"
```

paste the text from your image to  clipboard
```bash
$ et <path-to-file> | pbcopy
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## ✌️ Get in touch with me

<a href="https://into-the-code.com" target="_blank"><img alt="Personal Website" src="https://img.shields.io/badge/Personal%20Website-%2312100E.svg?&style=for-the-badge&logoColor=white" /></a>
<a href="https://twitter.com/josuablejeru" target="_blank"><img alt="Twitter" src="https://img.shields.io/badge/twitter-%231DA1F2.svg?&style=for-the-badge&logo=twitter&logoColor=white" /></a>
<a href="https://www.linkedin.com/in/josua-blejeru-a2871a164" target="_blank"><img alt="LinkedIn" src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" /></a>

## 📝 License

Distributed under the MIT License. See LICENSE for more information.