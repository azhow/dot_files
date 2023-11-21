TMUX_DIR=$(ls -la ~ | grep .tmux$)
if test not -z "$TMUX_DIR"
then
	echo "Time for setup!"
	# Copy config
	mv ~/.tmux.config ~/.tmux.config_bkp
	cp ./.tmux.config ~/.tmux.config

	# Unzip plugins
	set $PLUGINS_DEST_DIR=~/
	tar -xf ./plugins.tar.gz $PLUGINS_DEST_DIR
else
	echo "Y'all good to go!"
fi
