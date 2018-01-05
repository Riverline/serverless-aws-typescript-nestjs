import {Controller, Get, HttpCode, Post} from '@nestjs/common';

@Controller('users')
export class UsersController {

    @HttpCode(201)
    @Post()
    create() {

    }

    @Get(':id')
    async getOne(): Promise<any> {
        return {};
    }

    @Get()
    async list(): Promise<any[]> {;
        return [];
    }

}
