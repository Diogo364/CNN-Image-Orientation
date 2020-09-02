COMPARE_WITH := './target/predictions.csv'

eval:
	python eval.py ./target/predictions.csv ${COMPARE_WITH}