#!/bin/bash

set -euo pipefail

readonly GREEN='\033[0;32m'
readonly RED='\033[0;31m'
readonly NC='\033[0m'
readonly SERVICE_NAME="akitaonrails-blog"

slugify() {
    echo "$1" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g; s/-\+/-/g; s/^-\|-$//g'
}


print_message() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

new_post() {
    if [ -z "${1:-}" ]; then
        print_error "Título do post não especificado"
        print_message "Uso: ./scripts/dev.sh new-post 'Título do Post'"
        exit 1
    fi

    local title="$1"
    local date_path
    local slug
    local post_dir

    slug=$(slugify "$title")
    post_dir="content/posts/${slug}.md"

    print_message "Criando post: $post_dir"

    cat > "$post_dir" << EOF
---
title: "$title"
date: $(date +%Y-%m-%dT%H:%M:%S%z)
draft: false
description: "Descrição do post aqui"
tags: []
categories: []
---

Conteúdo do post aqui...

EOF

    print_message "Post criado em: $post_dir"
}


case "${1:-}" in
    new-post)
        new_post "${2:-}"
        ;;
    *)
        echo "Uso: ./scripts/dev.sh <comando> [argumentos]"
        echo ""
        echo "Comandos disponíveis:"
        echo "  new-post 'Título'  - Criar novo post"
        exit 1
        ;;
esac