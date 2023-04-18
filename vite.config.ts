import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
export default defineConfig({
  build: {
    outDir: 'build',
  },
  plugins: [react()],
  server: {
    open: true,
    port: 3000,
  },
  // @ts-ignore: to address the types later
  test: {
    globals: true,
    environment: 'jsdom',
    setupFiles: './tests/setup.ts',
  },
})
