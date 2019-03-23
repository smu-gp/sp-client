import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sp_client/bloc/folder/folder_event.dart';
import 'package:sp_client/bloc/folder/folder_state.dart';
import 'package:sp_client/model/folder.dart';
import 'package:sp_client/repository/repository.dart';

class FolderBloc extends Bloc<FolderEvent, FolderState> {
  final FolderRepository folderRepository;

  FolderBloc({@required this.folderRepository})
      : assert(folderRepository != null);

  @override
  FolderState get initialState => FolderLoading();

  @override
  Stream<FolderState> mapEventToState(
    FolderState currentState,
    FolderEvent event,
  ) async* {
    if (event is LoadFolder) {
      yield* _mapLoadFolderToState();
    } else if (event is AddFolder) {
      yield* _mapAddFolderToState(currentState, event);
    } else if (event is UpdateFolder) {
      yield* _mapUpdateFolderToState(currentState, event);
    } else if (event is DeleteFolder) {
      yield* _mapDeleteFolderToState(currentState, event);
    }
  }

  Stream<FolderState> _mapLoadFolderToState() async* {
    try {
      final folders = await folderRepository.readAll();
      yield FolderLoaded(folders);
    } catch (_) {
      yield FolderNotLoaded();
    }
  }

  Stream<FolderState> _mapAddFolderToState(
    FolderState currentState,
    AddFolder event,
  ) async* {
    if (currentState is FolderLoaded) {
      final List<Folder> updatedFolders = List.from(currentState.folders)
        ..add(event.folder);
      yield FolderLoaded(updatedFolders);
      folderRepository.create(event.folder);
    }
  }

  Stream<FolderState> _mapUpdateFolderToState(
    FolderState currentState,
    UpdateFolder event,
  ) async* {
    if (currentState is FolderLoaded) {
      final List<Folder> updatedFolders = currentState.folders.map((folder) {
        return folder.id == event.updatedFolder.id
            ? event.updatedFolder
            : folder;
      }).toList();
      yield FolderLoaded(updatedFolders);
      folderRepository.update(event.updatedFolder);
    }
  }

  Stream<FolderState> _mapDeleteFolderToState(
    FolderState currentState,
    DeleteFolder event,
  ) async* {
    if (currentState is FolderLoaded) {
      final List<Folder> updatedFolders = currentState.folders
          .where((folder) => folder.id != event.folderId)
          .toList();
      yield FolderLoaded(updatedFolders);
      folderRepository.delete(event.folderId);
    }
  }
}