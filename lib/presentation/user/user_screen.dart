import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hipstermeet/application/user/user_bloc.dart';
import 'package:hipstermeet/domain/user/entities/user_entity.dart';
import 'package:hipstermeet/infrastructure/user/repositories/user_repository.dart';
import 'package:hipstermeet/locator.dart';
import 'package:hipstermeet/presentation/core/scroll/no_record.dart';
import 'package:hipstermeet/presentation/core/scroll/scroll_list.dart';
import 'package:hipstermeet/presentation/core/utils/error_util.dart';

@RoutePage()
class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (_) => UserBloc(userRepository: locator<UserRepository>())
        ..add(const UserEvent.initialized())
        ..add(UserEvent.fetch()),
      child: _UserPrivate(),
    );
  }
}

class _UserPrivate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listenWhen: (previous, current) =>
          previous.userFailureOrSuccessOption !=
          current.userFailureOrSuccessOption,
      listener: (context, state) {
        state.userFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold((failure) {
            ErrorUtils.handleApiFailure(context, failure);
          }, (success) {}),
        );
      },
      buildWhen: (previous, current) =>
          previous.isFetching != current.isFetching,
      builder: (context, state) {
        return ScrollList<UserEntity>(
          noRecordFoundWidget: const NoRecordFound(title: 'No User found'),
          controller: ScrollController(),
          onRefresh: () =>
              context.read<UserBloc>().add(const UserEvent.fetch()),
          isLoading: state.isFetching,
          itemBuilder: (context, index, item) {
            return _UserItem(item: item);
          },
          items: state.users,
        );
      },
    );
  }
}

class _UserItem extends StatelessWidget {
  final UserEntity item;
  const _UserItem({required this.item});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        leading: CircleAvatar(
          radius: 40,
          backgroundImage: CachedNetworkImageProvider(item.avatar),
          backgroundColor: Colors.grey[200],
        ),
        title: Text(
          '${item.firstName} ${item.lastName}',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
