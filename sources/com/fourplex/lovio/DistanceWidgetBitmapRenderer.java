package com.fourplex.lovio;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.os.Bundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.canhub.cropper.CropImageOptionsKt;
import com.facebook.hermes.intl.Constants;
import com.facebook.react.uimanager.ViewProps;
import com.reactcommunity.rndatetimepicker.RNConstants;
import java.io.File;
import java.text.NumberFormat;
import java.time.Instant;
import java.time.format.DateTimeParseException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: compiled from: DistanceWidget.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\"\u0010\u0015\u001a\u00020\f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\fH\u0002J(\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007H\u0002J8\u0010!\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0007H\u0002J0\u0010%\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u0007H\u0002J0\u0010)\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0007H\u0002J8\u0010,\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u0007H\u0002J \u0010/\u001a\u0002002\u0006\u0010*\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u0007H\u0002JB\u00101\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u00102\u001a\u0004\u0018\u00010\u00122\u0006\u00103\u001a\u00020\f2\u0006\u0010*\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u0007H\u0002J0\u00104\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u0007H\u0002J\b\u00105\u001a\u000206H\u0002J\b\u00107\u001a\u000208H\u0002J\u0012\u00109\u001a\u0004\u0018\u00010\u00122\u0006\u0010:\u001a\u00020\u0017H\u0002J\u0010\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u000206H\u0002J \u0010>\u001a\u00020\u00172\u0006\u0010=\u001a\u0002062\u0006\u0010?\u001a\u0002082\u0006\u0010@\u001a\u00020<H\u0002J\u0018\u0010A\u001a\u00020\u00072\u0006\u0010=\u001a\u0002062\u0006\u0010@\u001a\u00020<H\u0002J\u0017\u0010B\u001a\u00020\u00072\b\u0010C\u001a\u0004\u0018\u00010DH\u0002¢\u0006\u0002\u0010EJ\u0017\u0010F\u001a\u00020G2\b\u0010C\u001a\u0004\u0018\u00010DH\u0002¢\u0006\u0002\u0010HJ\u001f\u0010I\u001a\u00020\u00172\b\u0010C\u001a\u0004\u0018\u00010D2\u0006\u0010?\u001a\u000208H\u0002¢\u0006\u0002\u0010JJ\b\u0010K\u001a\u000206H\u0002J\u0012\u0010L\u001a\u0004\u0018\u00010M2\u0006\u0010N\u001a\u00020\u0017H\u0002J\u0014\u0010O\u001a\u0004\u0018\u00010P2\b\u0010N\u001a\u0004\u0018\u00010\u0017H\u0002J\u0016\u0010Q\u001a\u0004\u0018\u00010\u0017*\u00020M2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u001b\u0010R\u001a\u0004\u0018\u00010D*\u00020M2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002¢\u0006\u0002\u0010SJ\u001b\u0010T\u001a\u0004\u0018\u00010G*\u00020M2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002¢\u0006\u0002\u0010UJ\u0010\u0010V\u001a\u00020\u00072\u0006\u0010W\u001a\u00020\u0007H\u0002J\u0010\u0010X\u001a\u00020\u00072\u0006\u0010W\u001a\u00020\u0007H\u0002J \u0010Y\u001a\u00020\u00072\u0006\u0010Z\u001a\u00020\u00072\u0006\u0010[\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006]"}, d2 = {"Lcom/fourplex/lovio/DistanceWidgetBitmapRenderer;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "density", "", "scaledDensity", "boldTypeface", "Landroid/graphics/Typeface;", "backgroundColor", "", "white", "primary", "secondary", Constants.SENSITIVITY_ACCENT, "render", "Landroid/graphics/Bitmap;", "options", "Landroid/os/Bundle;", "readWidgetOptionDp", "key", "", "fallback", "drawBackground", "", "canvas", "Landroid/graphics/Canvas;", "paint", "Landroid/graphics/Paint;", "width", "height", "drawTitle", "title", ViewProps.TOP, "textSizeSp", "drawDashes", "startX", "endX", "centerY", "drawHearts", "centerX", "scale", "drawOutlinedHeart", "size", "outlinePadding", "createHeartPath", "Landroid/graphics/Path;", "drawAvatar", "bitmap", "accentColor", "drawPersonIcon", "loadPayload", "Lcom/fourplex/lovio/DistancePayload;", "loadUnitPreference", "Lcom/fourplex/lovio/DistanceUnitPreference;", "loadAvatar", "fileName", "resolveState", "Lcom/fourplex/lovio/DistanceResolvedState;", "payload", "titleFor", "unit", "state", "visualProgress", "distanceSeparationProgress", "distanceMeters", "", "(Ljava/lang/Double;)F", "isTogetherDistance", "", "(Ljava/lang/Double;)Z", "formatDistance", "(Ljava/lang/Double;Lcom/fourplex/lovio/DistanceUnitPreference;)Ljava/lang/String;", "emptyPayload", "parseJson", "Lorg/json/JSONObject;", "raw", "parseInstant", "Ljava/time/Instant;", "nullableString", "nullableDouble", "(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;", "nullableBoolean", "(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;", "dp", RNConstants.ARG_VALUE, "sp", "lerp", "start", "end", "progress", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class DistanceWidgetBitmapRenderer {
    private final int accent;
    private final int backgroundColor;
    private final Typeface boldTypeface;
    private final Context context;
    private final float density;
    private final int primary;
    private final float scaledDensity;
    private final int secondary;
    private final int white;

    /* JADX INFO: compiled from: DistanceWidget.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[DistanceResolvedState.values().length];
            try {
                iArr[DistanceResolvedState.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DistanceResolvedState.Waiting.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DistanceResolvedState.Stale.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DistanceResolvedState.TrackingOff.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DistanceResolvedState.PermissionRequired.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[DistanceUnitPreference.values().length];
            try {
                iArr2[DistanceUnitPreference.Km.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[DistanceUnitPreference.Mi.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    private final float lerp(float start, float end, float progress) {
        return start + ((end - start) * progress);
    }

    public DistanceWidgetBitmapRenderer(Context context) {
        Typeface typefaceCreate;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        float fMin = Math.min(context.getResources().getDisplayMetrics().density, 1.8f);
        this.density = fMin;
        this.scaledDensity = context.getResources().getDisplayMetrics().scaledDensity * (fMin / RangesKt.coerceAtLeast(context.getResources().getDisplayMetrics().density, 0.1f));
        try {
            typefaceCreate = context.getResources().getFont(R.font.alexandria_bold);
            Intrinsics.checkNotNull(typefaceCreate);
        } catch (Exception unused) {
            typefaceCreate = Typeface.create(Typeface.SANS_SERIF, 1);
            Intrinsics.checkNotNull(typefaceCreate);
        }
        this.boldTypeface = typefaceCreate;
        this.backgroundColor = Color.parseColor("#1A1A1A");
        this.white = -1;
        this.primary = Color.parseColor("#FF3B5C");
        this.secondary = Color.parseColor("#FF9F43");
        this.accent = Color.parseColor("#8B5CF6");
    }

    public final Bitmap render(Bundle options) {
        float fLerp;
        float f;
        DistanceWidgetBitmapRenderer distanceWidgetBitmapRenderer;
        int iCoerceIn = RangesKt.coerceIn(readWidgetOptionDp(options, "appWidgetMaxWidth", CropImageOptionsKt.DEGREES_360), 250, TypedValues.Cycle.TYPE_EASING);
        int iCoerceIn2 = RangesKt.coerceIn(readWidgetOptionDp(options, "appWidgetMaxHeight", 170), 110, 190);
        int iRoundToInt = MathKt.roundToInt(dp(iCoerceIn));
        int iRoundToInt2 = MathKt.roundToInt(dp(iCoerceIn2));
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iRoundToInt, iRoundToInt2, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(1);
        float f2 = iRoundToInt;
        float f3 = iRoundToInt2;
        drawBackground(canvas, paint, f2, f3);
        DistancePayload distancePayloadLoadPayload = loadPayload();
        DistanceUnitPreference distanceUnitPreferenceLoadUnitPreference = loadUnitPreference();
        DistanceResolvedState distanceResolvedStateResolveState = resolveState(distancePayloadLoadPayload);
        String strTitleFor = titleFor(distancePayloadLoadPayload, distanceUnitPreferenceLoadUnitPreference, distanceResolvedStateResolveState);
        float fCoerceIn = RangesKt.coerceIn((iCoerceIn2 - 110) / 40.0f, 0.0f, 1.0f);
        float fDp = dp(lerp(15.0f, 22.0f, fCoerceIn));
        if (strTitleFor.length() > 19) {
            fLerp = lerp(15.0f, 18.0f, fCoerceIn);
        } else {
            fLerp = lerp(16.0f, 20.0f, fCoerceIn);
        }
        float fMin = Math.min(dp(66.0f), Math.max(dp(lerp(46.0f, 56.0f, fCoerceIn)), f3 * 0.38f));
        float fCoerceIn2 = RangesKt.coerceIn(fMin / dp(66.0f), 0.72f, 1.0f);
        float f4 = f2 / 2.0f;
        float fDp2 = dp(32.0f) * fCoerceIn2;
        boolean zIsTogetherDistance = isTogetherDistance(distancePayloadLoadPayload.getDistanceMeters());
        float f5 = fMin / 2.0f;
        float fMin2 = Math.min(0.65f * f3, (f3 - f5) - dp(lerp(12.0f, 14.0f, fCoerceIn))) - dp(fCoerceIn * 10.0f);
        float fVisualProgress = visualProgress(distancePayloadLoadPayload, distanceResolvedStateResolveState);
        float f6 = f5 + fDp2;
        float fDp3 = dp(2.0f) + f6;
        float fDp4 = f6 + dp(22.0f);
        float fMax = Math.max(fDp4, ((f2 - fMin) - dp(56.0f)) / 2.0f);
        if (!zIsTogetherDistance) {
            fDp3 = fDp4 + ((fMax - fDp4) * fVisualProgress);
        }
        float f7 = f4 - fDp3;
        float f8 = f4 + fDp3;
        float f9 = f7 + f5;
        float f10 = f4 - fDp2;
        float f11 = fDp2 + f4;
        float f12 = f8 - f5;
        drawTitle(canvas, paint, strTitleFor, f2, fDp, fLerp);
        if (zIsTogetherDistance) {
            f = fMin2;
            distanceWidgetBitmapRenderer = this;
        } else {
            distanceWidgetBitmapRenderer = this;
            distanceWidgetBitmapRenderer.drawDashes(canvas, paint, f9, f10, fMin2);
            distanceWidgetBitmapRenderer.drawDashes(canvas, paint, f11, f12, fMin2);
            f = fMin2;
        }
        distanceWidgetBitmapRenderer.drawHearts(canvas, paint, f4, f, fCoerceIn2);
        float f13 = f;
        distanceWidgetBitmapRenderer.drawAvatar(canvas, paint, distanceWidgetBitmapRenderer.loadAvatar("avatar_user.png"), distanceWidgetBitmapRenderer.primary, f7, f13, fMin);
        distanceWidgetBitmapRenderer.drawAvatar(canvas, paint, distanceWidgetBitmapRenderer.loadAvatar("avatar_partner.png"), distanceWidgetBitmapRenderer.secondary, f8, f13, fMin);
        return bitmapCreateBitmap;
    }

    private final int readWidgetOptionDp(Bundle options, String key, int fallback) {
        int i = options != null ? options.getInt(key, 0) : 0;
        return i > 0 ? i : fallback;
    }

    private final void drawBackground(Canvas canvas, Paint paint, float width, float height) {
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(this.backgroundColor);
        canvas.drawRoundRect(new RectF(0.0f, 0.0f, width, height), dp(28.0f), dp(28.0f), paint);
    }

    private final void drawTitle(Canvas canvas, Paint paint, String title, float width, float top, float textSizeSp) {
        paint.reset();
        paint.setAntiAlias(true);
        paint.setColor(this.white);
        paint.setTypeface(this.boldTypeface);
        paint.setTextAlign(Paint.Align.CENTER);
        paint.setTextSize(sp(textSizeSp));
        float fDp = width - dp(48.0f);
        while (paint.measureText(title) > fDp && paint.getTextSize() > sp(12.0f)) {
            paint.setTextSize(paint.getTextSize() - sp(0.5f));
        }
        canvas.drawText(title, width / 2.0f, top - paint.getFontMetrics().ascent, paint);
    }

    private final void drawDashes(Canvas canvas, Paint paint, float startX, float endX, float centerY) {
        float f = endX - startX;
        if (f <= dp(8.0f)) {
            return;
        }
        float fDp = dp(6.0f);
        float fDp2 = dp(5.0f);
        float fDp3 = dp(2.6f);
        float f2 = f + fDp2;
        float f3 = fDp2 + fDp;
        int iMax = Math.max(1, (int) (f2 / f3));
        float f4 = fDp3 / 2.0f;
        float f5 = centerY - f4;
        paint.reset();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(Color.argb(214, 255, 255, 255));
        for (int i = 0; i < iMax; i++) {
            float f6 = (i * f3) + startX;
            float fMin = Math.min(f6 + fDp, endX);
            if (fMin > f6) {
                canvas.drawRoundRect(new RectF(f6, f5, fMin, f5 + fDp3), f4, f4, paint);
            }
        }
    }

    private final void drawHearts(Canvas canvas, Paint paint, float centerX, float centerY, float scale) {
        drawOutlinedHeart(canvas, paint, centerX + (dp(13.0f) * scale), centerY - (dp(8.0f) * scale), dp(30.0f) * scale, dp(7.0f) * scale);
        drawOutlinedHeart(canvas, paint, centerX - (dp(8.0f) * scale), centerY + (dp(7.0f) * scale), dp(39.0f) * scale, dp(7.0f) * scale);
    }

    private final void drawOutlinedHeart(Canvas canvas, Paint paint, float centerX, float centerY, float size, float outlinePadding) {
        paint.reset();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(this.backgroundColor);
        canvas.drawPath(createHeartPath(centerX, centerY, outlinePadding + size), paint);
        paint.setColor(this.white);
        canvas.drawPath(createHeartPath(centerX, centerY, size), paint);
    }

    private final Path createHeartPath(float centerX, float centerY, float size) {
        float f = size / 2.0f;
        Path path = new Path();
        float f2 = centerY + (0.72f * f);
        path.moveTo(centerX, f2);
        float f3 = f * 1.16f;
        float f4 = (0.02f * f) + centerY;
        float f5 = f * 0.96f;
        float f6 = centerY - (0.84f * f);
        float f7 = f * 0.36f;
        path.cubicTo(centerX - f3, f4, centerX - f5, f6, centerX - f7, f6);
        float f8 = f * 0.08f;
        float f9 = centerY - (0.58f * f);
        path.cubicTo(centerX - f8, f6, centerX, f9, centerX, centerY - (f * 0.48f));
        path.cubicTo(centerX, f9, centerX + f8, f6, centerX + f7, f6);
        path.cubicTo(centerX + f5, f6, centerX + f3, f4, centerX, f2);
        path.close();
        return path;
    }

    private final void drawAvatar(Canvas canvas, Paint paint, Bitmap bitmap, int accentColor, float centerX, float centerY, float size) {
        float f;
        float f2;
        float fDp = dp(1.5f);
        float f3 = size / 2.0f;
        float f4 = f3 - fDp;
        paint.reset();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(this.backgroundColor);
        canvas.drawCircle(centerX, centerY, f3, paint);
        RectF rectF = new RectF(centerX - f4, centerY - f4, centerX + f4, centerY + f4);
        if (bitmap != null) {
            Path path = new Path();
            path.addCircle(centerX, centerY, f4, Path.Direction.CW);
            canvas.save();
            canvas.clipPath(path);
            canvas.drawBitmap(bitmap, (Rect) null, rectF, new Paint(3));
            canvas.restore();
            f = centerX;
            f2 = centerY;
        } else {
            paint.setShader(new LinearGradient(rectF.left, rectF.top, rectF.right, rectF.bottom, accentColor, this.accent, Shader.TileMode.CLAMP));
            canvas.drawCircle(centerX, centerY, f4, paint);
            paint.setShader(null);
            f = centerX;
            f2 = centerY;
            drawPersonIcon(canvas, paint, f, f2, f4 * 1.05f);
        }
        paint.reset();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(fDp);
        paint.setColor(Color.argb(214, 255, 255, 255));
        canvas.drawCircle(f, f2, f3 - (fDp / 2.0f), paint);
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

    private final DistancePayload loadPayload() {
        String string = WidgetState.INSTANCE.preferences(this.context).getString("distance_widget_data", null);
        if (string == null) {
            return emptyPayload();
        }
        JSONObject json = parseJson(string);
        if (json == null) {
            return emptyPayload();
        }
        Double dNullableDouble = nullableDouble(json, "distanceMeters");
        if (dNullableDouble == null) {
            dNullableDouble = nullableDouble(json, "distance_meters");
        }
        String strNullableString = nullableString(json, "selfUpdatedAt");
        if (strNullableString == null) {
            strNullableString = nullableString(json, "self_updated_at");
        }
        String strNullableString2 = nullableString(json, "partnerUpdatedAt");
        if (strNullableString2 == null) {
            strNullableString2 = nullableString(json, "partner_updated_at");
        }
        String strNullableString3 = nullableString(json, "computedAt");
        if (strNullableString3 == null) {
            strNullableString3 = nullableString(json, "computed_at");
        }
        Boolean boolNullableBoolean = nullableBoolean(json, "isStale");
        boolean zBooleanValue = (boolNullableBoolean == null && (boolNullableBoolean = nullableBoolean(json, "is_stale")) == null) ? true : boolNullableBoolean.booleanValue();
        String strNullableString4 = nullableString(json, "trackingState");
        if (strNullableString4 == null && (strNullableString4 = nullableString(json, "tracking_state")) == null) {
            strNullableString4 = "tracking_off";
        }
        return new DistancePayload(dNullableDouble, strNullableString, strNullableString2, strNullableString3, zBooleanValue, strNullableString4);
    }

    private final DistanceUnitPreference loadUnitPreference() {
        String strTrim;
        String string = WidgetState.INSTANCE.preferences(this.context).getString("distance_unit_preference", null);
        if (string == null) {
            return DistanceUnitPreference.Km;
        }
        JSONObject json = parseJson(string);
        if (json == null || (strTrim = nullableString(json, "unit")) == null) {
            strTrim = StringsKt.trim(StringsKt.trim((CharSequence) string).toString(), '\"');
        }
        return Intrinsics.areEqual(strTrim, DistanceUnitPreference.Mi.getRaw()) ? DistanceUnitPreference.Mi : DistanceUnitPreference.Km;
    }

    private final Bitmap loadAvatar(String fileName) {
        File file = new File(this.context.getFilesDir(), fileName);
        if (file.exists()) {
            return BitmapFactory.decodeFile(file.getAbsolutePath());
        }
        return null;
    }

    private final DistanceResolvedState resolveState(DistancePayload payload) {
        Instant instant;
        String trackingState = payload.getTrackingState();
        int iHashCode = trackingState.hashCode();
        if (iHashCode != -1883584537) {
            if (iHashCode != -1847545841) {
                if (iHashCode == -1108664224 && trackingState.equals("waiting_for_partner")) {
                    return DistanceResolvedState.Waiting;
                }
            } else if (trackingState.equals("permission_required")) {
                return DistanceResolvedState.PermissionRequired;
            }
        } else if (trackingState.equals("tracking_off")) {
            return DistanceResolvedState.TrackingOff;
        }
        if (payload.getDistanceMeters() == null) {
            return DistanceResolvedState.Waiting;
        }
        Instant instant2 = parseInstant(payload.getSelfUpdatedAt());
        if (instant2 != null && (instant = parseInstant(payload.getPartnerUpdatedAt())) != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (payload.isStale() || jCurrentTimeMillis - instant2.toEpochMilli() > 3600000 || jCurrentTimeMillis - instant.toEpochMilli() > 3600000) {
                return DistanceResolvedState.Stale;
            }
            return DistanceResolvedState.Active;
        }
        return DistanceResolvedState.Waiting;
    }

    private final String titleFor(DistancePayload payload, DistanceUnitPreference unit, DistanceResolvedState state) {
        int i = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
        if (i == 1) {
            if (isTogetherDistance(payload.getDistanceMeters())) {
                return WidgetLocalization.INSTANCE.text(this.context, WidgetStringKey.DistanceTogether);
            }
            return WidgetLocalization.INSTANCE.text(this.context, WidgetStringKey.DistancePrefix) + ": " + formatDistance(payload.getDistanceMeters(), unit);
        }
        if (i == 2 || i == 3) {
            return WidgetLocalization.INSTANCE.text(this.context, WidgetStringKey.DistanceWaiting);
        }
        if (i == 4) {
            return WidgetLocalization.INSTANCE.text(this.context, WidgetStringKey.DistanceTrackingOff);
        }
        if (i != 5) {
            throw new NoWhenBranchMatchedException();
        }
        return WidgetLocalization.INSTANCE.text(this.context, WidgetStringKey.DistancePermission);
    }

    private final float visualProgress(DistancePayload payload, DistanceResolvedState state) {
        int i = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return 0.58f;
            }
            if (i != 3) {
                if (i == 4 || i == 5) {
                    return 0.4f;
                }
                throw new NoWhenBranchMatchedException();
            }
        }
        return distanceSeparationProgress(payload.getDistanceMeters());
    }

    private final float distanceSeparationProgress(Double distanceMeters) {
        if (distanceMeters == null || Math.abs(distanceMeters.doubleValue()) > Double.MAX_VALUE || distanceMeters.doubleValue() <= 150.0d) {
            return 0.0f;
        }
        return (float) RangesKt.coerceIn(Math.log(((double) 1) + ((Math.min(distanceMeters.doubleValue(), 500000.0d) - 150.0d) / ((double) 1000))) / Math.log(500.85d), 0.0d, 1.0d);
    }

    private final boolean isTogetherDistance(Double distanceMeters) {
        return distanceMeters != null && Math.abs(distanceMeters.doubleValue()) <= Double.MAX_VALUE && distanceMeters.doubleValue() <= 150.0d;
    }

    private final String formatDistance(Double distanceMeters, DistanceUnitPreference unit) {
        double dDoubleValue;
        double d;
        if (distanceMeters == null || Math.abs(distanceMeters.doubleValue()) > Double.MAX_VALUE) {
            return "--";
        }
        int i = WhenMappings.$EnumSwitchMapping$1[unit.ordinal()];
        if (i == 1) {
            dDoubleValue = distanceMeters.doubleValue();
            d = 1000.0d;
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            dDoubleValue = distanceMeters.doubleValue();
            d = 1609.344d;
        }
        double d2 = dDoubleValue / d;
        NumberFormat numberInstance = NumberFormat.getNumberInstance(WidgetLocalization.INSTANCE.locale(this.context));
        numberInstance.setMinimumFractionDigits(0);
        numberInstance.setMaximumFractionDigits(d2 >= 100.0d ? 0 : 1);
        return numberInstance.format(d2) + " " + unit.getRaw();
    }

    private final DistancePayload emptyPayload() {
        return new DistancePayload(null, null, null, null, true, "tracking_off");
    }

    private final JSONObject parseJson(String raw) {
        try {
            return new JSONObject(raw);
        } catch (Exception unused) {
            return null;
        }
    }

    private final Instant parseInstant(String raw) {
        String str = raw;
        if (str != null && !StringsKt.isBlank(str)) {
            try {
                return Instant.parse(raw);
            } catch (DateTimeParseException | Exception unused) {
            }
        }
        return null;
    }

    private final String nullableString(JSONObject jSONObject, String str) {
        if (jSONObject.has(str) && !jSONObject.isNull(str)) {
            String strOptString = jSONObject.optString(str);
            Intrinsics.checkNotNull(strOptString);
            if (!StringsKt.isBlank(strOptString)) {
                return strOptString;
            }
        }
        return null;
    }

    private final Double nullableDouble(JSONObject jSONObject, String str) {
        Double doubleOrNull;
        if (jSONObject.has(str) && !jSONObject.isNull(str)) {
            Object objOpt = jSONObject.opt(str);
            if (objOpt instanceof Number) {
                Double dValueOf = Double.valueOf(((Number) objOpt).doubleValue());
                if (Math.abs(dValueOf.doubleValue()) <= Double.MAX_VALUE) {
                    return dValueOf;
                }
                return null;
            }
            if ((objOpt instanceof String) && (doubleOrNull = StringsKt.toDoubleOrNull((String) objOpt)) != null && Math.abs(doubleOrNull.doubleValue()) <= Double.MAX_VALUE) {
                return doubleOrNull;
            }
        }
        return null;
    }

    private final Boolean nullableBoolean(JSONObject jSONObject, String str) {
        if (jSONObject.has(str) && !jSONObject.isNull(str)) {
            Object objOpt = jSONObject.opt(str);
            if (objOpt instanceof Boolean) {
                return (Boolean) objOpt;
            }
            if (objOpt instanceof String) {
                return Boolean.valueOf(StringsKt.equals((String) objOpt, "true", true));
            }
        }
        return null;
    }

    private final float dp(float value) {
        return value * this.density;
    }

    private final float sp(float value) {
        return value * this.scaledDensity;
    }
}
