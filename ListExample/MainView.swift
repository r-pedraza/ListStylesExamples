import SwiftUI

struct MainView: View {
    @State private var listTag: Int = ListCustomType.automatic.tag
    @StateObject var listViewModel = ListViewModel(itemCollection: ItemCollection())

    var body: some View {
        NavigationView {
            VStack {
                Picker("Select List styles", selection: $listTag) {
                    Text("Automatic").tag(ListCustomType.automatic.tag)
                    Text("Plain").tag(ListCustomType.plain.tag)
                    Text("Grouped").tag(ListCustomType.grouped.tag)
                    Text("SideBar").tag(ListCustomType.sideBar.tag)
                }
                .pickerStyle(.segmented)
                
                switch listTag {
                case 0:
                    ListAutomaticView()
                case 1:
                    ListPlainView()
                case 2:
                    ListGroupedView()
                case 3:
                    ListSideBarView()
                default:
                    ListAutomaticView()
                }
            }
            .environmentObject(listViewModel)
            .navigationTitle("Lists")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(listViewModel: PreviewUtils.listViewModelMock)
    }
}
