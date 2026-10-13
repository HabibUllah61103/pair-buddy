package expo.modules.ui.menu;

import android.graphics.Color;
import com.reactcommunity.rndatetimepicker.Common;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;

/* JADX INFO: compiled from: DropdownMenuItem.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0006\u0010\u0003\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\n\u0010\u0003\u001a\u0004\b\u000b\u0010\bR\u001e\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u0003\u001a\u0004\b\u000e\u0010\bR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\u0003\u001a\u0004\b\u0011\u0010\bR\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\u0003\u001a\u0004\b\u0014\u0010\bR\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u0003\u001a\u0004\b\u0017\u0010\b¨\u0006\u0018"}, d2 = {"Lexpo/modules/ui/menu/DropdownMenuItemColors;", "Lexpo/modules/kotlin/records/Record;", "<init>", "()V", Common.TEXT_COLOR, "Landroid/graphics/Color;", "getTextColor$annotations", "getTextColor", "()Landroid/graphics/Color;", "leadingIconColor", "getLeadingIconColor$annotations", "getLeadingIconColor", "trailingIconColor", "getTrailingIconColor$annotations", "getTrailingIconColor", "disabledTextColor", "getDisabledTextColor$annotations", "getDisabledTextColor", "disabledLeadingIconColor", "getDisabledLeadingIconColor$annotations", "getDisabledLeadingIconColor", "disabledTrailingIconColor", "getDisabledTrailingIconColor$annotations", "getDisabledTrailingIconColor", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DropdownMenuItemColors implements Record {
    public static final int $stable = 8;
    private final Color disabledLeadingIconColor;
    private final Color disabledTextColor;
    private final Color disabledTrailingIconColor;
    private final Color leadingIconColor;
    private final Color textColor;
    private final Color trailingIconColor;

    @Field
    public static /* synthetic */ void getDisabledLeadingIconColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledTextColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledTrailingIconColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getLeadingIconColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getTextColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getTrailingIconColor$annotations() {
    }

    public final Color getTextColor() {
        return this.textColor;
    }

    public final Color getLeadingIconColor() {
        return this.leadingIconColor;
    }

    public final Color getTrailingIconColor() {
        return this.trailingIconColor;
    }

    public final Color getDisabledTextColor() {
        return this.disabledTextColor;
    }

    public final Color getDisabledLeadingIconColor() {
        return this.disabledLeadingIconColor;
    }

    public final Color getDisabledTrailingIconColor() {
        return this.disabledTrailingIconColor;
    }
}
