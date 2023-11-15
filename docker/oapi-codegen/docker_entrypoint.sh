#!/bin/bash

# 初期化
input=""
output=""
package=""

# 引数の解析
while [[ $# -gt 0 ]]; do
    case $1 in
        -input)
            input="$2"
            shift # 引数名をスキップ
            shift # 値をスキップ
            ;;
        -output)
            output="$2"
            shift
            shift
            ;;
        -package)
            package="$2"
            shift
            shift
            ;;
        -generate)
            generate="$2"
            shift
            shift
            ;;
        *)
            echo "Invalid option '$1'"
            exit 1
            ;;
    esac
done

oapi-codegen -generate $generate -package $package $input > $output