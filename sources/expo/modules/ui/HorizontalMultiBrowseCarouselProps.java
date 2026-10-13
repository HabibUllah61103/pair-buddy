package expo.modules.ui;

import expo.modules.kotlin.types.Either;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CarouselView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u008b\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0016\b\u0002\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012$\b\u0002\u0010\u000e\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0010j\u0002`\u00130\u000fj\u0002`\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\u0010\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u0017\u0010)\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J\u0010\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u0010\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u000b\u0010,\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u0010\u0010-\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010#J%\u0010.\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0010j\u0002`\u00130\u000fj\u0002`\u0014HÆ\u0003J\u0092\u0001\u0010/\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0016\b\u0002\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2$\b\u0002\u0010\u000e\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0010j\u0002`\u00130\u000fj\u0002`\u0014HÆ\u0001¢\u0006\u0002\u00100J\u0013\u00101\u001a\u00020\r2\b\u00102\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u00103\u001a\u000204HÖ\u0001J\t\u00105\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u0019\u0010\u001aR\u001f\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0015\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u001e\u0010\u001aR\u0015\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u001f\u0010\u001aR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0015\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010$\u001a\u0004\b\"\u0010#R-\u0010\u000e\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0010j\u0002`\u00130\u000fj\u0002`\u0014¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&¨\u00066"}, d2 = {"Lexpo/modules/ui/HorizontalMultiBrowseCarouselProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "preferredItemWidth", "", "itemSpacing", "contentPadding", "Lexpo/modules/kotlin/types/Either;", "Lexpo/modules/ui/PaddingValuesRecord;", "minSmallItemWidth", "maxSmallItemWidth", "flingBehavior", "Lexpo/modules/ui/FlingBehaviorType;", "userScrollEnabled", "", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(FLjava/lang/Float;Lexpo/modules/kotlin/types/Either;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/FlingBehaviorType;Ljava/lang/Boolean;Ljava/util/List;)V", "getPreferredItemWidth", "()F", "getItemSpacing", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getContentPadding", "()Lexpo/modules/kotlin/types/Either;", "getMinSmallItemWidth", "getMaxSmallItemWidth", "getFlingBehavior", "()Lexpo/modules/ui/FlingBehaviorType;", "getUserScrollEnabled", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(FLjava/lang/Float;Lexpo/modules/kotlin/types/Either;Ljava/lang/Float;Ljava/lang/Float;Lexpo/modules/ui/FlingBehaviorType;Ljava/lang/Boolean;Ljava/util/List;)Lexpo/modules/ui/HorizontalMultiBrowseCarouselProps;", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class HorizontalMultiBrowseCarouselProps implements ComposeProps {
    public static final int $stable = 8;
    private final Either<Float, PaddingValuesRecord> contentPadding;
    private final FlingBehaviorType flingBehavior;
    private final Float itemSpacing;
    private final Float maxSmallItemWidth;
    private final Float minSmallItemWidth;
    private final List<Map<String, Object>> modifiers;
    private final float preferredItemWidth;
    private final Boolean userScrollEnabled;

    public HorizontalMultiBrowseCarouselProps() {
        this(0.0f, null, null, null, null, null, null, null, 255, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HorizontalMultiBrowseCarouselProps copy$default(HorizontalMultiBrowseCarouselProps horizontalMultiBrowseCarouselProps, float f, Float f2, Either either, Float f3, Float f4, FlingBehaviorType flingBehaviorType, Boolean bool, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            f = horizontalMultiBrowseCarouselProps.preferredItemWidth;
        }
        if ((i & 2) != 0) {
            f2 = horizontalMultiBrowseCarouselProps.itemSpacing;
        }
        if ((i & 4) != 0) {
            either = horizontalMultiBrowseCarouselProps.contentPadding;
        }
        if ((i & 8) != 0) {
            f3 = horizontalMultiBrowseCarouselProps.minSmallItemWidth;
        }
        if ((i & 16) != 0) {
            f4 = horizontalMultiBrowseCarouselProps.maxSmallItemWidth;
        }
        if ((i & 32) != 0) {
            flingBehaviorType = horizontalMultiBrowseCarouselProps.flingBehavior;
        }
        if ((i & 64) != 0) {
            bool = horizontalMultiBrowseCarouselProps.userScrollEnabled;
        }
        if ((i & 128) != 0) {
            list = horizontalMultiBrowseCarouselProps.modifiers;
        }
        Boolean bool2 = bool;
        List list2 = list;
        Float f5 = f4;
        FlingBehaviorType flingBehaviorType2 = flingBehaviorType;
        return horizontalMultiBrowseCarouselProps.copy(f, f2, either, f3, f5, flingBehaviorType2, bool2, list2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final float getPreferredItemWidth() {
        return this.preferredItemWidth;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Float getItemSpacing() {
        return this.itemSpacing;
    }

    public final Either<Float, PaddingValuesRecord> component3() {
        return this.contentPadding;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Float getMinSmallItemWidth() {
        return this.minSmallItemWidth;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Float getMaxSmallItemWidth() {
        return this.maxSmallItemWidth;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final FlingBehaviorType getFlingBehavior() {
        return this.flingBehavior;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Boolean getUserScrollEnabled() {
        return this.userScrollEnabled;
    }

    public final List<Map<String, Object>> component8() {
        return this.modifiers;
    }

    public final HorizontalMultiBrowseCarouselProps copy(float preferredItemWidth, Float itemSpacing, Either<Float, PaddingValuesRecord> contentPadding, Float minSmallItemWidth, Float maxSmallItemWidth, FlingBehaviorType flingBehavior, Boolean userScrollEnabled, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new HorizontalMultiBrowseCarouselProps(preferredItemWidth, itemSpacing, contentPadding, minSmallItemWidth, maxSmallItemWidth, flingBehavior, userScrollEnabled, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HorizontalMultiBrowseCarouselProps)) {
            return false;
        }
        HorizontalMultiBrowseCarouselProps horizontalMultiBrowseCarouselProps = (HorizontalMultiBrowseCarouselProps) other;
        return Float.compare(this.preferredItemWidth, horizontalMultiBrowseCarouselProps.preferredItemWidth) == 0 && Intrinsics.areEqual((Object) this.itemSpacing, (Object) horizontalMultiBrowseCarouselProps.itemSpacing) && Intrinsics.areEqual(this.contentPadding, horizontalMultiBrowseCarouselProps.contentPadding) && Intrinsics.areEqual((Object) this.minSmallItemWidth, (Object) horizontalMultiBrowseCarouselProps.minSmallItemWidth) && Intrinsics.areEqual((Object) this.maxSmallItemWidth, (Object) horizontalMultiBrowseCarouselProps.maxSmallItemWidth) && this.flingBehavior == horizontalMultiBrowseCarouselProps.flingBehavior && Intrinsics.areEqual(this.userScrollEnabled, horizontalMultiBrowseCarouselProps.userScrollEnabled) && Intrinsics.areEqual(this.modifiers, horizontalMultiBrowseCarouselProps.modifiers);
    }

    public int hashCode() {
        int iHashCode = Float.hashCode(this.preferredItemWidth) * 31;
        Float f = this.itemSpacing;
        int iHashCode2 = (iHashCode + (f == null ? 0 : f.hashCode())) * 31;
        Either<Float, PaddingValuesRecord> either = this.contentPadding;
        int iHashCode3 = (iHashCode2 + (either == null ? 0 : either.hashCode())) * 31;
        Float f2 = this.minSmallItemWidth;
        int iHashCode4 = (iHashCode3 + (f2 == null ? 0 : f2.hashCode())) * 31;
        Float f3 = this.maxSmallItemWidth;
        int iHashCode5 = (iHashCode4 + (f3 == null ? 0 : f3.hashCode())) * 31;
        FlingBehaviorType flingBehaviorType = this.flingBehavior;
        int iHashCode6 = (iHashCode5 + (flingBehaviorType == null ? 0 : flingBehaviorType.hashCode())) * 31;
        Boolean bool = this.userScrollEnabled;
        return ((iHashCode6 + (bool != null ? bool.hashCode() : 0)) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "HorizontalMultiBrowseCarouselProps(preferredItemWidth=" + this.preferredItemWidth + ", itemSpacing=" + this.itemSpacing + ", contentPadding=" + this.contentPadding + ", minSmallItemWidth=" + this.minSmallItemWidth + ", maxSmallItemWidth=" + this.maxSmallItemWidth + ", flingBehavior=" + this.flingBehavior + ", userScrollEnabled=" + this.userScrollEnabled + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public HorizontalMultiBrowseCarouselProps(float f, Float f2, Either<Float, PaddingValuesRecord> either, Float f3, Float f4, FlingBehaviorType flingBehaviorType, Boolean bool, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.preferredItemWidth = f;
        this.itemSpacing = f2;
        this.contentPadding = either;
        this.minSmallItemWidth = f3;
        this.maxSmallItemWidth = f4;
        this.flingBehavior = flingBehaviorType;
        this.userScrollEnabled = bool;
        this.modifiers = modifiers;
    }

    public final float getPreferredItemWidth() {
        return this.preferredItemWidth;
    }

    public final Float getItemSpacing() {
        return this.itemSpacing;
    }

    public final Either<Float, PaddingValuesRecord> getContentPadding() {
        return this.contentPadding;
    }

    public final Float getMinSmallItemWidth() {
        return this.minSmallItemWidth;
    }

    public final Float getMaxSmallItemWidth() {
        return this.maxSmallItemWidth;
    }

    public final FlingBehaviorType getFlingBehavior() {
        return this.flingBehavior;
    }

    public final Boolean getUserScrollEnabled() {
        return this.userScrollEnabled;
    }

    public /* synthetic */ HorizontalMultiBrowseCarouselProps(float f, Float f2, Either either, Float f3, Float f4, FlingBehaviorType flingBehaviorType, Boolean bool, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 200.0f : f, (i & 2) != 0 ? null : f2, (i & 4) != 0 ? null : either, (i & 8) != 0 ? null : f3, (i & 16) != 0 ? null : f4, (i & 32) != 0 ? null : flingBehaviorType, (i & 64) != 0 ? null : bool, (i & 128) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
