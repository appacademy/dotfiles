# Troubleshooting your Environment

Here are some common environment issues you may run into. Go ahead and
try these fixes, but if they don't work, no worries––just bring it to
one of our TAs, and we should be able to help.

## Ruby gems won't install.

This can happen when you install a specific gem, but more often it
occurs when you run `bundle install`, which tries to install a whole
list of gems.

Look at the specific error message you get, and match it to one of the
following...

### Gems owned by Root

```
ERROR:  While executing gem ... (Errno::EACCES)
    Permission denied @ rb_sysopen - /Users/you/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/...
```

This usually means you've previously installed a gem using `sudo`. When
you invoke `sudo`, it changes the user to `root`, so any files you
create are automatically owned by `root` and thus only changeable by
`root`. The solution is to change the ownership of those files since
they shouldn't belong to `root` anyway. (They're in _your_ home
directory after all!)

The following command will recursively repossess everything in the
`.rbenv` directory, where all your Ruby files and gems live. Go ahead
and run it:

```
sudo chown -R "$USER" ~/.rbenv
```

Now your problem should be fixed. Just be sure not to `sudo gem install`
anything, or it will happen again!

#### If that doesn't fix it...

It's possible that you have some gemfiles stored _outside_ of the
`~/.rbenv` directory. Look carefully at the path that the error message
gives you. Figure out which directory you need to `chown` and then run
the command again with the new directory:

```
sudo chown -R "$USER" ~/path/to/root/owned/gems
```

### Native Extensions

```
ERROR: Failed to build gem native extension.
```

This usually also contains this line somewhere:

```
*** extconf.rb failed ***
```

This occurs when installing a gem that has native extensions that must
be compiled, and can fail for a huge variety of reasons, but we'll
outline the most common ones here.

#### Nokogiri Gem

If the gem that failed is Nokogiri, go ahead and read their [install
troubleshooting docs][nokogiri-troubleshooting]. These might help you
figure out the problem. Otherwise, keep reading.

[nokogiri-troubleshooting]: http://www.nokogiri.org/tutorials/installing_nokogiri.html

#### Xcode & GCC

Most native extensions use `gcc` to compile. This is the standard C
compiler that ships with Xcode. When this fails, that usually means
there's some issue with Xcode. Go through the following list, and try to
install Nokogiri each time:

```
gem install nokogiri
```

If the install succeeds, the problem has been fixed.

1. **Xcode isn't installed.** Make sure that you've downloaded Xcode
  from the App Store. If you already have, this isn't the problem (even
  if it's not updated).

2. **The Xcode Command Line tools aren't installed.** Install them:

  ```
  xcode-select --install
  ```

  This may just tell you the tools were already installed. If so, this
  isn't the problem.

3. **You haven't agreed to the Xcode license.** This will prevent you
  from using anything Xcode. Open up Xcode. If it prompts you to agree
  to the license, do. If it doesn't this isn't the problem.

4. **The Xcode Command Line Tools path is wrong.** Check it with:

  ```
  xcode-select --print-path
  ```

  You should get `/Applications/Xcode.app/Contents/Developer`. If you don't, go ahead and change it like so:

  ```
  xcode-select --switch /Applications/Xcode.app/Contents/Developer
  ```

5. **Xcode is out of date.** This is the last thing you should try
  because it usually isn't the problem and the download is over a
  Gigabyte, so it takes _forever_.

  Open up the App Store and download any updates for Xcode. Try
  installing Nokogiri again.

#### PostgreSQL

If the `pg` gem won't install and you're using Linux, look for something
about `libpq-fe.h`. You'll need to install `libpq-dev` using your
package manager. See this [stack overflow post][libpq-needed] for more info.

[libpq-needed]: http://stackoverflow.com/questions/6040583/cant-find-the-libpq-fe-h-header-when-trying-to-install-pg-gem
