if command -v rokit >/dev/null 2>&1; then
else
    echo "Install start rokit"

    case "$(uname -s)" in
        Linux*)
            curl -sSf https://raw.githubusercontent.com/rojo-rbx/rokit/main/scripts/install.sh | bash
            ;;
        Darwin*)
            curl -sSf https://raw.githubusercontent.com/rojo-rbx/rokit/main/scripts/install.sh | bash
            ;;
        CYGWIN*|MINGW*|MSYS*)
            Invoke-RestMethod https://raw.githubusercontent.com/rojo-rbx/rokit/main/scripts/install.ps1 | Invoke-Expression
            ;;
        *)
            echo "Unknown OS: $(uname -s)"
            ;;
    esac
fi

rokit add --global rojo-rbx/rojo
rokit add --global JohnnyMorganz/luau-lsp
rokit add --global JohnnyMorganz/StyLua
rokit add --global Kampfkarren/selene