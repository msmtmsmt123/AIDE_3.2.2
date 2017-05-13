import java.io.File;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.LinkedList;
import java.util.List;
import org.eclipse.jgit.JGitText;

public class avw {
    private File DW;
    private File FH;
    private List Hw;
    private List VH;
    private File Zo;
    private boolean gn;
    private bkx j6;
    private awa tp;
    private boolean u7;
    private File v5;

    private static boolean j6(byte[] bArr) {
        if (bArr.length >= 9 && bArr[0] == 103 && bArr[1] == (byte) 105 && bArr[2] == 116 && bArr[3] == 100 && bArr[4] == (byte) 105 && bArr[5] == 114 && bArr[6] == 58 && bArr[7] == 32) {
            return true;
        }
        return false;
    }

    public avw j6(bkx bkx) {
        this.j6 = bkx;
        return Mr();
    }

    public bkx j6() {
        return this.j6;
    }

    public avw j6(File file) {
        this.DW = file;
        this.tp = null;
        return Mr();
    }

    public File DW() {
        return this.DW;
    }

    public avw DW(File file) {
        this.FH = file;
        return Mr();
    }

    public File FH() {
        return this.FH;
    }

    public avw FH(File file) {
        if (file != null) {
            if (this.Hw == null) {
                this.Hw = new LinkedList();
            }
            this.Hw.add(file);
        }
        return Mr();
    }

    public File[] Hw() {
        List list = this.Hw;
        if (list == null) {
            return null;
        }
        return (File[]) list.toArray(new File[list.size()]);
    }

    public avw v5() {
        v5(null);
        Hw(null);
        this.gn = true;
        return Mr();
    }

    public boolean Zo() {
        return this.gn;
    }

    public avw j6(boolean z) {
        this.u7 = z;
        return Mr();
    }

    public boolean VH() {
        return this.u7;
    }

    public avw Hw(File file) {
        this.Zo = file;
        return Mr();
    }

    public File gn() {
        return this.Zo;
    }

    public avw v5(File file) {
        this.v5 = file;
        return Mr();
    }

    public File u7() {
        return this.v5;
    }

    public avw tp() {
        return j6(blx.FH());
    }

    public avw j6(blx blx) {
        String j6;
        int i = 0;
        if (DW() == null) {
            j6 = blx.j6("GIT_DIR");
            if (j6 != null) {
                j6(new File(j6));
            }
        }
        if (FH() == null) {
            j6 = blx.j6("GIT_OBJECT_DIRECTORY");
            if (j6 != null) {
                DW(new File(j6));
            }
        }
        if (Hw() == null) {
            j6 = blx.j6("GIT_ALTERNATE_OBJECT_DIRECTORIES");
            if (j6 != null) {
                for (String file : j6.split(File.pathSeparator)) {
                    FH(new File(file));
                }
            }
        }
        if (gn() == null) {
            j6 = blx.j6("GIT_WORK_TREE");
            if (j6 != null) {
                Hw(new File(j6));
            }
        }
        if (u7() == null) {
            j6 = blx.j6("GIT_INDEX_FILE");
            if (j6 != null) {
                v5(new File(j6));
            }
        }
        if (this.VH == null) {
            j6 = blx.j6("GIT_CEILING_DIRECTORIES");
            if (j6 != null) {
                String[] split = j6.split(File.pathSeparator);
                int length = split.length;
                while (i < length) {
                    Zo(new File(split[i]));
                    i++;
                }
            }
        }
        return Mr();
    }

    public avw Zo(File file) {
        if (file != null) {
            if (this.VH == null) {
                this.VH = new LinkedList();
            }
            this.VH.add(file);
        }
        return Mr();
    }

    public avw EQ() {
        J0();
        J8();
        Ws();
        QX();
        return Mr();
    }

    public axq we() {
        axq bbt = new bbt(EQ());
        if (!VH() || bbt.FH().j6()) {
            return bbt;
        }
        throw new atz(DW());
    }

    protected void J0() {
        if (DW() == null && gn() == null) {
            throw new IllegalArgumentException(JGitText.j6().eitherGitDirOrWorkTreeRequired);
        }
    }

    protected void J8() {
        if (DW() == null && gn() != null) {
            File file = new File(gn(), ".git");
            if (file.isFile()) {
                byte[] j6 = blg.j6(file);
                if (j6(j6)) {
                    int Hw = blq.Hw(j6, 8);
                    if (j6[Hw - 1] == 10) {
                        Hw--;
                    }
                    if (Hw == 8) {
                        throw new IOException(MessageFormat.format(JGitText.j6().invalidGitdirRef, new Object[]{file.getAbsolutePath()}));
                    }
                    String FH = blq.FH(j6, 8, Hw);
                    file = new File(FH);
                    if (file.isAbsolute()) {
                        j6(file);
                        return;
                    } else {
                        j6(new File(gn(), FH).getCanonicalFile());
                        return;
                    }
                }
                throw new IOException(MessageFormat.format(JGitText.j6().invalidGitdirRef, new Object[]{file.getAbsolutePath()}));
            }
            j6(file);
        }
    }

    protected void Ws() {
        if (j6() == null) {
            j6(bkx.j6);
        }
        if (!Zo() && gn() == null) {
            Hw(U2());
        }
        if (!Zo()) {
            if (DW() == null) {
                j6(gn().getParentFile());
            }
            if (u7() == null) {
                v5(new File(DW(), "index"));
            }
        }
    }

    protected void QX() {
        if (FH() == null && DW() != null) {
            DW(j3().j6(DW(), "objects"));
        }
    }

    protected awa XL() {
        if (this.tp == null) {
            this.tp = aM();
        }
        return this.tp;
    }

    protected awa aM() {
        if (DW() == null) {
            return new awa();
        }
        awa bbo = new bbo(j3().j6(DW(), "config"), j3());
        try {
            bbo.VH();
            return bbo;
        } catch (atd e) {
            throw new IllegalArgumentException(MessageFormat.format(JGitText.j6().repositoryConfigFileInvalid, new Object[]{r1.getAbsolutePath(), e.getMessage()}));
        }
    }

    private File U2() {
        awa XL = XL();
        String j6 = XL.j6("core", null, "worktree");
        if (j6 != null) {
            return j3().j6(DW(), j6);
        }
        if (XL.j6("core", null, "bare") != null) {
            if (!XL.j6("core", "bare", true)) {
                return DW().getParentFile();
            }
            v5();
            return null;
        } else if (DW().getName().equals(".git")) {
            return DW().getParentFile();
        } else {
            v5();
            return null;
        }
    }

    protected bkx j3() {
        return j6() != null ? j6() : bkx.j6;
    }

    protected final avw Mr() {
        return this;
    }
}