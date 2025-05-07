set hlsearch "검색어 하이라이팅
set nu "줄 번호
set autoindent "자동 들여쓰기
set ts=4 "tab 사이즈
set showmatch "괄호 하이라이팅
set ruler "현재 커서 위치 표시

"파일 인코딩 한국어
if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif
