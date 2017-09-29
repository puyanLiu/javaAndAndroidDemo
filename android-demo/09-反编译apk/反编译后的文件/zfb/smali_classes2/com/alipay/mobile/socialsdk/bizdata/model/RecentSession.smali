.class public Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;
.super Ljava/lang/Object;
.source "RecentSession.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    daoClass = Lcom/alipay/mobile/socialsdk/bizdata/db/RecentSessionDatabaseDaoImpl;
.end annotation


# static fields
.field public static final sItemId_New:Ljava/lang/String; = "3"

.field public static final sItemId_Stranger:Ljava/lang/String; = "2"

.field public static final sItemType_Group:I = 0x2

.field public static final sItemType_Messagebox:I = -0x3

.field public static final sItemType_MessageboxStr:Ljava/lang/String; = "messageboxapp"

.field public static final sItemType_New:I = -0x2

.field public static final sItemType_Personal:I = 0x1

.field public static final sItemType_Public:I = -0x4

.field public static final sItemType_PublicItem:I = -0x5

.field public static final sItemType_PublicItemStr:Ljava/lang/String; = "public_vip"

.field public static final sItemType_PublicStr:Ljava/lang/String; = "public"

.field public static final sItemType_Stranger:I = -0x1

.field public static final serialVersionUID:J = 0x284a3886216d8a95L


# instance fields
.field public atMe:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public bizRemind:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public displayName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public draft:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public draftTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public groupCount:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public icon:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public isCurrentUserQuit:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public isInBlack:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public isStranger:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public itemId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public itemType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public lastBizIcon:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public lastBizMemo:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public lastBizType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public lastCMsgId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public lastCreateTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public lastLocalId:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public lastSenderId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public lastSenderName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public lastSide:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public memoParseType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public notDisturb:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public operationLocalId:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field public redPointStyle:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field public sendingState:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public sessionId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "_id"
        id = true
    .end annotation
.end field

.field public top:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field public topTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public unread:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public uri:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public voiceNotReadState:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canMakeTop(I)Z
    .locals 1

    .prologue
    .line 218
    packed-switch p0, :pswitch_data_0

    .line 224
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 222
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static canMarkRead(I)Z
    .locals 1

    .prologue
    .line 207
    sparse-switch p0, :sswitch_data_0

    .line 213
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 211
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 207
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getItemType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 229
    const-string/jumbo v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "2"

    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 242
    :goto_0
    return v0

    .line 233
    :cond_1
    const-string/jumbo v0, "public_vip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    const/4 v0, -0x5

    goto :goto_0

    .line 235
    :cond_2
    const-string/jumbo v0, "public"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    const/4 v0, -0x4

    goto :goto_0

    .line 237
    :cond_3
    const-string/jumbo v0, "messageboxapp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    const/4 v0, -0x3

    goto :goto_0

    .line 240
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static getItemType(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    packed-switch p0, :pswitch_data_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    .line 254
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 248
    :pswitch_0
    const-string/jumbo v0, "messageboxapp"

    goto :goto_0

    .line 250
    :pswitch_1
    const-string/jumbo v0, "public"

    goto :goto_0

    .line 252
    :pswitch_2
    const-string/jumbo v0, "public_vip"

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isInternalType(I)Z
    .locals 1

    .prologue
    .line 195
    packed-switch p0, :pswitch_data_0

    .line 202
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 200
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 259
    if-ne p0, p1, :cond_0

    .line 260
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    .line 263
    :cond_0
    if-nez p1, :cond_1

    .line 264
    const/4 v0, 0x0

    goto :goto_0

    .line 267
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    check-cast p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 271
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 280
    return v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
