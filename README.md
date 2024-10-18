# Climate modeling notes

This repository contains the source files to generate notes about climate science: 

 - [climate modeling](cm.pdf)
 - [global dynamics](gd.pdf)
 - [numerical methods](nm.pdf)

from an introductory graduate-level [course](https://www.unibo.it/en/study/phd-professional-masters-specialisation-schools-and-other-programmes/course-unit-catalogue/course-unit/2024/480740) taught at University of Bologna.

The build is handled locally using Cmake and making use of the great cmake module [UseLatex](https://gitlab.kitware.com/kmorel/UseLATEX).
For more infos check out the documentation of UseLATEX [here](https://gitlab.kitware.com/kmorel/UseLATEX/).

## Build the notes locally

One way to quickly compile the `.tex` files into the relative `.pdf` is by running
```shell
mkdir build
cd build
cmake ..
make target-name # target names are cm, gd, cm
```
The resulting `target-name.pdf` file will then be located in the `build/` directory.

### UseLatex module update

If any change in the upstream Cmake module [UseLatex.cmake](UseLATEX.cmake) is detected (the Github [Action](.github/workflows/update-cmake-module.yml)
runs monthly[^1]), a new Pull Request will be opened to integrate the changes.

## License

This project is licensed under the [MIT LICENSE](LICENSE).

---
[^1]: You can also manually trigger an update with a manual dispatch if you need. 