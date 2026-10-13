package expo.modules.ui;

import android.graphics.Color;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CardView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\b\u001a\u0004\b\f\u0010\n¨\u0006\u0018"}, d2 = {"Lexpo/modules/ui/CardColors;", "Lexpo/modules/kotlin/records/Record;", "containerColor", "Landroid/graphics/Color;", "contentColor", "<init>", "(Landroid/graphics/Color;Landroid/graphics/Color;)V", "getContainerColor$annotations", "()V", "getContainerColor", "()Landroid/graphics/Color;", "getContentColor$annotations", "getContentColor", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CardColors implements Record {
    public static final int $stable = 8;
    private final Color containerColor;
    private final Color contentColor;

    /* JADX WARN: Multi-variable type inference failed */
    public CardColors() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ CardColors copy$default(CardColors cardColors, Color color, Color color2, int i, Object obj) {
        if ((i & 1) != 0) {
            color = cardColors.containerColor;
        }
        if ((i & 2) != 0) {
            color2 = cardColors.contentColor;
        }
        return cardColors.copy(color, color2);
    }

    @Field
    public static /* synthetic */ void getContainerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getContentColor$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Color getContainerColor() {
        return this.containerColor;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Color getContentColor() {
        return this.contentColor;
    }

    public final CardColors copy(Color containerColor, Color contentColor) {
        return new CardColors(containerColor, contentColor);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CardColors)) {
            return false;
        }
        CardColors cardColors = (CardColors) other;
        return Intrinsics.areEqual(this.containerColor, cardColors.containerColor) && Intrinsics.areEqual(this.contentColor, cardColors.contentColor);
    }

    public int hashCode() {
        Color color = this.containerColor;
        int iHashCode = (color == null ? 0 : color.hashCode()) * 31;
        Color color2 = this.contentColor;
        return iHashCode + (color2 != null ? color2.hashCode() : 0);
    }

    public String toString() {
        return "CardColors(containerColor=" + this.containerColor + ", contentColor=" + this.contentColor + ")";
    }

    public CardColors(Color color, Color color2) {
        this.containerColor = color;
        this.contentColor = color2;
    }

    public /* synthetic */ CardColors(Color color, Color color2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : color, (i & 2) != 0 ? null : color2);
    }

    public final Color getContainerColor() {
        return this.containerColor;
    }

    public final Color getContentColor() {
        return this.contentColor;
    }
}
