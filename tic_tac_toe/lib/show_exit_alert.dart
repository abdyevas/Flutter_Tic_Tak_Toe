import 'package:flutter/material.dart';
import 'package:tic_tac_toe/board_cell.dart';
import 'package:tic_tac_toe/styling/styled_button.dart';
import 'package:tic_tac_toe/styling/styled_text.dart';

class ShowExitAlert {
  void showExitDialog(
    BuildContext context,
    final void Function() onHome,
  ) {
    final colorScheme = Theme.of(context).colorScheme;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: colorScheme.inversePrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(
              width: 5.0,
            ),
          ),
          title: Center(
            child: StyledText(
              text: 'You sure? \nGame state will be lost...',
              textColor: colorScheme.inversePrimary,
              borderWidth: 4,
              fontSize: 20,
              shadow: BoardCell.shadow,
            ),
          ),
          actions: [
            Center(
              child: StyledButton(
                onPressButton: () {
                  onHome();
                  Navigator.pop(context);
                },
                overlayColor: colorScheme.inversePrimary,
                child: StyledText(
                  borderWidth: 3.0,
                    text: 'Yes',
                    fontSize: 15.0,
                    textColor: colorScheme.inversePrimary,
                    shadow: BoardCell.shadow),
              ),
            )
          ],
        );
      },
    );
  }
}
