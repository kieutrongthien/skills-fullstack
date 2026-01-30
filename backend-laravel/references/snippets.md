# Laravel snippets

## API route + controller
```php
Route::middleware('auth:sanctum')->group(function () {
    Route::post('/posts', [PostController::class, 'store']);
});
```

## Form Request validation
```php
class StorePostRequest extends FormRequest {
    public function rules(): array {
        return ['title' => 'required|string', 'body' => 'required|string'];
    }
}
```

## Controller method
```php
public function store(StorePostRequest $request) {
    $post = $this->service->create($request->validated());
    return new PostResource($post);
}
```

## Queue/job basics
- Configure queue driver per environment.
- Dispatch jobs for slow work; supervise workers in prod; monitor failed jobs.

## Caching notes
- Use tags/remember for hot queries; invalidate on writes; keep TTLs explicit.
