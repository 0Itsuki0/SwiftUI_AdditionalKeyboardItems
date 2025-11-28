
import SwiftUI

struct KeyboardActionDemo: View {
    @FocusState private var focused
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 36) {
                TextField("", text: .constant("Without Items"))
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .foregroundStyle(.secondary)
                    .background(RoundedRectangle(cornerRadius: 8).fill(.clear).stroke(.gray, style: .init()))

                TextField("", text: .constant("With Items"))
                    .focused($focused)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .foregroundStyle(.secondary)
                    .background(RoundedRectangle(cornerRadius: 8).fill(.clear).stroke(.gray, style: .init()))

            }
            .toolbar(content: {
                    ToolbarItemGroup(placement: .keyboard, content: {
                        if focused {
                            Button(action: {}) {
                                Image(systemName: "heart.fill")
                            }
                            
                            Text("Enter Something!")
                                .fixedSize()
                            
                            Spacer()
                            
                            Button(action: {}) {
                                Image(systemName: "heart.fill")
                            }
                        }
                    })
            })
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.yellow.opacity(0.2))
            .navigationTitle("Keyboard Actions")
        }
            
    }
}
