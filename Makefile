all:
	@echo "Run 'make install' to install .gitconfig and pre-commit hook globally"

install:
	@for i in {4..1}; do j=$$((i+1)); [ -f ~/.gitconfig.$$i ] && cp -v ~/.gitconfig.{$$i,$$j} || true; done
	@[ -f ~/.gitconfig ] && cp -v ~/.gitconfig{,.1} || true
	@sed -e 's/^\(\s\+name\s\+=\s*\).*$$/\1$(shell git config --get user.name)/' \
	     -e 's/^\(\s\+email\s\+=\s*\).*$$/\1$(shell git config --get user.email)/' .gitconfig > ~/.gitconfig && \
	 echo "~/.gitconfig created"
	@sudo cp -v pre-commit /usr/share/git-core/templates/hooks/
