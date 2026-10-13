package expo.modules.ui;

import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TextFieldView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J>\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u00052\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0011\u0012\u0004\b\u000e\u0010\u000b\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u000b\u001a\u0004\b\u0013\u0010\rR\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u000b\u001a\u0004\b\u0015\u0010\r¨\u0006\""}, d2 = {"Lexpo/modules/ui/TextFieldKeyboardOptionsRecord;", "Lexpo/modules/kotlin/records/Record;", "capitalization", "", "autoCorrectEnabled", "", "keyboardType", "imeAction", "<init>", "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V", "getCapitalization$annotations", "()V", "getCapitalization", "()Ljava/lang/String;", "getAutoCorrectEnabled$annotations", "getAutoCorrectEnabled", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getKeyboardType$annotations", "getKeyboardType", "getImeAction$annotations", "getImeAction", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)Lexpo/modules/ui/TextFieldKeyboardOptionsRecord;", "equals", "other", "", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class TextFieldKeyboardOptionsRecord implements Record {
    public static final int $stable = 0;
    private final Boolean autoCorrectEnabled;
    private final String capitalization;
    private final String imeAction;
    private final String keyboardType;

    public TextFieldKeyboardOptionsRecord() {
        this(null, null, null, null, 15, null);
    }

    public static /* synthetic */ TextFieldKeyboardOptionsRecord copy$default(TextFieldKeyboardOptionsRecord textFieldKeyboardOptionsRecord, String str, Boolean bool, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = textFieldKeyboardOptionsRecord.capitalization;
        }
        if ((i & 2) != 0) {
            bool = textFieldKeyboardOptionsRecord.autoCorrectEnabled;
        }
        if ((i & 4) != 0) {
            str2 = textFieldKeyboardOptionsRecord.keyboardType;
        }
        if ((i & 8) != 0) {
            str3 = textFieldKeyboardOptionsRecord.imeAction;
        }
        return textFieldKeyboardOptionsRecord.copy(str, bool, str2, str3);
    }

    @Field
    public static /* synthetic */ void getAutoCorrectEnabled$annotations() {
    }

    @Field
    public static /* synthetic */ void getCapitalization$annotations() {
    }

    @Field
    public static /* synthetic */ void getImeAction$annotations() {
    }

    @Field
    public static /* synthetic */ void getKeyboardType$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCapitalization() {
        return this.capitalization;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Boolean getAutoCorrectEnabled() {
        return this.autoCorrectEnabled;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getKeyboardType() {
        return this.keyboardType;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getImeAction() {
        return this.imeAction;
    }

    public final TextFieldKeyboardOptionsRecord copy(String capitalization, Boolean autoCorrectEnabled, String keyboardType, String imeAction) {
        return new TextFieldKeyboardOptionsRecord(capitalization, autoCorrectEnabled, keyboardType, imeAction);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TextFieldKeyboardOptionsRecord)) {
            return false;
        }
        TextFieldKeyboardOptionsRecord textFieldKeyboardOptionsRecord = (TextFieldKeyboardOptionsRecord) other;
        return Intrinsics.areEqual(this.capitalization, textFieldKeyboardOptionsRecord.capitalization) && Intrinsics.areEqual(this.autoCorrectEnabled, textFieldKeyboardOptionsRecord.autoCorrectEnabled) && Intrinsics.areEqual(this.keyboardType, textFieldKeyboardOptionsRecord.keyboardType) && Intrinsics.areEqual(this.imeAction, textFieldKeyboardOptionsRecord.imeAction);
    }

    public int hashCode() {
        String str = this.capitalization;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Boolean bool = this.autoCorrectEnabled;
        int iHashCode2 = (iHashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        String str2 = this.keyboardType;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.imeAction;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "TextFieldKeyboardOptionsRecord(capitalization=" + this.capitalization + ", autoCorrectEnabled=" + this.autoCorrectEnabled + ", keyboardType=" + this.keyboardType + ", imeAction=" + this.imeAction + ")";
    }

    public TextFieldKeyboardOptionsRecord(String str, Boolean bool, String str2, String str3) {
        this.capitalization = str;
        this.autoCorrectEnabled = bool;
        this.keyboardType = str2;
        this.imeAction = str3;
    }

    public /* synthetic */ TextFieldKeyboardOptionsRecord(String str, Boolean bool, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3);
    }

    public final String getCapitalization() {
        return this.capitalization;
    }

    public final Boolean getAutoCorrectEnabled() {
        return this.autoCorrectEnabled;
    }

    public final String getKeyboardType() {
        return this.keyboardType;
    }

    public final String getImeAction() {
        return this.imeAction;
    }
}
