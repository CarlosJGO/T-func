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
                printf '# PRD — ¿Qué estamos construyendo y por qué?\n\n## Contexto\n<!-- Explica de dónde surge el proyecto y cuál es la situación que lo motiva. -->\n\n## Problema a resolver\n<!-- Describe el problema o necesidad concreta que el proyecto pretende resolver. -->\n\n## Usuario objetivo\n<!-- Explica quién utilizará el producto y para quién se está construyendo. -->\n\n## Objetivo\n<!-- Describe el resultado principal que se quiere conseguir con el proyecto. -->\n\n## Funciones principales\n<!-- Enumera las capacidades principales que debe ofrecer el producto. -->\n\n## MVP\n<!-- Define la versión mínima que debe funcionar para considerar que el producto cumple su propósito. -->\n\n## Fuera de alcance\n<!-- Anota funcionalidades, características o problemas que deliberadamente no forman parte de esta versión. -->\n\n## Criterios de éxito\n<!-- Define cómo se comprobará que el proyecto cumple su objetivo. -->\n' > "$file"
                ;;

            ARCHITECTURE.md)
                printf '# ARCHITECTURE — ¿Cómo va a funcionar por dentro?\n\n## Stack tecnológico\n<!-- Indica las tecnologías principales del proyecto: lenguajes, frameworks, librerías, herramientas, bases de datos y demás tecnologías relevantes. -->\n\n## Estructura del proyecto\n<!-- Explica cómo se organizan las carpetas y archivos y qué responsabilidad tiene cada parte importante. -->\n\n## Componentes\n<!-- Describe las partes principales del sistema y qué responsabilidad tiene cada una. -->\n\n## Flujo de datos\n<!-- Explica cómo se mueve la información por el sistema: de dónde sale, qué componentes la procesan y dónde termina. -->\n\n## Integraciones\n<!-- Describe servicios externos, APIs, programas, sistemas operativos u otros sistemas con los que el proyecto se comunica. -->\n\n## Persistencia de datos\n<!-- Explica qué información se guarda, dónde se guarda y cómo se organiza. Si no aplica, indícalo. -->\n\n## Ejecución y despliegue\n<!-- Explica cómo se ejecuta el proyecto y, cuando corresponda, cómo se instala o despliega. -->\n\n## Reproducibilidad\n<!-- Describe qué necesita otra persona para poder preparar el entorno y ejecutar el proyecto de forma equivalente. -->\n' > "$file"
                ;;

            DESIGN.md)
                printf '# DESIGN — ¿Cómo se debe ver y comportar?\n\n## Principios de diseño\n<!-- Define las ideas generales que deben guiar la apariencia y experiencia del producto. -->\n\n## Estilo visual\n<!-- Describe la estética general: minimalista, retro, profesional, espacial, etc. -->\n\n## Colores\n<!-- Define la paleta de colores y el uso previsto de cada color. -->\n\n## Tipografía\n<!-- Define las fuentes, tamaños, pesos y usos principales del texto. -->\n\n## Componentes\n<!-- Describe los elementos visuales reutilizables y cómo deben verse. -->\n\n## Layout y espaciado\n<!-- Explica cómo se organizan los elementos, tamaños, márgenes, alineación y distribución del espacio. -->\n\n## Interacciones y estados\n<!-- Describe qué ocurre cuando el usuario interactúa con los elementos y cómo se representan estados como carga, error, vacío o desactivado. -->\n\n## Animaciones y transiciones\n<!-- Define animaciones, transiciones y efectos de movimiento relevantes para la experiencia. -->\n\n## Requisitos de UX\n<!-- Anota requisitos relacionados con usabilidad, accesibilidad, navegación y experiencia del usuario. -->\n' > "$file"
                ;;

            RULES.md)
                printf '# RULES — ¿Qué debe y no debe hacer la IA al programar?\n\n## Regla de oro\n<!-- La regla principal que debe guiar cualquier modificación realizada por la IA. -->\n\n## Antes de modificar código\n<!-- Indica qué debe revisar o comprender la IA antes de realizar cambios. -->\n\n## La IA debe\n<!-- Comportamientos, prácticas y acciones que la IA debe seguir al trabajar en el proyecto. -->\n\n## La IA no debe\n<!-- Acciones, patrones o decisiones que la IA tiene prohibido realizar. -->\n\n## Convenciones\n<!-- Convenciones de nombres, formato, organización del código y otras prácticas del proyecto. -->\n\n## Arquitectura y dependencias\n<!-- Reglas sobre cómo modificar la arquitectura y cómo introducir, eliminar o utilizar dependencias. -->\n\n## Interfaz y UX\n<!-- Reglas que deben respetarse al modificar la interfaz o la experiencia del usuario. -->\n\n## Seguridad\n<!-- Reglas y precauciones relacionadas con autenticación, datos, secretos, entradas y otras cuestiones de seguridad. -->\n\n## Pruebas\n<!-- Indica qué debe probarse y qué requisitos debe cumplir el código antes de considerarse terminado. -->\n\n## Git\n<!-- Reglas relacionadas con commits, ramas, historial y otras prácticas de control de versiones. -->\n' > "$file"
                ;;

            TASKS.md)
                printf '# TASKS — ¿Qué hay que construir y en qué orden?\n<!-- Organiza aquí el trabajo real del proyecto. Las fases y tareas dependen del proyecto; esta estructura no es obligatoria. -->\n\n## Fase 1 — Título\n<!-- Define una etapa de trabajo y cambia su estado cuando corresponda: ⬜ Pendiente, 🔄 En progreso o ✅ Hecho. -->\n\n- [ ] Tarea\n\n## Fase 2 — Título\n\n- [ ] Tarea\n\n## Fase 3 — Título\n\n- [ ] Tarea\n\n## Completado\n<!-- Puedes utilizar esta sección para tareas terminadas que ya no necesiten permanecer dentro de sus fases originales. -->\n\n- [x] Tarea completada\n\n## Backlog / ideas futuras\n<!-- Ideas o trabajos que podrían hacerse más adelante, pero que no forman parte del trabajo actual. -->\n\n- [ ] Idea\n' > "$file"
                ;;

            DECISIONS.md)
                printf '# DECISIONS — ¿Por qué elegimos esto y no otra cosa?\n<!-- Registra decisiones importantes del proyecto cuyo motivo pueda ser necesario recordar posteriormente. -->\n\n## Decisiones técnicas\n<!-- Agrupa aquí decisiones relacionadas con tecnologías, arquitectura, herramientas o implementación. -->\n\n### ADR-001 — Título\n<!-- Cada ADR (Architecture Decision Record) documenta una decisión concreta. -->\n\n**Fecha:** YYYY-MM-DD\n\n**Decisión:**\n<!-- Explica qué se decidió hacer. -->\n\n**Motivo:**\n<!-- Explica por qué se tomó esta decisión. -->\n\n**Alternativas consideradas:**\n<!-- Indica qué otras opciones se evaluaron y por qué no fueron elegidas. -->\n\n**Consecuencias:**\n<!-- Explica qué ventajas, costes, limitaciones o efectos produce esta decisión. -->\n' > "$file"
                ;;

            MEMORY.md)
                printf '# MEMORY — ¿En qué punto va el proyecto ahora mismo?\n<!-- Mantén aquí el contexto vivo que una IA necesita conocer para continuar el trabajo correctamente. -->\n\n## Estado actual\n<!-- Describe brevemente en qué estado se encuentra actualmente el proyecto. -->\n\n## Trabajo realizado recientemente\n<!-- Resume los cambios o avances importantes realizados recientemente. -->\n\n## Trabajo actual\n<!-- Explica qué se está haciendo en este momento y qué contexto necesita la IA para continuarlo. -->\n\n## Problemas conocidos\n<!-- Registra problemas, errores, limitaciones o situaciones pendientes que la IA debe conocer. -->\n\n## Contexto importante\n<!-- Guarda información relevante que no encaje mejor en PRD, Architecture, Rules, Tasks o Decisions. -->\n\n## Próximo paso\n<!-- Indica cuál es el siguiente paso lógico para continuar el trabajo. No tiene que ser una tarea rígida. -->\n\n#notas\n<!-- Notas libres que puedan resultar útiles durante el desarrollo y que todavía no necesiten una sección propia. -->\n' > "$file"
                ;;
        esac

        echo "✓ Creado $file"
    done
}
