
for file in "files"/*; do
    # 파일 이름에서 첫 번째 글자 가져오기
    first_char=$(basename "$file" | cut -c1)

    # 알파벳 폴더 설정
    target_folder="$(echo "$first_char" | tr '[:upper:]' '[:lower:]')"

    # 해당 알파벳 폴더로 파일 이동
    mv "$file" "${target_folder}/"
done
