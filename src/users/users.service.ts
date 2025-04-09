import { ConflictException, Injectable } from '@nestjs/common';
import { CreateUserDto } from './dtos/create-user.dto';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class UsersService {
  constructor(private readonly prismaService: PrismaService) {}
  async createOne({ email, hashedPassword }: CreateUserDto) {
    const userByEmail = await this.prismaService.user.findUnique({ where: { email } });

    if (userByEmail) {
      throw new ConflictException('User with this email is already existing');
    }

    const createUser = await this.prismaService.user.create({
      data: {
        email,
        hashedPassword,
      },
    });
    return createUser;
  }
}
