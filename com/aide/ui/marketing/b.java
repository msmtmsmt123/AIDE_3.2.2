package com.aide.ui.marketing;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.app.NotificationCompat.Builder;
import com.aide.ui.PackageUpgradedBroadcastReceiver;
import com.aide.ui.n;

public class b {

    final class 1 implements n {
        final /* synthetic */ String DW;
        final /* synthetic */ int FH;
        final /* synthetic */ PendingIntent Hw;
        final /* synthetic */ String j6;
        final /* synthetic */ int v5;

        1(String str, String str2, int i, PendingIntent pendingIntent, int i2) {
            this.j6 = str;
            this.DW = str2;
            this.FH = i;
            this.Hw = pendingIntent;
            this.v5 = i2;
        }

        public void j6(Context context) {
            Builder builder = new Builder(context);
            builder.j6(this.j6);
            builder.DW(this.DW);
            builder.j6(this.FH);
            builder.j6(this.Hw);
            builder.j6(true);
            if (VERSION.SDK_INT < 19) {
                builder.DW(5);
            } else {
                builder.DW(-1);
            }
            ((NotificationManager) context.getSystemService("notification")).notify(this.v5, builder.j6());
        }
    }

    public static void j6(Context context, int i, int i2, String str, String str2, PendingIntent pendingIntent) {
        PackageUpgradedBroadcastReceiver.j6(new 1(str, str2, i2, pendingIntent, i));
    }
}