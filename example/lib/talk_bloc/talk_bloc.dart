import 'package:bloc/bloc.dart';
import 'bloc.dart';
import 'package:kakao_flutter_mirror_example/talk_bloc/talk_event.dart';
import 'package:kakao_flutter_mirror/talk.dart';

class TalkBloc extends Bloc<TalkEvent, TalkState> {
  final TalkApi _talkApi;
  TalkBloc({TalkApi talkApi}) : _talkApi = talkApi ?? TalkApi.instance;

  @override
  TalkState get initialState => TalkprofileUninitialized();

  @override
  Stream<TalkState> mapEventToState(
    TalkEvent event,
  ) async* {
    if (event is FetchTalkProfile) {
      try {
        final profile = await _talkApi.profile();
        yield TalkProfileFetched(profile);
      } catch (e) {
        yield TalkProfileFetchFailed(e);
      }
    }
  }
}
