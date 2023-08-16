function spec() {
	case "$1" in
		"ExtrapolateGW")
			python $SCRIPTS_PATH/functions/spec/ExtrapolateGW.py $2
			;;
		
		"PlotGW")
			python $SCRIPTS_PATH/functions/spec/PlotGW.py $2
			;;

		"PlotMetricError")
			python $SCRIPTS_PATH/functions/spec/PlotMetricError.py $2
			;;

		*)
			singularity exec --env APPEND_PATH=$SPEC_HOME/Support/bin $SPEC_IMAGE_DIR/spec.sif $@
			;;
	esac
}
