import 'package:firebase_auth/firebase_auth.dart';
import 'package:talk/data/repositories/chat_repo.dart';
import 'package:talk/domain/usecases/firebase_auth.dart';
import 'package:talk/domain/usecases/get_messages.dart';
import 'package:talk/ui/screens/messages/message_viewmodel.dart';

abstract class MessageViewModelFactory {
  static MessageViewModel make() {
    return MessageViewModel(
      getMessagesUseCase: GetMessagesUseCaseImpl(
        chatRepository: ChatRepositoryImpl(),
      ), firebaseAuthUseCase: FirebaseAuthUseCaseImpl(firebaseAuth: FirebaseAuth.instance),
    );
  }
}
