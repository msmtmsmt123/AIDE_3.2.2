import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class re$2 implements OnClickListener {
    final /* synthetic */ re DW;
    final /* synthetic */ Activity j6;

    re$2(re reVar, Activity activity) {
        this.DW = reVar;
        this.j6 = activity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        AlertDialog alertDialog = (AlertDialog) dialogInterface;
        this.DW.DW(alertDialog);
        alertDialog.dismiss();
        this.DW.DW(this.j6, this.DW.FH(alertDialog), this.DW.v5(alertDialog));
    }
}