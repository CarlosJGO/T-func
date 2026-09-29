libreto() {
    local files=(
        PRD.md
        ARCHITECTURE.md
        DESIGN.md
        RULES.md
        TASKS.md
        DECISIONS.md
        MEMORY.md
    )

    local file

    for file in "${files[@]}"; do
        if [[ -e "$file" ]]; then
            echo "· Ya existe $file"
            continue
        fi

        case "$file" in
            PRD.md)
                printf '# PRD\n\n## Problema\n\n## Usuario objetivo\n\n## Funciones principales\n\n## Objetivo\n' > "$file"
                ;;

            ARCHITECTURE.md)
                printf '# Architecture\n\n## Stack\n\n## Estructura\n\n## Componentes\n\n## Flujo de datos\n' > "$file"
                ;;

            DESIGN.md)
                printf '# Design\n\n## Estilo visual\n\n## Colores\n\n## Tipografía\n\n## Componentes\n\n## Animaciones\n' > "$file"
                ;;

            RULES.md)
                printf '# Rules\n\n## La IA debe\n\n## La IA no debe\n\n## Convenciones\n' > "$file"
                ;;

            TASKS.md)
                printf '# Tasks\n\n## Ahora\n\n- [ ]\n\n## Después\n\n- [ ]\n\n## Completado\n\n- [ ]\n' > "$file"
                ;;

            DECISIONS.md)
                printf '# Decisions\n\n## Decisiones técnicas\n\n### YYYY-MM-DD — Título\n\n**Decisión:**\n\n**Motivo:**\n\n**Alternativas consideradas:**\n' > "$file"
                ;;

            MEMORY.md)
                printf '# Memory\n\n## Estado actual\n\n## Último trabajo realizado\n\n## Problemas conocidos\n\n## Próximo paso\n' > "$file"
                ;;
        esac

        echo "✓ Creado $file"
    done
}
