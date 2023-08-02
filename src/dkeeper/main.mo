import List "mo:base/List";
import Debug "mo:base/Debug"

actor DKeeper {

  public type Note = {  //declaring Note type 
       title: Text;
       content: Text;
  };

  var notes: List.List<Note> = List.nil<Note>();  //declaring note Array in motoko with the name notes

  public func createNote(titleText: Text, contentText: Text){

    let newNote: Note = { // creating new Note and assigning value
      title = titleText;
      content = contentText;
    };

    notes := List.push(newNote, notes);
    Debug.print(debug_show(notes));

  };

  public query func readNotes(): async [Note] {
    return List.toArray(notes);
  };

  public func deleteNotes(noteTitle: Text) : async () {
    notes := List.filter<Note>(notes, func(x: Note){ noteTitle != x.title});
  };

}
