function libreto
    set -l files \
        PRD.md \
        ARCHITECTURE.md \
        DESIGN.md \
        RULES.md \
        TASKS.md \
        DECISIONS.md \
        MEMORY.md

    for file in $files
        if test -e $file
            echo "· Ya existe $file"
            continue
        end

        switch $file
            case PRD.md
                printf '# PRD\n\n## Problema\n\n## Usuario objetivo\n\n## Funciones principales\n\n## Objetivo\n' > $file

            case ARCHITECTURE.md
                printf '# Architecture\n\n## Stack\n\n## Estructura\n\n## Componentes\n\n## Flujo de datos\n' > $file

            case DESIGN.md
                printf '# Design\n\n## Estilo visual\n\n## Colores\n\n## Tipografía\n\n## Componentes\n\n## Animaciones\n' > $file

            case RULES.md
                printf '# Rules\n\n## La IA debe\n\n## La IA no debe\n\n## Convenciones\n' > $file

            case TASKS.md
                printf '# Tasks\n\n## Ahora\n\n- [ ]\n\n## Después\n\n- [ ]\n\n## Completado\n\n- [ ]\n' > $file

            case DECISIONS.md
                printf '# Decisions\n\n## Decisiones técnicas\n\n### YYYY-MM-DD — Título\n\n**Decisión:**\n\n**Motivo:**\n\n**Alternativas consideradas:**\n' > $file

            case MEMORY.md
                printf '# Memory\n\n## Estado actual\n\n## Último trabajo realizado\n\n## Problemas conocidos\n\n## Próximo paso\n' > $file
        end

        echo "✓ Creado $file"
    end
end
