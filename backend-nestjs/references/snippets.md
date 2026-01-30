# NestJS snippets

## DTO with validation
```ts
import { IsEmail, IsString } from 'class-validator'

export class CreateUserDto {
  @IsEmail()
  email!: string

  @IsString()
  password!: string
}
```

## Controller + service
```ts
@Controller('users')
export class UsersController {
  constructor(private readonly service: UsersService) {}

  @Post()
  create(@Body() dto: CreateUserDto) {
    return this.service.create(dto)
  }
}
```

## Error filter (sketch)
- Use `@Catch(HttpException)`; shape response with `statusCode`, `message`, `timestamp`, `path`.
- Attach correlation/request ID from context for tracing.

## Config pattern
- Use `@nestjs/config`; validate env via Joi; inject `ConfigService` instead of reading `process.env` directly.
