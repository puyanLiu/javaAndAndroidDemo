.class public Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;
.super Ljava/lang/Object;
.source "TimelineEntryInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATE_TIME:Ljava/lang/String; = "createTime"

.field public static final LAST_BIZ_MEMO_ID:Ljava/lang/String; = "last_biz_memo_id"

.field public static final LEFT_UNREAD:Ljava/lang/String; = "leftUnread"

.field public static final LEFT_UNREAD_STYLE:Ljava/lang/String; = "leftUnreadStyle"

.field public static final RIGHT_ICON:Ljava/lang/String; = "rightIcon"

.field public static final RIGHT_MEMO:Ljava/lang/String; = "rightMemo"

.field public static final RIGHT_UNREAD:Ljava/lang/String; = "rightUnread"

.field public static final RIGHT_UNREAD_STYLE:Ljava/lang/String; = "rightUnreadStyle"

.field public static final TIMELINE_TABLE:Ljava/lang/String; = "timelinetable"

.field public static final serialVersionUID:J = -0x137f165298d0de51L


# instance fields
.field public createTime:J

.field public leftUnread:I

.field public leftUnreadStyle:Ljava/lang/String;

.field public rightIcon:Ljava/lang/String;

.field public rightMemo:Ljava/lang/String;

.field public rightUnread:I

.field public rightUnreadStyle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastBizId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    invoke-static {}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getSocialSharedPreferences()Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "last_biz_memo_id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static refreshTimelineEntry(Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 58
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getSocialSharedPreferences()Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "leftUnread"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->leftUnread:I

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "leftUnreadStyle"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->leftUnreadStyle:Ljava/lang/String;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rightUnread"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightUnread:I

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rightUnreadStyle"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightUnreadStyle:Ljava/lang/String;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rightIcon"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightIcon:Ljava/lang/String;

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rightMemo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightMemo:Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "createTime"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->createTime:J

    goto/16 :goto_0
.end method

.method public static updateLastBizId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getSocialSharedPreferences()Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "last_biz_memo_id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 88
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    iget v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->leftUnread:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->leftUnreadStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightUnread:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightUnreadStyle:Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
