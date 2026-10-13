package expo.modules.ui;

import android.graphics.Color;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Shadow;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TextView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\tJ\u0006\u0010\u0016\u001a\u00020\u0017J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J>\u0010\u001c\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020#HÖ\u0001J\t\u0010$\u001a\u00020%HÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0011\u0012\u0004\b\u000e\u0010\u000b\u001a\u0004\b\u000f\u0010\u0010R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0011\u0012\u0004\b\u0012\u0010\u000b\u001a\u0004\b\u0013\u0010\u0010R \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0011\u0012\u0004\b\u0014\u0010\u000b\u001a\u0004\b\u0015\u0010\u0010¨\u0006&"}, d2 = {"Lexpo/modules/ui/TextShadowRecord;", "Lexpo/modules/kotlin/records/Record;", "color", "Landroid/graphics/Color;", "offsetX", "", "offsetY", "blurRadius", "<init>", "(Landroid/graphics/Color;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V", "getColor$annotations", "()V", "getColor", "()Landroid/graphics/Color;", "getOffsetX$annotations", "getOffsetX", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getOffsetY$annotations", "getOffsetY", "getBlurRadius$annotations", "getBlurRadius", "toComposeShadow", "Landroidx/compose/ui/graphics/Shadow;", "component1", "component2", "component3", "component4", "copy", "(Landroid/graphics/Color;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Lexpo/modules/ui/TextShadowRecord;", "equals", "", "other", "", "hashCode", "", "toString", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class TextShadowRecord implements Record {
    public static final int $stable = 8;
    private final Float blurRadius;
    private final Color color;
    private final Float offsetX;
    private final Float offsetY;

    public TextShadowRecord() {
        this(null, null, null, null, 15, null);
    }

    public static /* synthetic */ TextShadowRecord copy$default(TextShadowRecord textShadowRecord, Color color, Float f, Float f2, Float f3, int i, Object obj) {
        if ((i & 1) != 0) {
            color = textShadowRecord.color;
        }
        if ((i & 2) != 0) {
            f = textShadowRecord.offsetX;
        }
        if ((i & 4) != 0) {
            f2 = textShadowRecord.offsetY;
        }
        if ((i & 8) != 0) {
            f3 = textShadowRecord.blurRadius;
        }
        return textShadowRecord.copy(color, f, f2, f3);
    }

    @Field
    public static /* synthetic */ void getBlurRadius$annotations() {
    }

    @Field
    public static /* synthetic */ void getColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getOffsetX$annotations() {
    }

    @Field
    public static /* synthetic */ void getOffsetY$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Color getColor() {
        return this.color;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Float getOffsetX() {
        return this.offsetX;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Float getOffsetY() {
        return this.offsetY;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Float getBlurRadius() {
        return this.blurRadius;
    }

    public final TextShadowRecord copy(Color color, Float offsetX, Float offsetY, Float blurRadius) {
        return new TextShadowRecord(color, offsetX, offsetY, blurRadius);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TextShadowRecord)) {
            return false;
        }
        TextShadowRecord textShadowRecord = (TextShadowRecord) other;
        return Intrinsics.areEqual(this.color, textShadowRecord.color) && Intrinsics.areEqual((Object) this.offsetX, (Object) textShadowRecord.offsetX) && Intrinsics.areEqual((Object) this.offsetY, (Object) textShadowRecord.offsetY) && Intrinsics.areEqual((Object) this.blurRadius, (Object) textShadowRecord.blurRadius);
    }

    public int hashCode() {
        Color color = this.color;
        int iHashCode = (color == null ? 0 : color.hashCode()) * 31;
        Float f = this.offsetX;
        int iHashCode2 = (iHashCode + (f == null ? 0 : f.hashCode())) * 31;
        Float f2 = this.offsetY;
        int iHashCode3 = (iHashCode2 + (f2 == null ? 0 : f2.hashCode())) * 31;
        Float f3 = this.blurRadius;
        return iHashCode3 + (f3 != null ? f3.hashCode() : 0);
    }

    public String toString() {
        return "TextShadowRecord(color=" + this.color + ", offsetX=" + this.offsetX + ", offsetY=" + this.offsetY + ", blurRadius=" + this.blurRadius + ")";
    }

    public TextShadowRecord(Color color, Float f, Float f2, Float f3) {
        this.color = color;
        this.offsetX = f;
        this.offsetY = f2;
        this.blurRadius = f3;
    }

    public /* synthetic */ TextShadowRecord(Color color, Float f, Float f2, Float f3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : color, (i & 2) != 0 ? null : f, (i & 4) != 0 ? null : f2, (i & 8) != 0 ? null : f3);
    }

    public final Color getColor() {
        return this.color;
    }

    public final Float getOffsetX() {
        return this.offsetX;
    }

    public final Float getOffsetY() {
        return this.offsetY;
    }

    public final Float getBlurRadius() {
        return this.blurRadius;
    }

    public final Shadow toComposeShadow() {
        androidx.compose.ui.graphics.Color colorColorToComposeColorOrNull = UtilsKt.colorToComposeColorOrNull(this.color);
        long jM6068unboximpl = colorColorToComposeColorOrNull != null ? colorColorToComposeColorOrNull.m6068unboximpl() : androidx.compose.ui.graphics.Color.INSTANCE.m6084getBlack0d7_KjU();
        Float f = this.offsetX;
        float fFloatValue = f != null ? f.floatValue() : 0.0f;
        Float f2 = this.offsetY;
        long jM5805constructorimpl = Offset.m5805constructorimpl((((long) Float.floatToRawIntBits(fFloatValue)) << 32) | (((long) Float.floatToRawIntBits(f2 != null ? f2.floatValue() : 0.0f)) & 4294967295L));
        Float f3 = this.blurRadius;
        return new Shadow(jM6068unboximpl, jM5805constructorimpl, f3 != null ? f3.floatValue() : 0.0f, null);
    }
}
