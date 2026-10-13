package expo.modules.ui;

import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnimatedVisibilityView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011JH\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020'HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0012\u0012\u0004\b\u000f\u0010\f\u001a\u0004\b\u0010\u0010\u0011R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0012\u0012\u0004\b\u0013\u0010\f\u001a\u0004\b\u0014\u0010\u0011R \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0012\u0012\u0004\b\u0015\u0010\f\u001a\u0004\b\u0016\u0010\u0011R \u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0012\u0012\u0004\b\u0017\u0010\f\u001a\u0004\b\u0018\u0010\u0011¨\u0006("}, d2 = {"Lexpo/modules/ui/EnterTransitionRecord;", "Lexpo/modules/kotlin/records/Record;", "type", "Lexpo/modules/ui/EnterTransitionType;", "initialAlpha", "", "initialOffsetX", "initialOffsetY", "initialScale", "<init>", "(Lexpo/modules/ui/EnterTransitionType;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V", "getType$annotations", "()V", "getType", "()Lexpo/modules/ui/EnterTransitionType;", "getInitialAlpha$annotations", "getInitialAlpha", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getInitialOffsetX$annotations", "getInitialOffsetX", "getInitialOffsetY$annotations", "getInitialOffsetY", "getInitialScale$annotations", "getInitialScale", "component1", "component2", "component3", "component4", "component5", "copy", "(Lexpo/modules/ui/EnterTransitionType;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Lexpo/modules/ui/EnterTransitionRecord;", "equals", "", "other", "", "hashCode", "", "toString", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class EnterTransitionRecord implements Record {
    public static final int $stable = 0;
    private final Float initialAlpha;
    private final Float initialOffsetX;
    private final Float initialOffsetY;
    private final Float initialScale;
    private final EnterTransitionType type;

    public EnterTransitionRecord() {
        this(null, null, null, null, null, 31, null);
    }

    public static /* synthetic */ EnterTransitionRecord copy$default(EnterTransitionRecord enterTransitionRecord, EnterTransitionType enterTransitionType, Float f, Float f2, Float f3, Float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            enterTransitionType = enterTransitionRecord.type;
        }
        if ((i & 2) != 0) {
            f = enterTransitionRecord.initialAlpha;
        }
        if ((i & 4) != 0) {
            f2 = enterTransitionRecord.initialOffsetX;
        }
        if ((i & 8) != 0) {
            f3 = enterTransitionRecord.initialOffsetY;
        }
        if ((i & 16) != 0) {
            f4 = enterTransitionRecord.initialScale;
        }
        Float f5 = f4;
        Float f6 = f2;
        return enterTransitionRecord.copy(enterTransitionType, f, f6, f3, f5);
    }

    @Field
    public static /* synthetic */ void getInitialAlpha$annotations() {
    }

    @Field
    public static /* synthetic */ void getInitialOffsetX$annotations() {
    }

    @Field
    public static /* synthetic */ void getInitialOffsetY$annotations() {
    }

    @Field
    public static /* synthetic */ void getInitialScale$annotations() {
    }

    @Field
    public static /* synthetic */ void getType$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final EnterTransitionType getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Float getInitialAlpha() {
        return this.initialAlpha;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Float getInitialOffsetX() {
        return this.initialOffsetX;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Float getInitialOffsetY() {
        return this.initialOffsetY;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Float getInitialScale() {
        return this.initialScale;
    }

    public final EnterTransitionRecord copy(EnterTransitionType type, Float initialAlpha, Float initialOffsetX, Float initialOffsetY, Float initialScale) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new EnterTransitionRecord(type, initialAlpha, initialOffsetX, initialOffsetY, initialScale);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EnterTransitionRecord)) {
            return false;
        }
        EnterTransitionRecord enterTransitionRecord = (EnterTransitionRecord) other;
        return this.type == enterTransitionRecord.type && Intrinsics.areEqual((Object) this.initialAlpha, (Object) enterTransitionRecord.initialAlpha) && Intrinsics.areEqual((Object) this.initialOffsetX, (Object) enterTransitionRecord.initialOffsetX) && Intrinsics.areEqual((Object) this.initialOffsetY, (Object) enterTransitionRecord.initialOffsetY) && Intrinsics.areEqual((Object) this.initialScale, (Object) enterTransitionRecord.initialScale);
    }

    public int hashCode() {
        int iHashCode = this.type.hashCode() * 31;
        Float f = this.initialAlpha;
        int iHashCode2 = (iHashCode + (f == null ? 0 : f.hashCode())) * 31;
        Float f2 = this.initialOffsetX;
        int iHashCode3 = (iHashCode2 + (f2 == null ? 0 : f2.hashCode())) * 31;
        Float f3 = this.initialOffsetY;
        int iHashCode4 = (iHashCode3 + (f3 == null ? 0 : f3.hashCode())) * 31;
        Float f4 = this.initialScale;
        return iHashCode4 + (f4 != null ? f4.hashCode() : 0);
    }

    public String toString() {
        return "EnterTransitionRecord(type=" + this.type + ", initialAlpha=" + this.initialAlpha + ", initialOffsetX=" + this.initialOffsetX + ", initialOffsetY=" + this.initialOffsetY + ", initialScale=" + this.initialScale + ")";
    }

    public EnterTransitionRecord(EnterTransitionType type, Float f, Float f2, Float f3, Float f4) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.initialAlpha = f;
        this.initialOffsetX = f2;
        this.initialOffsetY = f3;
        this.initialScale = f4;
    }

    public /* synthetic */ EnterTransitionRecord(EnterTransitionType enterTransitionType, Float f, Float f2, Float f3, Float f4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? EnterTransitionType.FADE_IN : enterTransitionType, (i & 2) != 0 ? null : f, (i & 4) != 0 ? null : f2, (i & 8) != 0 ? null : f3, (i & 16) != 0 ? null : f4);
    }

    public final EnterTransitionType getType() {
        return this.type;
    }

    public final Float getInitialAlpha() {
        return this.initialAlpha;
    }

    public final Float getInitialOffsetX() {
        return this.initialOffsetX;
    }

    public final Float getInitialOffsetY() {
        return this.initialOffsetY;
    }

    public final Float getInitialScale() {
        return this.initialScale;
    }
}
