# zsh-scripts
Two small toy shell scripts for adding and removing directories from the PATH variable in zsh.

### Installation
1. Clone the repository and place zpathm in your user directory. 

2. Add the following line to your `.zshrc` file, if you cant see it press `CMD + SHIFT + .` to show hidden files.:

```sh
export PATH=~/zpathm/bin:$PATH
```

3. You might need to give the script execution permissions by running `chmod +x ~/zpathm/bin/atpath && chmod +x ~/zpathm/bin/rfpath`.

4. Restart your terminal or run `source ~/.zshrc` to apply the changes.

5. Run `atpath` to confirm the installation has succeeded. Yoy should see the following output:

```sh
Usage: atpath <directory>
```