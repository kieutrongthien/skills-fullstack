# React snippets

## Functional component with data fetch
```tsx
import { useEffect, useState } from 'react'

export function Users() {
  const [users, setUsers] = useState<User[]>([])
  const [loading, setLoading] = useState(false)

  useEffect(() => {
    setLoading(true)
    fetch('/api/users')
      .then((r) => r.json())
      .then(setUsers)
      .finally(() => setLoading(false))
  }, [])

  if (loading) return <p>Loading...</p>
  return <ul>{users.map((u) => <li key={u.id}>{u.name}</li>)}</ul>
}
```

## Form pattern
- Use `react-hook-form` + Zod/Yup; controlled inputs for critical fields.
- Show per-field errors; disable submit while pending; handle server errors at form root.

## HTTP client notes
- Centralize fetch/axios with interceptors for auth and error normalization.
- Prefer React Query for server state; cache keys and invalidation are first-class.

## Routing pattern
- `createBrowserRouter` with lazy route elements, wrapped in `Suspense` + error boundaries.
