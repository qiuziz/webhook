
PATH_NAME = '';

while getopts ":pathName:" opt
do
    case $opt in
        pathName)
        $PATH_NAME = $OPTARG
        ;;
        ?)
        echo "未知参数"
        exit 1;;
    esac
done

BASE_PATH = '/home/www/';

cd $BASE_PATH/$PATH_NAME;
# 切换到构建分支
git checkout deploy
# 拉取最新代码
git pull
# 构建
npm run build