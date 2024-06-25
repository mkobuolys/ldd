import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_deck/flutter_deck.dart';

import 'cubit/favorite_button_cubit.dart';

class OptimisticStateDemoSlide extends FlutterDeckSlideWidget {
  const OptimisticStateDemoSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/optimistic-state-demo',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    const favoritingService = FavoritingService();

    return FlutterDeckSlide.blank(
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => BasicFavoriteButtonCubit(
              favoritingService: favoritingService,
            ),
          ),
          BlocProvider(
            create: (_) => OptimisticFavoriteButtonCubit(
              favoritingService: favoritingService,
            ),
          ),
        ],
        child: const _FavoriteButtonDemo(),
      ),
    );
  }
}

class _FavoriteButtonDemo extends StatelessWidget {
  const _FavoriteButtonDemo();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Column(
            children: [
              const Expanded(
                flex: 2,
                child: _FavoriteButton<BasicFavoriteButtonCubit>(),
              ),
              Expanded(
                flex: 3,
                child: Image.asset(
                  'assets/basic_favorite_button_cubit.png',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            children: [
              const Expanded(
                flex: 2,
                child: _FavoriteButton<OptimisticFavoriteButtonCubit>(),
              ),
              Expanded(
                flex: 3,
                child: Image.asset(
                  'assets/optimistic_favorite_button_cubit.png',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _FavoriteButton<T extends FavoriteButtonCubit> extends StatefulWidget {
  const _FavoriteButton();

  @override
  State<_FavoriteButton<T>> createState() => _FavoriteButtonState<T>();
}

class _FavoriteButtonState<T extends FavoriteButtonCubit>
    extends State<_FavoriteButton<T>> {
  late ConfettiController _controller;

  @override
  void initState() {
    super.initState();

    _controller = ConfettiController(
      duration: const Duration(milliseconds: 300),
    );
  }

  void _onPressed(bool favorited) =>
      favorited ? context.read<T>().unfavorite() : context.read<T>().favorite();

  Path _drawHeart(Size size) => Path()
    ..moveTo(0.5 * size.width, size.height * 0.35)
    ..cubicTo(
      0.2 * size.width,
      size.height * 0.1,
      -0.25 * size.width,
      size.height * 0.6,
      0.5 * size.width,
      size.height,
    )
    ..moveTo(0.5 * size.width, size.height * 0.35)
    ..cubicTo(
      0.8 * size.width,
      size.height * 0.1,
      1.25 * size.width,
      size.height * 0.6,
      0.5 * size.width,
      size.height,
    );

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<T, FavoriteButtonState>(
      listener: (context, state) {
        final FavoriteButtonState(:status, :favorited) = state;

        if (status == FavoriteButtonStatus.success && favorited) {
          _controller.play();
        }
      },
      builder: (context, state) {
        final FavoriteButtonState(:status, :favorited) = state;

        return Center(
          child: ConfettiWidget(
            blastDirectionality: BlastDirectionality.explosive,
            confettiController: _controller,
            createParticlePath: _drawHeart,
            maximumSize: const Size(64, 64),
            minimumSize: const Size(48, 48),
            gravity: 0.3,
            maxBlastForce: 25,
            colors: const [Colors.red],
            child: IconButton(
              onPressed: status != FavoriteButtonStatus.inProgress
                  ? () => _onPressed(favorited)
                  : null,
              icon: Icon(
                favorited ? Icons.favorite : Icons.favorite_border,
                color: favorited ? Colors.red : null,
                size: 128,
              ),
            ),
          ),
        );
      },
    );
  }
}
