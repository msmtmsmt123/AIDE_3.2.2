import java.io.IOException;

public class bsh extends IOException {
    private Throwable j6;

    public bsh(String str, Throwable th) {
        super(str);
        this.j6 = th;
    }

    public Throwable getCause() {
        return this.j6;
    }
}