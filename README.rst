proj1
#####

A new Flutter project.

:``~/Android/Sdk/emulator/emulator``\: CLI tool for android emulator

    :``~/Android/Sdk/emulator/emulator -list-avds``\: list the avds
    ``~/Android/Sdk/emulator/emulator -avd flutter_emulator_2 -netdelay none -netspeed full``\: run the app on target emulator

:``flutter devices``\: Check available devices on client
:``flutter run``\: run the flutter app on emulator, press r to reload src
:``flutter pub``\: flutter package manager

   :``flutter pub get``\: pull the package into project

   :``flutter pub add english_words``\: add pacakge and writes to ``pubsepc.yaml``

Add Stateful widget
-------------------

상태없는 위젯은 immutable하다.
   그들의 속성은 변할 수 없고, 모든 값은 ``final``\이다.

| Stateful widgets는 위젯의 생명주기 동안 상태를 변경할 수 있다.
| 상태가 가진 위젯을 만들기 위해서는 2개의 클래스가 필요하다.

   :``class StatefulWidget``\: State의 인스턴스를 생성한다. 불변의 것이고 삭제후 재생성가능하다.
   :``class State``\: 위젯의 생명주기 동안 유지된다.

RandomWords Stateful widget 만들기
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: dart

   class RandomWords extends StatefulWidget {
      const RandomWords({super.key});

      @override
      State<RandomWords> createState() => _RandomWordsState();
   }

   class _RandomWordsState extends State<RandomWords> {
      @override
      Widget build(BuildContext context) {
         return Container();
      }
   }

| ``RandomWords``\를 widget의 명칭으로 생성하자.
| IDE는 자동으로 state를 만들고 _RandomWordsState라고 명칭할 것이다.
| 대부분의 코드는 state 내부에 존재하며 RandomWords widget의 상태를 유지한다.
| 이 클래스는 단어의 목록을 생성해 저장하고 지속적으로 사용될 것이다.

