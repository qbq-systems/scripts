#!/bin/bash

pnpm create svelte@latest .
pnpx svelte-add@latest tailwindcss
pnpm i
pnpm i -D ava esbuild flowbite flowbite-svelte classnames @popperjs/core
pnpm i ajv ajv-formats dotenv colors winston