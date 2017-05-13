package android.support.v4.widget;

import android.view.animation.AccelerateDecelerateInterpolator;

class r extends AccelerateDecelerateInterpolator {
    private r() {
    }

    public float getInterpolation(float f) {
        return super.getInterpolation(Math.max(0.0f, (f - 0.5f) * 2.0f));
    }
}
