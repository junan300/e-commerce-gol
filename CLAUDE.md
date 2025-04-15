# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build Commands
- Development: `npm run dev`
- Build: `npm run build`
- Start: `npm run start`
- Lint: `npm run lint`

## Code Style Guidelines
- Use TypeScript with strict typing throughout
- Follow Next.js patterns and conventions (v15.3.0+)
- Use TailwindCSS for styling
- Components organized by feature (cart, checkout, product)
- Use React context for state management (see CartContext.tsx)
- Use ES modules with explicit imports
- Path aliases: `@/*` maps to `./src/*`
- Component naming: PascalCase
- File naming: PascalCase for components, camelCase for utilities
- Run linting before submitting changes

Always maintain the existing project structure and patterns when adding new code.