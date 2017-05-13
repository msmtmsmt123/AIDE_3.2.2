import java.io.IOException;
import java.text.MessageFormat;
import org.eclipse.jgit.JGitText;

public class atb extends IOException {
    public atb(String str) {
        super(MessageFormat.format(JGitText.j6().checkoutConflictWithFile, new Object[]{str}));
    }

    public atb(String[] strArr) {
        super(MessageFormat.format(JGitText.j6().checkoutConflictWithFiles, new Object[]{j6(strArr)}));
    }

    private static String j6(String[] strArr) {
        StringBuilder stringBuilder = new StringBuilder();
        for (String str : strArr) {
            stringBuilder.append("\n");
            stringBuilder.append(str);
        }
        return stringBuilder.toString();
    }
}