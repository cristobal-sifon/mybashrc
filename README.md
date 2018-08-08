# mybashrc
Custom bash setup files

---

## Instructions

* Read the files in `src/` and modify the environments and aliases as you see fit. 

* To make these files sourced by `~/.bashrc` or `~/.bash_profile` (if the former not present), simply run
```
sh setup.sh
```
The script will add a few lines of text to the configuration file above. After this, restart the terminal to get
the new configuration working.

* The only user input required is the definition of the `DATA` environment. If it does not already exist, the user will be
prompted to define it. It's OK to make it the same as `HOME`, if applicable.
