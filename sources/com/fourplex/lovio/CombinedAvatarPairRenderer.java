package com.fourplex.lovio;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import com.facebook.hermes.intl.Constants;
import com.reactcommunity.rndatetimepicker.RNConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: compiled from: CombinedWidget.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000fJB\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002J \u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J0\u0010 \u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002J\u0010\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0007H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082D¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/fourplex/lovio/CombinedAvatarPairRenderer;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "density", "", "backgroundColor", "", "primary", "secondary", Constants.SENSITIVITY_ACCENT, "white", "render", "Landroid/graphics/Bitmap;", "userAvatar", "partnerAvatar", "drawAvatar", "", "canvas", "Landroid/graphics/Canvas;", "paint", "Landroid/graphics/Paint;", "bitmap", "accentColor", "centerX", "centerY", "size", "drawCenterCropBitmap", "destination", "Landroid/graphics/RectF;", "drawPersonIcon", "dp", RNConstants.ARG_VALUE, "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class CombinedAvatarPairRenderer {
    private final int accent;
    private final int backgroundColor;
    private final float density;
    private final int primary;
    private final int secondary;
    private final int white;

    public CombinedAvatarPairRenderer(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.density = context.getResources().getDisplayMetrics().density;
        this.backgroundColor = Color.parseColor("#222222");
        this.primary = Color.parseColor("#FF3B5C");
        this.secondary = Color.parseColor("#FF9F43");
        this.accent = Color.parseColor("#8B5CF6");
        this.white = -1;
    }

    public final Bitmap render(Bitmap userAvatar, Bitmap partnerAvatar) {
        int iRoundToInt = MathKt.roundToInt(dp(100.0f));
        int iRoundToInt2 = MathKt.roundToInt(dp(56.0f));
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iRoundToInt, iRoundToInt2, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(1);
        float fDp = dp(56.0f);
        float f = iRoundToInt2 / 2.0f;
        float f2 = fDp / 2.0f;
        float fDp2 = dp(41.0f) + f2;
        drawAvatar(canvas, paint, userAvatar, this.primary, f2, f, fDp);
        drawAvatar(canvas, paint, partnerAvatar, this.secondary, fDp2, f, fDp);
        return bitmapCreateBitmap;
    }

    private final void drawAvatar(Canvas canvas, Paint paint, Bitmap bitmap, int accentColor, float centerX, float centerY, float size) {
        float f = size / 2.0f;
        float fDp = f - dp(3.0f);
        paint.reset();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(this.backgroundColor);
        canvas.drawCircle(centerX, centerY, f, paint);
        RectF rectF = new RectF(centerX - fDp, centerY - fDp, centerX + fDp, centerY + fDp);
        if (bitmap != null) {
            Path path = new Path();
            path.addCircle(centerX, centerY, fDp, Path.Direction.CW);
            canvas.save();
            canvas.clipPath(path);
            drawCenterCropBitmap(canvas, bitmap, rectF);
            canvas.restore();
            return;
        }
        paint.setShader(new LinearGradient(rectF.left, rectF.top, rectF.right, rectF.bottom, accentColor, this.accent, Shader.TileMode.CLAMP));
        canvas.drawCircle(centerX, centerY, fDp, paint);
        paint.setShader(null);
        drawPersonIcon(canvas, paint, centerX, centerY, fDp * 1.05f);
    }

    private final void drawCenterCropBitmap(Canvas canvas, Bitmap bitmap, RectF destination) {
        Rect rect;
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        float f = width / height;
        float fWidth = destination.width() / destination.height();
        if (f > fWidth) {
            float f2 = height * fWidth;
            int iRoundToInt = MathKt.roundToInt((width - f2) / 2.0f);
            rect = new Rect(iRoundToInt, 0, MathKt.roundToInt(iRoundToInt + f2), bitmap.getHeight());
        } else {
            float f3 = width / fWidth;
            int iRoundToInt2 = MathKt.roundToInt((height - f3) / 2.0f);
            rect = new Rect(0, iRoundToInt2, bitmap.getWidth(), MathKt.roundToInt(iRoundToInt2 + f3));
        }
        canvas.drawBitmap(bitmap, rect, destination, new Paint(3));
    }

    private final void drawPersonIcon(Canvas canvas, Paint paint, float centerX, float centerY, float size) {
        float f = 0.18f * size;
        float f2 = centerY + (0.1f * size);
        float f3 = centerY + (0.35f * size);
        float f4 = size * 0.42f;
        paint.reset();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(this.white);
        canvas.drawCircle(centerX, centerY - (0.2f * size), f, paint);
        Path path = new Path();
        float f5 = centerX - f4;
        path.moveTo(f5, f3);
        float f6 = centerY + f;
        float f7 = size * 0.25f;
        path.cubicTo(f5, f6, centerX - f7, f2, centerX, f2);
        float f8 = centerX + f4;
        path.cubicTo(centerX + f7, f2, f8, f6, f8, f3);
        path.close();
        canvas.drawPath(path, paint);
    }

    private final float dp(float value) {
        return value * this.density;
    }
}
