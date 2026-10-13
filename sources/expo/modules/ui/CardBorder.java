package expo.modules.ui;

import android.graphics.Color;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CardView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lexpo/modules/ui/CardBorder;", "Lexpo/modules/kotlin/records/Record;", "width", "", "color", "Landroid/graphics/Color;", "<init>", "(FLandroid/graphics/Color;)V", "getWidth$annotations", "()V", "getWidth", "()F", "getColor$annotations", "getColor", "()Landroid/graphics/Color;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CardBorder implements Record {
    public static final int $stable = 8;
    private final Color color;
    private final float width;

    /* JADX WARN: Multi-variable type inference failed */
    public CardBorder() {
        this(0.0f, null, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ CardBorder copy$default(CardBorder cardBorder, float f, Color color, int i, Object obj) {
        if ((i & 1) != 0) {
            f = cardBorder.width;
        }
        if ((i & 2) != 0) {
            color = cardBorder.color;
        }
        return cardBorder.copy(f, color);
    }

    @Field
    public static /* synthetic */ void getColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getWidth$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final float getWidth() {
        return this.width;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Color getColor() {
        return this.color;
    }

    public final CardBorder copy(float width, Color color) {
        return new CardBorder(width, color);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CardBorder)) {
            return false;
        }
        CardBorder cardBorder = (CardBorder) other;
        return Float.compare(this.width, cardBorder.width) == 0 && Intrinsics.areEqual(this.color, cardBorder.color);
    }

    public int hashCode() {
        int iHashCode = Float.hashCode(this.width) * 31;
        Color color = this.color;
        return iHashCode + (color == null ? 0 : color.hashCode());
    }

    public String toString() {
        return "CardBorder(width=" + this.width + ", color=" + this.color + ")";
    }

    public CardBorder(float f, Color color) {
        this.width = f;
        this.color = color;
    }

    public /* synthetic */ CardBorder(float f, Color color, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 1.0f : f, (i & 2) != 0 ? null : color);
    }

    public final float getWidth() {
        return this.width;
    }

    public final Color getColor() {
        return this.color;
    }
}
