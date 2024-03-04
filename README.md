# sudokugame
java maven project


Deploy Steps

docker build -t sudoku . 

docker tag sudoku:latest 975280032379.dkr.ecr.ap-south-1.amazonaws.com/sudoku:latest

docker push 975280032379.dkr.ecr.ap-south-1.amazonaws.com/sudoku:latest 

Refresh Task in AWS for now, can automate using git actions to do the same.


