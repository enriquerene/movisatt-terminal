public class MoVisAttTerminal : Gtk.Application {
    public MoVisAttTerminal () {
        Object (
            application_id: "com.github.enriquerene.movisatt-terminal",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var button_hello = new Gtk.Button.with_label ("Click me!") {
            margin = 12,
            height = 30,
            width = 120
        };

        button_hello.clicked.connect (() => {
            button_hello.label = "Hello!";
            button_hello.sensitive = false;
        });
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "Hello world"
        };
        main_window.add (button_hello);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new MoVisAttTerminal ().run (args);
    }
}
